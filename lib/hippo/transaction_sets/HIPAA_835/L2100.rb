module Hippo::TransactionSets
  module HIPAA_835

    class L2100 < Hippo::TransactionSets::Base
      loop_name 'L2100'    #Claim Payment Information

      #Claim Payment Information
      segment Hippo::Segments::CLP,
                :name           => 'Claim Payment Information',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100

      #Claim Adjustment
      segment Hippo::Segments::CAS,
                :name           => 'Claim Adjustment',
                :minimum        => 0,
                :maximum        => 99,
                :position       => 200

      #Patient Name
      segment Hippo::Segments::NM1,
                :name           => 'Patient Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 290

      #Insured Name
      segment Hippo::Segments::NM1,
                :name           => 'Insured Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 300

      #Corrected Patient/Insured Name
      segment Hippo::Segments::NM1,
                :name           => 'Corrected Patient/Insured Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 310

      #Service Provider Name
      segment Hippo::Segments::NM1,
                :name           => 'Service Provider Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 320

      #Crossover Carrier Name
      segment Hippo::Segments::NM1,
                :name           => 'Crossover Carrier Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 330

      #Corrected Priority Payer Name
      segment Hippo::Segments::NM1,
                :name           => 'Corrected Priority Payer Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 340

      #Other Subscriber Name
      segment Hippo::Segments::NM1,
                :name           => 'Other Subscriber Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 350

      #Inpatient Adjudication Information
      segment Hippo::Segments::MIA,
                :name           => 'Inpatient Adjudication Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 370

      #Outpatient Adjudication Information
      segment Hippo::Segments::MOA,
                :name           => 'Outpatient Adjudication Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 380

      #Other Claim Related Identification
      segment Hippo::Segments::REF,
                :name           => 'Other Claim Related Identification',
                :minimum        => 0,
                :maximum        => 5,
                :position       => 400

      #Rendering Provider Identification
      segment Hippo::Segments::REF,
                :name           => 'Rendering Provider Identification',
                :minimum        => 0,
                :maximum        => 10,
                :position       => 450

      #Statement From or To Date
      segment Hippo::Segments::DTM,
                :name           => 'Statement From or To Date',
                :minimum        => 0,
                :maximum        => 2,
                :position       => 500

      #Coverage Expiration Date
      segment Hippo::Segments::DTM,
                :name           => 'Coverage Expiration Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 505

      #Claim Received Date
      segment Hippo::Segments::DTM,
                :name           => 'Claim Received Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 510

      #Claim Contact Information
      segment Hippo::Segments::PER,
                :name           => 'Claim Contact Information',
                :minimum        => 0,
                :maximum        => 2,
                :position       => 600

      #Claim Supplemental Information
      segment Hippo::Segments::AMT,
                :name           => 'Claim Supplemental Information',
                :minimum        => 0,
                :maximum        => 13,
                :position       => 620

      #Claim Supplemental Information Quantity
      segment Hippo::Segments::QTY,
                :name           => 'Claim Supplemental Information Quantity',
                :minimum        => 0,
                :maximum        => 14,
                :position       => 640

      #Service Payment Information
      loop    Hippo::TransactionSets::HIPAA_837::L2110,
                :name           => 'Service Payment Information',
                :minimum        => 0,
                :maximum        => 999,
                :position       => 700

    end
  end
end
