Hippo
=====

The Hippo library is an attempt at creating a simple DSL to generate and parse HIPAA transaction sets.  HIPAA or the Health Insurance Portability Accountability Act is a series of regulations which place restrictions and requirements on the way transaction sets  (ie. Claims, Remittances, Eligibility, Claim Status, etc.) must be formatted.

The HIPAA required transactions sets are created by the X12
organization. The current version (as of 2011/02/05) is 4010A1, but
effective 2012/01/01 all organizations must be migrated to using version
5010.

More information can be found at the following sites:

* [General HIPAA information from CMS](https://www.cms.gov/HIPAAGenInfo/01_Overview.asp)
* [Wikipedia HIPAA Article](http://en.wikipedia.org/wiki/Hipaa)
* [5010 Implementation Timeline](https://www.cms.gov/ElectronicBillingEDITrans/18_5010D0.asp)

Installation
------------
    gem install hippo

Usage
-----
This is very straight forward. Basically, create an instance of the
transaction set that you will be working with, and start filling in the
loops, segments, and fields.

    #instantiate Instance of HIPAA_835 Transaction
    ts = Hippo::TransactionSets::HIPAA_835::Base.new

    #Assign fields/segments as follows: 
    ts.ST do |seg|
        seg.TransactionSetIdentifierCode = rand(10 * 100)
        seg.TransactionSetControlNumber = rand(10 * 100)
    end

    ts.L1000A do |loop|
        loop.N1 do |seg|
            seg.EntityIdentifierCode1 = "PR"
            seg.Name = "Medicare"
        end

        loop.N3 do |seg|
            seg.AddressInformation1 = "1234 Government Way"
        end

        loop.N4 do |seg|
            seg.CityName = "Washington"
            seg.StateOrProvinceCode = "DC"
            seg.PostalCode = "12345"
            seg.CountryCode = "US"
        end

        loop.REF do |seg|
            seg.ReferenceIdentificationQualifier = "URL"
            seg.ReferenceIdentification = "R0203"
            seg.Description = "Description"
            seg.ReferenceIdentifier = "1241"
        end
        loop.PER do |seg|
            seg.ContactFunctionCode = "1A"
            seg.Name = Faker::Name.name
        end
    end

Goals
-----
We need to begin testing with both governmental and commercial insurers
by 2011/06/01 so we obviously have a bit of work ahead of us. 

The following goals are high on the priority list:

* Generate valid 4010A1 276 files.
* Parse 4010A1 277 files.
* Create 5010 transaction sets
* Begin testing with governmental and commercial insurers with 5010.
