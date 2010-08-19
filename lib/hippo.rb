module Hippo
  require 'rubygems'
  require 'faker'

  autoload :Segments,         'hippo/segments'
  autoload :TransactionSets,  'hippo/transaction_sets'
  autoload :Field,            'hippo/field'
  autoload :CompositeField,   'hippo/composite_field'
  autoload :Parser,           'hippo/parser'

  FieldSeparator = '*'
  CompositeSeparator = ':'
  SegmentSeparator = '~'
end

def random_chars(count = 5)
  chars = ("a".."z").to_a + ("1".."9").to_a + ("A".."Z").to_a 
  Array.new(count, '').collect{chars[rand(chars.size)]}.join
end

if __FILE__ == $0
  ts = Hippo::TransactionSets::HIPAA_835::Base.new

  ts.ST do |seg|
    seg.TransactionSetIdentifierCode = rand(10 * 100)
    seg.TransactionSetControlNumber = rand(10 * 100)
  end

  ts.BPR do |seg|
    seg.TransactionHandlingCode = 'C'
    seg.MonetaryAmount = rand(10 * 100).to_f
    seg.CreditDebitFlagCode = 'C'
    seg.PaymentMethodCode = 'ACH'
    seg.PaymentFormatCode = 'CCP'
    seg.DFIIdNumberQualifier1 = rand(10 * 100)
    seg.AccountNumberQualifier1 = rand(10 * 100)
    seg.Date = "19951104"
    seg.BusinessFunctionCode = "Col"
    seg.DFIIdNumberQualifier3 = "02"
    seg.AccountNumberQualifier3 = "3"
  end

  ts.TRN do |seg|
    seg.TraceTypeCode = rand(10 * 100)
    seg.ReferenceIdentification1 = rand(10 * 100)
    seg.OriginatingCompanyIdentifier = rand(10 * 100)
    seg.ReferenceIdentification2 = rand(10 * 100)
  end

  ts.REF do |seg|
    seg.ReferenceIdentificationQualifier = "00"
    seg.ReferenceIdentification = "R0203"
    seg.Description = "Description"
    seg.ReferenceIdentifier = "1241"
  end

  ts.REF do |seg|
    seg.ReferenceIdentificationQualifier = "URL"
    seg.ReferenceIdentification = "R0203"
    seg.Description = "Description"
    seg.ReferenceIdentifier = "1241"
  end

  ts.DTM do |seg|
    seg.DateTimeQualifier = "002"
    seg.Date = "19451104"
  end


  ts.L1000A do |loop|
    loop.N1 do |seg|
      seg.EntityIdentifierCode1 = "PR"
      seg.Name = Faker::Name.name
    end
    loop.N3 do |seg|
      seg.AddressInformation1 = Faker::Address.street_address
      seg.AddressInformation2 = "#{Faker::Address.city} #{Faker::Address.us_state} #{Faker::Address.zip_code}"
    end
    loop.N4 do |seg|
      seg.CityName = Faker::Address.city
      seg.StateOrProvinceCode = Faker::Address.us_state_abbr
      seg.PostalCode = Faker::Address.zip_code
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

  ts.L1000B do |loop|
    loop.N1 do |seg|
      seg.EntityIdentifierCode1 = "PR"
      seg.Name = Faker::Name.name
    end
    loop.N3 do |seg|
      seg.AddressInformation1 = Faker::Address.street_address
      seg.AddressInformation2 = "#{Faker::Address.city} #{Faker::Address.us_state} #{Faker::Address.zip_code}"
    end
    loop.N4 do |seg|
      seg.CityName = Faker::Address.city
      seg.StateOrProvinceCode = Faker::Address.us_state_abbr
      seg.PostalCode = Faker::Address.zip_code
      seg.CountryCode = "US"
    end
    loop.REF do |seg|
      seg.ReferenceIdentificationQualifier = "URL"
      seg.ReferenceIdentification = "R0203"
      seg.Description = "Description"
      seg.ReferenceIdentifier = "1241"
    end
  end

  5.times do |i|  
    ts.L2000 do |loop|

      loop.LX do |seg|
        seg.AssignedNumber = i
      end

      loop.TS3 do |seg|
        seg.ReferenceIdentification = "Provider Identifier"
        seg.FacilityCodeValue = "Facility Type Code"
        seg.Date = "20051104"
        seg.Quantity1 = 5
        seg.MonetaryAmount1 = rand(10 * 100).to_f
        seg.MonetaryAmount2 = rand(10 * 100).to_f
        seg.MonetaryAmount3 = rand(10 * 100).to_f
        seg.MonetaryAmount4 = rand(10 * 100).to_f
        seg.MonetaryAmount5 = rand(10 * 100).to_f
        seg.MonetaryAmount6 = rand(10 * 100).to_f
        seg.MonetaryAmount7 = rand(10 * 100).to_f
        seg.Quantity2 = rand(10 * 100)
      end

      loop.TS2 do |seg|
        seg.MonetaryAmount1 = rand(10 * 100).to_f
        seg.MonetaryAmount2 = rand(10 * 100).to_f
        seg.MonetaryAmount3 = rand(10 * 100).to_f
        seg.MonetaryAmount4 = rand(10 * 100).to_f
        seg.MonetaryAmount5 = rand(10 * 100).to_f
        seg.MonetaryAmount6 = rand(10 * 100).to_f
      end

      2.times do |i|
        loop.L2100 do |sub_loop|

          sub_loop.CLP do |seg|
            seg.ClaimSubmittersIdentifier = rand(10 * 100).to_f
            seg.ClaimStatusCode = "1"
            seg.MonetaryAmount1 = rand(10 * 100).to_f
            seg.ClaimFilingIndicatorCode = "01"
            seg.YesNoConditionOrResponseCode = "Y"
          end

          sub_loop.CAS do |seg|
            seg.ClaimAdjustmentGroupCode = "CO"
            seg.ClaimAdjustmentReasonCode1 = "139"
            seg.MonetaryAmount1 = rand(10 * 100).to_f
          end

          sub_loop.NM1 do |seg|
            seg.EntityIdentifierCode1 = "00"
            seg.EntityTypeQualifier = 1
            seg.NameLastOrOrganizationName = Faker::Name.name
            seg.NameFirst = Faker::Name.first_name
          end
        end
      end
    end
  end



  #st = Hippo::Segments::ST.new

  #st.TransactionSetIdentifierCode = '835'
  #st.TransactionSetControlNumber = 'RANDOM NUMBER'

  puts ts.to_s

  #svc = Hippo::Segments::SVC.new

  #svc.class.fields.each do |f|
  #  svc.send((f.name + '=').to_sym, f.name)
  #end

  #puts svc
end

