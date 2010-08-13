module Hippo::TransactionSets
  module HIPAA_835
    class Base < Hippo::TransactionSets::Base

      segment Hippo::Segments::ST,  #Transaction Set Header 
                'TransactionSetIdentifierCode' => '835'

      segment Hippo::Segments::BPR  #Financial Information

      segment Hippo::Segments::TRN, #Reassociation Trace Number
                'TraceTypeCode' => '1'

      segment Hippo::Segments::CUR  #Foreign Currency Information

      segment Hippo::Segments::REF  #Receiver Identification

      segment Hippo::Segments::REF  #Version Identification
       
      segment Hippo::Segments::DTM, #Production Date
                'DateTimeQualifier' => '405'
      
      loop    L1000A,  
              :identified_by => {'N1.EntityIdentifierCode' => 'PR'},
              :minimum => 1,
              :maximum => 1

      loop    L1000B, 
              :identified_by => {'N1.EntityIdentifierCode' => 'PE'},
              :minimum => 1,
              :maximum => 1

      loop    L2000,
              :minimum => 1,
              :maximum => nil

      segment Hippo::Segments::SE,  #Transaction Set Trailer
              :minimum => 1,
              :maximum => 1
    end

    class L1000A < Hippo::TransactionSets::Base
      segment Hippo::Segments::N1,  #Payer Identification
              'EntityIdentifierCode' => 'PR',
              :minimum => 1,
              :maximum => 1

      segment Hippo::Segments::N3,  #Payer Address 
              :minimum => 1,
              :maximum => 1

      segment Hippo::Segments::N4,  #Payer Cit, State, Zip Code
              :minimum => 1,
              :maximum => 1

      segment Hippo::Segments::REF,  #Additional Payer Identification
              :minimum => 0,
              :maximum => 4
      segment Hippo::Segments::PER,  #Payer Contact Information 
              :minimum => 0,
              :maximum => 1
    end

    class L1000B < Hippo::TransactionSets::Base
      segment Hippo::Segments::N1,  #Payee Identification
              'EntityIdentifierCode' => 'PE',
              :minimum => 1,
              :maximum => 1
      segment Hippo::Segments::N3,  #Payee Address
              :minimum => 0,
              :maximum => 1
      segment Hippo::Segments::N4,  #Payee City, State, Zip Code
              :minimum => 0,
              :maximum => 1
      segment Hippo::Segments::REF,  #Payee Additional Identification
              :minimum => 1,
              :maximum => nil
    end

    class L2000 < Hippo::TransactionSets::Base
      segment Hippo::Segments::LX,  #Header Number
              :minimum => 1,
              :maximum => nil
      segment Hippo::Segments::TS3,  #Provider Summary Information
              :minimum => 0,
              :maximum => 1
      segment Hippo::Segments::TS2,  #Provider Supplemental Summary Information
              :minimum => 0,
              :maximum => 1

      loop    L2100, 
              :idenitied_by => {'CLP.ClaimSubmittersIdentifier' => '!=nil'},
              :minimum => 1,
              :maximum => nil
    end

    
    class L2100 < Hippo::TransactionSets::Base
      segment Hippo::Segments::CLP, #Claim Payment Information
              :minimum => 1,
              :maximum => 1
      segment Hippo::Segments::CAS, #Claim Adjustment
              :minimum => 0,
              :maximum => 99
      segment Hippo::Segments::NM1,
              'EntityIdentifierCode' => 'QC',  #Patient
              :minimum => 1,
              :maximum => 1
      segment Hippo::Segments::NM1,
              'EntityIdentifierCode' => 'IL',  #Insured or Subscriber
              :minimum => 0,
              :maximum => 1
      segment Hippo::Segments::NM1,
              'EntityIdentifierCode' => '74',  #Corrected Insured
              :minimum => 0,
              :maximum => 1
      segment Hippo::Segments::NM1,
              'EntityIdentifierCode' => '82',  #Rendering Provider
              :minimum => 0,
              :maximum => 1
      segment Hippo::Segments::NM1,
              'EntityIdentifierCode' => 'TT',  #Transfer To
              :minimum => 0,
              :maximum => 1
      segment Hippo::Segments::NM1, 
              'EntityIdentifierCode' => 'PR',  #Payer
              :minimum => 0,
              :maximum => 1
      segment Hippo::Segments::MIA,  #Inpatient Adjudication Information
              :minimum => 0, 
              :maximum => 1
      segment Hippo::Segments::MOA,  #Outpatient Adjudication Information
              :minimum => 0,
              :maximum => 1
      segment Hippo::Segments::REF,  #Other Claim Related Identification
              :minimum => 0,
              :maximum => 99
      segment Hippo::Segments::REF,  #Rendering Provider Identification
              :minimum => 0,
              :maximum => 10
      segment Hippo::Segments::DTM,  #Claim Date
              :minimum => 0,
              :maximum => 4
      segment Hippo::Segments::PER,  #Claim Contact Information
              :minimum => 0,
              :maximum => 3
      segment Hippo::Segments::AMT,  #Claim Supplemental Information
              :minimum => 0, 
              :maximum => 14
      segment Hippo::Segments::QTY, #Claim Supplemental Information Quantity
              :minimum => 0,
              :maximum => 15

      loop    L2110, 
              :idenitied_by => {'SVC.CompositeMedicalProcedureIdentifier1' => '!=nil'},
              :minimum => 0,
              :maximum => 999
              
    end

    class L2110 < Hippo::TransactionSets::Base
      segment Hippo::Segments::SVC, #Service Payment Information
              :minimum => 0,
              :maximum => 1
      segment Hippo::Segments::DTM, #Service Date
              :minimum => 0,
              :maximum => 3
      segment Hippo::Segments::CAS,  #Service Adjustment
              :minimum => 0,
              :maximum => 99
      segment Hippo::Segments::REF,  #Service Identification
              :minimum => 0,
              :maximum => 7
      segment Hippo::Segments::REF,  #Rendering Provider Information
              :minimum => 0,
              :maximum => 10
      segment Hippo::Segments::AMT,  #Service Supplemental Amount
              :minimum => 0,
              :maximum => 12
      segment Hippo::Segments::QTY,  #Service Supplemental Quantity
              :minimum => 0,
              :maximum => 6
      segment Hippo::Segments::LQ,  #Health Care Remark Codes 
              :minimum => 0,
              :maximum => 99
      segment Hippo::Segments::PLB,  #Provider Adjustment
              :minimum => 1,
              :maximum => nil
    end
  end
end
