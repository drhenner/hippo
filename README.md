Hippo
=====

The Hippo library is an attempt at creating a simple DSL to generate and parse HIPAA 
transaction sets.  HIPAA or the Health Insurance Portability Accountability Act is a 
series of regulations which place restrictions and requirements on the way transaction 
sets  (ie. Claims, Remittances, Eligibility, Claim Status, etc.) must be formatted.

The HIPAA required transactions sets are created by the X12
organization. The current production version (as of 2011/02/05) is 4010A1, but
effective 2012/01/01 all organizations must be migrated to using version
5010.

To obtain copies of the implementation guides you must purchase them from the X12
organization. The implementation data is also available in tabular format (CSV).  The 
transaction sets, loops, and segments in Hippo were created from the X12 CSV Table Data.

More information can be found at the following sites:

* [General HIPAA information from CMS](https://www.cms.gov/HIPAAGenInfo/01_Overview.asp)
* [Wikipedia HIPAA Article](http://en.wikipedia.org/wiki/Hipaa)
* [5010 Implementation Timeline](https://www.cms.gov/ElectronicBillingEDITrans/18_5010D0.asp)
* [X12 Store](https://store.x12.org)

Installation
------------
    gem install hippo

Usage
-----
This is very straight forward. Basically, create an instance of the
transaction set that you will be working with, and start filling in the
loops, segments, and fields.  For a complete example from the 222A1 (837-P) implementation
guide please review [test/test_hipaa_837.rb](/promedical/hippo/test/test_hipaa_837.rb).

Below is a small sample of how to create a transaction set.

    ts = Hippo::TransactionSets::HIPAA_837::Base.new

    ts.ST do |st|
      st.TransactionSetControlNumber        = '0021'
      st.ImplementationConventionReference  = '005010X222A1'
    end

    ts.BHT do |bht|
      bht.TransactionSetPurposeCode = '00'
      bht.ReferenceIdentification   = '244579'
      bht.Date                      = '20061015'
      bht.Time                      = '1023'
      bht.TransactionTypeCode       = 'CH'
    end

    ts.L1000A do |l1000a|
      l1000a.NM1 do |nm1|
        nm1.EntityTypeQualifier        = '2'
        nm1.NameLastOrOrganizationName = 'PREMIER BILLING SERVICE'
        nm1.IdentificationCode         = 'TGJ23'
      end

      l1000a.PER do |per|
        per.Name                            = 'JERRY'
        per.CommunicationNumberQualifier_01 = 'TE'
        per.CommunicationNumber_01          = '3055552222'
        per.CommunicationNumberQualifier_02 = 'EX'
        per.CommunicationNumber_02          = '231'
      end
    end

    puts ts.to_s
    
    => "ST*837*0021*005010X222A1~BHT*0019*00*244579*20061015*1023*CH~NM1*41*2*PREMIER BILLING SERVICE*****46*TGJ23~PER*IC*JERRY*TE*3055552222*EX*231~"
    

Transaction Set/Loop and Segment DSL
------------------------------------
Transaction Sets/Loops and Segments are defined with a very straight forward DSL.

    module Hippo::Segments
      class TestSimpleSegment < Hippo::Segments::Base
        segment_identifier 'TSS'
    
        field :name => 'Field1'
        field :name => 'Field2'
        field :name => 'Field3'
        field :name => 'Field4'
        field :name => 'CommonName'
        field :name => 'CommonName'
      end
    
      class TestCompoundSegment < Hippo::Segments::Base
        segment_identifier 'TCS'
    
        composite_field 'CompositeField' do
          field :name => 'Field1'
          field :name => 'Field2'
          field :name => 'Field3'
          field :name => 'CompositeCommonName'
        end
    
        composite_field 'CompositeField' do
          field :name => 'Field4'
          field :name => 'Field5'
          field :name => 'Field6'
          field :name => 'CompositeCommonName'
        end
    
        field :name => 'Field7'
      end
    end
    
    module Hippo::TransactionSets
      module Test
        class Base < Hippo::TransactionSets::Base
    
          segment Hippo::Segments::TestSimpleSegment,
                    :name           => 'Test Simple Segment #1',
                    :minimum        => 1,
                    :maximum        => 5,
                    :position       => 50,
                    :defaults => {
                      'TSS01' => 'Blah'
                    }
    
          segment Hippo::Segments::TestCompoundSegment,
                    :name           => 'Test Compound Segment #2',
                    :minimum        => 1,
                    :maximum        => 1,
                    :position       => 100,
                    :defaults => {
                      'Field7' => 'Preset Field 7'
                    }
    
          segment Hippo::Segments::TestSimpleSegment,
                    :name           => 'Test Simple Segment #3',
                    :minimum        => 1,
                    :maximum        => 1,
                    :position       => 50,
                    :defaults => {
                      'TSS01' => 'Last Segment'
                    }
        end
      end
    end

Quick Guide to Populating a Transaction Set
-------------------------------------------
Using the simple transaction set and segments defined above, here are a few ways to access
the fields.

To create a transaction set simple choose the set you want and call new on it's Base class.

    ts = Hippo::TransactionSets::Test::Base.new

The segments can be accessed directly from the created transaction set using the segment
identifier.
    ts.TCS
    
Since the TSS segment can be repeated we must call #build to generate a new
instance for each repeat. (You will be returned the first instance each time if you
do not call #build.)
    
    ts.TSS.build

The code above produces the following string output (notice how the values from 
:defaults are prefilled, and the output is automatically sorted based on the order
that the segments were declared):

    # ts.to_s => 'TSS*Blah~TCS***Preset Field 7~'

To set field values on a given segment you can access it either by calling the field directly
on the segment or by passing a block to the segment.

    # this is one way to populate the fields
    ts.TCS.Field1 = 'Foo'
    ts.TSS.Field2 = 'Bar'

    # this is another way
    ts.TCS do |tcs|
      tcs.Field1 = 'Foo'
    end
    
    ts.TSS do |tss|
      tss.Field2 = 'Bar'
    end
    
    # both of the mechanisms above have the same string representation:
    #
    # ts.to_s => 'TSS*Blah*Bar~TCS*Foo**Preset Field 7~'
    
If you read the transaction set declaration from above you will notice that the TSS segment
can be set in two different sequences (with different preset values).  By default (as you
can see from the previous example) when we call TSS we are referring to the first segment,
but if you need to access the second instance of TSS in the transaction set you would specify
TSS_02 instead.  

    ts.TCS.Field1 = 'Foo'
    ts.TSS.Field2 = 'Bar'
    ts.TSS_02.Field2 = 'Baz'

    # ts.to_s => 'TSS*Blah*Bar~TCS*Foo**Preset Field 7~TSS*Last Segment*Baz~'
    
The same technique can be used to reference fields within a segment that have the same name.

    ts.TSS.CommonName = 'Value1'
    ts.TSS.CommonName_02 = 'Value2'

    # ts.to_s => 'TSS*Blah*Bar***Value1*Value2~TCS*Foo**Preset Field 7~TSS*Last Segment*Baz~'

For more example please review the test suite.