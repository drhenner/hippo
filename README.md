Hippo
=====

The Hippo library is our attempt at creating a simple DSL to address the issue of HIPAA transaction sets.  HIPAA or the Health Insurance Portability Accountability Act is a series of regulations which place restrictions on the way transaction sets  (ie. Claims, Remittances, Eligibility, Claim Status, etc.) must be formatted.  Hippo is our attempt to address these issues in a ruby way. 

Install: 
    gem install hippo

Once installed simply set for 835 transaction set:


    #instantiate Instance of HIPAA_835 Transaction
    ts = Hippo::TransactionSets::HIPAA_835::Base.new
	
    #Assign fields/segments as follows: 
    ts.ST do |seg|
        seg.TransactionSetIdentifierCode = rand(10 * 100)
        seg.TransactionSetControlNumber = rand(10 * 100)
    end
    
Here's what a loop would look like.  We are using the Faker gem to generate random info for this example.

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

We are pursuing this aggressively at Pro-Medical, Inc. because HIPAA 5010 will take effect later this year and testing/refactoring must be finished before then.