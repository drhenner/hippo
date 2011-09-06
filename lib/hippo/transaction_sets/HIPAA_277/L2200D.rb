module Hippo::TransactionSets
  module HIPAA_277

    class L2200D < Hippo::TransactionSets::Base
      loop_name 'L2200D'    #Claim Status Tracking Number

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

      #Claim Identifier Number For Clearinghouse and Other Transmission Intermediaries
      segment Hippo::Segments::REF,
                :name           => 'Claim Identifier Number For Clearinghouse and Other Transmission Intermediaries',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1110

      #Institutional Bill Type Identification
      segment Hippo::Segments::REF,
                :name           => 'Institutional Bill Type Identification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1120

      #Claim Level Service Date
      segment Hippo::Segments::DTP,
                :name           => 'Claim Level Service Date',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 1200

      #Service Line Information
      loop    Hippo::TransactionSets::HIPAA_837::L2220D,
                :name           => 'Service Line Information',
                :minimum        => 0,
                :maximum        => nil,
                :position       => 1800

    end
  end
end
