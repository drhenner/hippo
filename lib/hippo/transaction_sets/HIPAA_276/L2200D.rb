module Hippo::TransactionSets
  module HIPAA_276

    class L2200D < Hippo::TransactionSets::Base
      loop_name 'L2200D'    #Claim Status Tracking Number

      #Claim Status Tracking Number
      segment Hippo::Segments::TRN,
                :name           => 'Claim Status Tracking Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 900

      #Payer Claim Control Number
      segment Hippo::Segments::REF,
                :name           => 'Payer Claim Control Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1000

      #Institutional Bill Type Identification
      segment Hippo::Segments::REF,
                :name           => 'Institutional Bill Type Identification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1010

      #Application or Location System Identifier
      segment Hippo::Segments::REF,
                :name           => 'Application or Location System Identifier',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1030

      #Group Number
      segment Hippo::Segments::REF,
                :name           => 'Group Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1035

      #Patient Control Number
      segment Hippo::Segments::REF,
                :name           => 'Patient Control Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1040

      #Pharmacy Prescription Number
      segment Hippo::Segments::REF,
                :name           => 'Pharmacy Prescription Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1045

      #Claim Identification Number For Clearinghouses and Other Transmission Intermediaries
      segment Hippo::Segments::REF,
                :name           => 'Claim Identification Number For Clearinghouses and Other Transmission Intermediaries',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1050

      #Claim Submitted Charges
      segment Hippo::Segments::AMT,
                :name           => 'Claim Submitted Charges',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1100

      #Claim Service Date
      segment Hippo::Segments::DTP,
                :name           => 'Claim Service Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1200

      #Service Line Information
      loop    Hippo::TransactionSets::HIPAA_837::L2210D,
                :name           => 'Service Line Information',
                :minimum        => 0,
                :maximum        => nil,
                :position       => 1300

    end
  end
end
