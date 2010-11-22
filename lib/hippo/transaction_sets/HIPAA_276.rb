module Hippo::TransactionSets
  module HIPAA_276
    class L2000A < Hippo::TransactionSets::Base
      loop_name '2000A'
      
      #Informational Source Level
      segment Hippo::Segments::HL,
        :position => 10
      loop Hippo::TransactionSets::HIPAA_276::L2100A,
        :minimum => 1,
        :maximum => nil
    end
    class L2100A < Hippo::TransactionSets::Base
      loop_name '2100A'
      
      #Payer Name
      segment Hippo::Segments::NM1,
        :position => 50
      
      #Payer Contact Information
      segment Hippo::Segments::PER,
        :position => 80,
        :maximum => 1,
        :minimum => nil
    end
    class L2000B < Hippo::TransactionSets::Base
      loop_name '2000B'
      
      #Information Receiver Level
      segment Hippo::Segments::HL,
        :position => 10,
        :minimum => 1,
        :maximum => 1
      loop Hippo::TransactionSets::HIPPA_276::L2100B,
        :minimum => 1,
        :maximum => nil
    end
    class L2100B < Hippo::TransactionSets::Base
      loop_name '2100B'
      #Information Receiver Name
      segment Hippo::Segments::NM1,
        :position 50,
        :minimum => 1,
        :maximum => nil
      end
    class L2000C < Hippo::TransactionSets::Base
      loop_name '2000C'
      #Service Provider Level
      segment Hippo::Segments::HL,
        :position => 10,
        :minimum => 1,
        :maximum => nil
      
      loop Hippo::TransactionSets::HIPPA_276::L2100C,
        :minimum => 1,
        :maximum => nil
      end
    class L2100C < Hippo::TransactionSets::Base
      loop_name '2100C'
      #Provider Name
      segment Hippo::Segments::NM1,
        :position => 50,
        :minimum => 1,
        :maximum => 1
    end
    
    class L2000D < Hippo::TransactionSets::Base
      loop_name '2000D'
      #Subscriber Level  
      segment Hippo::Segments::HL,
        :position => 10,
        :minimum => 1,
        :maximum => nil
        
      #Subscriber Demographic Information
      segment Hippo::Segments::DMG,
        :position => 40
      
      loop Hippo::TransactionSets::HIPPA_276::L2100D,
        :minimum => 1,
        :maximum => 1
      loop Hippo::TransactionSets::HIPPA_276::L2200D,
        :minimum => 1,
        :maximum => 1
    end
    
    class L2100D < Hippo::TransactionSets::Base
      loop_name '2100D'  
      #Subscriber Name
      segment Hippo::Segments::NM1,
        :posiion => 50  
    end
    
    class L2200D < Hippo::TransactionSets::Base
      loop_name '2200D'
      
        #Claim Submiter Trace Number
        segment Hippo::Segments::TRN,
          :position 90,
          :maximum => 1

        #Payer Claim Identification Number
        segment Hippo::Segments::REF,
          :position => 100,
          :maximum => 3
        
        #Institutional Bill Type Identification
        segment Hippo::Segments::REF,
          :position => 100,
          :maximum => 3
          
        #Medical Record Identification
        segment Hippo::Segments::REF,
          :position => 100,
          
        #Claim Submittd Charges
        segment Hippo::Segments::AMT,
          :position => 110,
          
        #Claim Service Date
        segment Hippo::Segments::DTP,
          :position => 120,
          :maximum => 2
        loop Hippo::TransactionSets::HIPPA_276::L2210D,
          :minimum => nil,
          :maximum => 1
    end
    
    class L2210D < Hippo::TransactionSets::Base
      loop_name '2210D'
        #Service Line Information
        segment Hippo::Segments::SVC,
          :position => 130,
          :maximum => 1
          
        #Service Line Item Identifcation
        segment Hippo::Segments::REF,
          :position => 140,
          :maximum => 1
        
        #Service Line Date
        segment Hippo::Segments::DTP,
          :position => 150,
          :maximum => 1
    end
    
    class L2000E < Hippo::TransactionSets::Base
      loop_name '2000E'
      
      #Dependent Level
      segment Hippo::Segments::HL,
        :position => 10,
        :minimum => 1,
        :maximum => 1
      
      #Dependent Demographic Information
      segment Hippo::Segments::DMG,
        :position => 40,
        :maximum => 1
      loop Hippo::TransactionSets::HIPPA_276::L2100E,
        :minimum => 1,
        :maximum => 1
      loop Hippo::TransactionSets::HIPPA_276::L2200E,
        :minimum => 1,
        :maximum => 1
    end
    
    class L2100E < Hippo::TransactionSets::Base
      loop_name '2100E'
      
      #Dependent Name
      segment Hippo::Segments::NM1,
        :position => 50,
        :maximum => 1
      
      #Claim Submitter Trace Number
      segment Hippo::Segments::TRN,
        :position => 90,
        :maximum => 1
    end
    
    class L2200E < Hippo::TransactionSets::Base
      loop_name '2200E'
      
      #Payer Claim Identification Number
      segment  Hippo::Segments::REF,
        :position => 100,
        :maximum => 3
      
      #Institutional Bill Type Identification
      segment Hippo::Segments::REF,
        :position => 100,
        :maximum => 3
      
      #Medical Record Identification
      segment Hippo::Segments::REF,
        :position => 100,
        :maximum => 3
      
      #Claim Submitted Charges
      segment Hippo::Segments::AMT,
        :position => 110,
        :maximum => 1
        
      #Claim Service Date
      segment Hippo::Segments::DTP,
        :position => 120,
        :maximum => 2
      loop Hippo::TransactionSets::HIPPA_276::L2210E,
        :minimum => nil,
        :maximum => 1
    end
    class L2210E < Hippo::TransactionSets::Base
      loop_name '2210'
      
      #Service Line Information
      segment Hippo::Segments::SVC,
        :position => 130,
        :maximum => 1
      
      #Service Line Item Identification
      segment Hippo::Segments::REF,
        :position => 140,
        :maximum => 1
        
      #Service Line Date
      segment Hippo::Segments::DTP,
        :position => 150,
        :maximum => 1
    end
      
     
    
    class Base < Hippo::TransactionSets::Base
      #Transaction Set Header
      segment Hippo::Segments::ST, 
        'TransactionSetIdentifierCode' => '276',
        :position => 10

      #Beginning of Hierarchical Transaction
      segment Hippo::Segments::BHT,
        :position => 20

      loop  Hippo::TransactionSets::HIPAA_276::L2000A,  
        :minimum => 1,
        :maximum => nil
      loop Hippo::TransactionSets::HIPPA_276::L2000B,
        :minimum => 1,
        :maximum => nil
      loop Hippo::TransactionSets::HIPPA_276::L2000C,
        :minimum => 1,
        :maximum => nil
      loop Hippo::TransactionSets::HIPPA_276::L2000D,
        :minimum => 1,
        :maximum => nil
      loop Hippo::TransactionSets::HIPPA_276::L2000E,
        :minimum => nil,
        :maximum => 1
        
        #Transaction Set Trailer
        segment Hippo::Segments::SE
          :position => 160,
          :minimum => 1,
          :maximum => 1
        
    end
  end
end