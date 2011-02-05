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

We are pursuing this aggressively at Pro-Medical, Inc. because HIPAA 5010 will take effect later this year and testing/refactoring must be finished before then.