module Hippo::TransactionSets
  module HIPAA_277

    class L2200E < Hippo::TransactionSets::Base
      loop_name 'L2200E'    #Claim Status Tracking Number

      #Claim Status Tracking Number
      segment Hippo::Segments::TRN,
                :name           => 'Claim Status Tracking Number',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 900

      #Claim Level Status Information
      segment Hippo::Segments::STC,
                :name           => 'Claim Level Status Information',
                :minimum        => 1,
                :maximum        => >1,
                :position       => 1000

      #Payer Claim Control Number
      segment Hippo::Segments::REF,
                :name           => 'Payer Claim Control Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1100

      #Institutional Bill Type Identification
      segment Hippo::Segments::REF,
                :name           => 'Institutional Bill Type Identification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1120

      #Patient Control Number
      segment Hippo::Segments::REF,
                :name           => 'Patient Control Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1145

      #Pharmacy Prescription Number
      segment Hippo::Segments::REF,
                :name           => 'Pharmacy Prescription Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1150

      #Voucher Identifier
      segment Hippo::Segments::REF,
                :name           => 'Voucher Identifier',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1155

      #Claim Identification Number For Clearinghouses and Other Transmission Intermediaries
      segment Hippo::Segments::REF,
                :name           => 'Claim Identification Number For Clearinghouses and Other Transmission Intermediaries',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1160

      #Claim Service Date
      segment Hippo::Segments::DTP,
                :name           => 'Claim Service Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1200

      #Service Line Information
      loop    Hippo::TransactionSets::HIPAA_837::L2220E,
                :name           => 'Service Line Information',
                :minimum        => 0,
                :maximum        => nil,
                :position       => 1800

    end
  end
end
