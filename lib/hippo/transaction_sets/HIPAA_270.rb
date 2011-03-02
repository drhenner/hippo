module Hippo::TransactionSets
  module HIPAA_270
    
    class L2110C < Hippo::TransactionSets::Base
      loop_name 'L2110C'
      
      #Subscriber Eligibility or Benefit Inquiry Information
      segment Hippo::Segments::EQ,
      :position => 130
      
      #Subscriber Spend Down Amount
      segment Hippo::Segments::AMT,
      :position => 135
      
      #Subscriber Elgibility or Benefit Additonal Inquiry Information
      segment Hippo::Segments::III,
      :position => 170
      
      #Subscriber Additional Information
      segment Hippo::Segments::REF,
      :position => 190
      
      #Subscriber Eligibility/Benefit Date
      segment Hippo::Segments::DTP,
      :position => 200
    end

    class L2100A < Hippo::TransactionSets::Base
      loop_name 'L2100A'

      #individual or Organizational Name
      segment Hippo::Segments::NM1,
      :position => 30
    end

    class L2100B < Hippo::TransactionSets::Base
      loop_name 'L2100B'
      #Information Receiver Name
      segment Hippo::Segments::NM1,
      :position => 30,
      :minimum => 1,
      :maximum => nil
      
      #Information Receiver Additional Identification
      segment Hippo::Segments::REF,
      :position => 40
      
      #Information Receiver Address
      segment Hippo::Segments::N3,
      :position => 60
      
      #Information Receiver City State Zip
      segment Hippo::Segments::N4,
      :position => 70
      
      #Infrmation Receiver Contact Information
      segment Hippo::Segments::PER,
      :position => 80
      
      #Information Receiver Provider Information 
      segment Hippo::Segments::PRV,
      :position => 90
    end
    
    class L2110D < Hippo::TransactionSets::Base
      loop_name 'L2110D'
      
      #Dependent Eligibility Or Benefit INquiry Information
      segment Hippo::Segments::EQ,
      :position => 130
      
      #Dependent Eligibility or Benefit Additional Inquiry Information
      segment Hippo::Segments::III,
      :position => 170
      
      #Dependent Additional Information
      segment Hippo::Segments::REF,
      :position => 190
      
      #Dependent Eligibility Benefit Date
      segment Hippo::Segments::DTP,
      :position => 200
    end
   
    class L2100C < Hippo::TransactionSets::Base
      loop_name 'L2100C'
      
      #Subscriber Level
      segment Hippo::Segments::NM1,
      :position => 30
      
      #Subscriber Additional Identification
      segment Hippo::Segments::REF,
      :position => 40
      
      #Subscriber address
      segment Hippo::Segments::N3,
      :position => 60
      
      #Subscriber City/State/Zip
      segment Hippo::Segments::N4,
      :position => 70
      
      #Provider Information
      segment Hippo::Segments::PRV,
      :position => 90
      
      #Subscriber Demographic Information
      segment Hippo::Segments::DMG,
      :position => 100
      
      #Subscriber Relationship
      segment Hippo::Segments::INS,
      :position => 110
      
      #Subscriber Date
      segment Hippo::Segments::DTP,
      :position => 120
      
      loop Hippo::TransactionSets::HIPAA_270::L2110C,
      :minimum => nil,
      :maximum => 99
    end
    
    class L2100D < Hippo::TransactionSets::Base
      loop_name 'L2100D'
      
      # Dependent Name
      segment Hippo::Segments::NM1,
      :position => 30
      
      #Dependent Additional Identification
      segment Hippo::Segments::REF,
      :position => 40
      
      #Dependent Address
      segment Hippo::Segments::N3,
      :position => 60
      
      #Dependent City State ZIp
      segment Hippo::Segments::N4,
      :position => 70
      
      #Provider Information
      segment Hippo::Segments::PRV,
      :position => 90
      
      #Dependent Demographic Information
      segment Hippo::Segments::DMG,
      :position => 100
      
      #Dependent Relationship
      segment Hippo::Segments::INS,
      :position => 110
      
      #Dependent Date
      segment Hippo::Segments::DTP,
      :position => 120
      
      loop Hippo::TransactionSets::HIPAA_270::L2110D,
      :minimum => nil,
      :maximum => 99
    end

    class L2000A < Hippo::TransactionSets::Base
      loop_name 'L2000A'

      #Informational Source Level
      segment Hippo::Segments::HL,
      :position => 10
      
      loop Hippo::TransactionSets::HIPAA_270::L2100A,
      :minimum => 1,
      :maximum => nil
    end

    class L2000B < Hippo::TransactionSets::Base
      loop_name 'L2000B'

      #Information Receiver Level
      segment Hippo::Segments::HL,
      :position => 10,
      :minimum => 1,
      :maximum => 1

      loop Hippo::TransactionSets::HIPAA_270::L2100B,
      :minimum => 1,
      :maximum => nil
    end
    
    class L2000C < Hippo::TransactionSets::Base
      loop_name 'L2000C'
      
      segment Hippo::Segments::HL,
      :position => 10
      
      segment Hippo::Segments::TRN,
      :position => 20
      
      loop Hippo::TransactionSets::HIPAA_270::L2100C,
      :minimum => 1,
      :maximum => 1
    end
    
    class L2000D < Hippo::TransactionSets::Base
      loop_name 'L2000D'
      
      #Dependent Level
      segment Hippo::Segments::HL,
      :position => 10
      
      #Dependent Trace Number
      segment Hippo::Segments::TRN,
      :position => 20
      
      loop Hippo::TransactionSets::HIPAA_270::L2100D,
      :minimum => 1,
      :maximum => 1
    end

    class Base < Hippo::TransactionSets::Base
      #Transaction Set Header
      segment Hippo::Segments::ST, 
      'TransactionSetIdentifierCode' => '270',
      :position => 10

      #Beginning of Hierarchical Transaction
      segment Hippo::Segments::BHT,
      :position => 20

      loop  Hippo::TransactionSets::HIPAA_270::L2000A,  
      :minimum => 1,
      :maximum => nil

      loop Hippo::TransactionSets::HIPAA_270::L2000B,
      :minimum => 1,
      :maximum => nil
      
      loop Hippo::TransactionSets::HIPAA_270::L2000C,
      :minimum => 1,
      :maximum => nil
      
      loop Hippo::TransactionSets::HIPAA_270::L2000D,
      :minimum => 1,
      :maximum => nil
      
      segment Hippo::Segments::SE,
      :position => 210
    end
  end 
end
