module Hippo::TransactionSets
  module HIPAA_835
    class L1000A < Hippo::TransactionSets::Base
      loop_name 'L1000A'

      #Payer Identification
      segment Hippo::Segments::N1,  
                  'EntityIdentifierCode1' => 'PR',
              :minimum => 1,
              :maximum => 1,
              :position => 80
      
      #Payer Address 
      segment Hippo::Segments::N3,  
              :minimum => 1,
              :maximum => 1,
              :position => 100

      #Payer Cit, State, Zip Code
      segment Hippo::Segments::N4, 
              :minimum => 1,
              :maximum => 1,
              :position => 110

      #Additional Payer Identification
      segment Hippo::Segments::REF,  
              :minimum => 0,
              :maximum => 4,
              :position => 120
     
       #Payer Contact Information 
       segment Hippo::Segments::PER, 
               :minimum => 0,
               :maximum => 1,
               :position => 130
    end

    class L1000B < Hippo::TransactionSets::Base
      loop_name 'L1000B'

      #Payee Identification
      segment Hippo::Segments::N1,  
              'EntityIdentifierCode1' => 'PE',
              :minimum => 1,
              :maximum => 1,
              :position => 80
      
      #Payee Address
      segment Hippo::Segments::N3,  
              :minimum => 0,
              :maximum => 1,
              :position => 100

      #Payee City, State, Zip Code
      segment Hippo::Segments::N4,  
              :minimum => 0,
              :maximum => 1,
              :position => 110
     
      #Payee Additional Identification
      segment Hippo::Segments::REF,  
              :minimum => 1,
              :maximum => nil,
              :position => 120
    end

    class L2110 < Hippo::TransactionSets::Base
      loop_name 'L2110'

      #Service Payment Information
      segment Hippo::Segments::SVC,
              :minimum => 0,
              :maximum => 1,
              :position => 70
      
      #Service Date
      segment Hippo::Segments::DTM, 
              :minimum => 0,
              :maximum => 3,
              :position => 80
       
      #Service Adjustment
      segment Hippo::Segments::CAS, 
              :minimum => 0,
              :maximum => 99,
              :position => 90
   
      #Service Identification
      segment Hippo::Segments::REF,  
              :minimum => 0,
              :maximum => 7,
              :position => 100
      
      #Rendering Provider Information
      segment Hippo::Segments::REF, 
              :minimum => 0,
              :maximum => 10,
              :position => 100
      
      #Service Supplemental Amount
      segment Hippo::Segments::AMT, 
              :minimum => 0,
              :maximum => 12,
              :position => 110
  
      #Service Supplemental Quantity
      segment Hippo::Segments::QTY,  
              :minimum => 0,
              :maximum => 6,
              :position => 120
     
      #Health Care Remark Codes 
      segment Hippo::Segments::LQ, 
              :minimum => 0,
              :maximum => 99,
              :position => 130
     
      #Provider Adjustment
      segment Hippo::Segments::PLB,  
              :minimum => 1,
              :maximum => nil,
              :position => 10
    end

    class L2100 < Hippo::TransactionSets::Base
      loop_name 'L2100'

      #Claim Payment Information
      segment Hippo::Segments::CLP, 
              :minimum => 1,
              :maximum => 1,
              :position => 10
     
      #Claim Adjustment
      segment Hippo::Segments::CAS, 
              :minimum => 0,
              :maximum => 99,
              :position => 20
     
      segment Hippo::Segments::NM1,
              'EntityIdentifierCode1' => 'QC',  #Patient
              :minimum => 1,
              :maximum => 1,
              :position => 30

      segment Hippo::Segments::NM1,
              'EntityIdentifierCode1' => 'IL',  #Insured or Subscriber
              :minimum => 0,
              :maximum => 1, 
              :position => 30

      segment Hippo::Segments::NM1,
              'EntityIdentifierCode1' => '74',  #Corrected Insured
              :minimum => 0,
              :maximum => 1,
              :position => 30

      segment Hippo::Segments::NM1,
              'EntityIdentifierCode1' => '82',  #Rendering Provider
              :minimum => 0,
              :maximum => 1,
              :position => 30

      segment Hippo::Segments::NM1,
              'EntityIdentifierCode1' => 'TT',  #Transfer To
              :minimum => 0,
              :maximum => 1,
              :position => 30

      segment Hippo::Segments::NM1, 
              'EntityIdentifierCode1' => 'PR',  #Payer
              :minimum => 0,
              :maximum => 1,
              :position => 30
      
      #Inpatient Adjudication Information
      segment Hippo::Segments::MIA,             
              :minimum => 0, 
              :maximum => 1,
              :position => 33
     
      #Outpatient Adjudication Information 
      segment Hippo::Segments::MOA, 
              :minimum => 0,
              :maximum => 1,
              :position => 35
     
      #Other Claim Related Identification
      segment Hippo::Segments::REF, 
              :minimum => 0,
              :maximum => 99,
              :position => 40
      
      #Rendering Provider Identification
      segment Hippo::Segments::REF,  
              :minimum => 0,
              :maximum => 10,
              :position => 40
       
      #Claim Date
      segment Hippo::Segments::DTM,               
              :minimum => 0,
              :maximum => 4,
              :position => 50

      #Claim Contact Information
      segment Hippo::Segments::PER,  
              :minimum => 0,
              :maximum => 3,
              :position => 60
     
      #Claim Supplemental Information
      segment Hippo::Segments::AMT,  
              :minimum => 0, 
              :maximum => 14,
              :position => 62
     
      #Claim Supplemental Information Quantity
      segment Hippo::Segments::QTY, 
              :minimum => 0,
              :maximum => 15,
              :position => 64

      loop    Hippo::TransactionSets::HIPAA_835::L2110, 
              :idenitied_by => {'SVC.CompositeMedicalProcedureIdentifier1' => '!=nil'},
              :minimum => 0,
              :maximum => 999
              
    end

    class L2000 < Hippo::TransactionSets::Base
      loop_name 'L2000'

      #Header Number
      segment Hippo::Segments::LX, 
              :minimum => 1,
              :maximum => nil,
              :position => 3
     
      #Provider Summary Information
      segment Hippo::Segments::TS3,  
              :minimum => 0,
              :maximum => 1,
              :position => 5
     
      #Provider Supplemental Summary Information
      segment Hippo::Segments::TS2,  
              :minimum => 0,
              :maximum => 1,
              :position => 7

      loop    Hippo::TransactionSets::HIPAA_835::L2100, 
              :idenitied_by => {'CLP.ClaimSubmittersIdentifier' => '!=nil'},
              :minimum => 1,
              :maximum => nil
    end

    


    class Base < Hippo::TransactionSets::Base
      
      segment Hippo::Segments::ISA
      segment Hippo::Segments::GS

      #Transaction Set Header 
      segment Hippo::Segments::ST, 
                 'TransactionSetIdentifierCode' => '835',
                 :position => 10

      #Financial Information
      segment Hippo::Segments::BPR,  
                  :position => 20
      
      #Reassociation Trace Number
      segment Hippo::Segments::TRN, 
                 'TraceTypeCode' => '1',
                  :position => 40

      #Foreign Currency Information
      segment Hippo::Segments::CUR,  
                  :position => 50

      #Receiver Identification
      segment Hippo::Segments::REF,  
                  :position => 60
                
      #Version Identification
      segment Hippo::Segments::REF, 
                  :position => 60

      #Production Date
      segment Hippo::Segments::DTM, 
                  'DateTimeQualifier' => '405',
                  :position => 70
                    
      loop    Hippo::TransactionSets::HIPAA_835::L1000A,  
              :identified_by => {'N1.EntityIdentifierCode1' => 'PR'},
              :minimum => 1,
              :maximum => 1

      loop    Hippo::TransactionSets::HIPAA_835::L1000B, 
              :identified_by => {'N1.EntityIdentifierCode1' => 'PE'},
              :minimum => 1,
              :maximum => 1

      loop    Hippo::TransactionSets::HIPAA_835::L2000,
              :minimum => 1,
              :maximum => nil
     
      #Transaction Set Trailer
      segment Hippo::Segments::SE, 
              :minimum => 1,
              :maximum => 1,
              :position => 20
      
      segment Hippo::Segments::GE
      segment Hippo::Segments::IEA
    end

  end
end
