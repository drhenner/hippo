module Hippo::TransactionSets
  module HIPAA_835

    class L1000A < Hippo::TransactionSets::Base
      loop_name 'L1000A'    #Payer Identification

      #Payer Identification
      segment Hippo::Segments::N1,
                :name           => 'Payer Identification',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 800,
                :defaults => {
                  'N101' => 'PR'
                }

      #Payer Address
      segment Hippo::Segments::N3,
                :name           => 'Payer Address',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 1000

      #Payer City, State, ZIP Code
      segment Hippo::Segments::N4,
                :name           => 'Payer City, State, ZIP Code',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 1100

      #Additional Payer Identification
      segment Hippo::Segments::REF,
                :name           => 'Additional Payer Identification',
                :minimum        => 0,
                :maximum        => 4,
                :position       => 1200

      #Payer Business Contact Information
      segment Hippo::Segments::PER,
                :name           => 'Payer Business Contact Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1300,
                :defaults => {
                  'PER01' => 'CX'
                }

      #Payer Technical Contact Information
      segment Hippo::Segments::PER,
                :name           => 'Payer Technical Contact Information',
                :minimum        => 1,
                :maximum        => nil,
                :position       => 1303,
                :defaults => {
                  'PER01' => 'BL'
                }

      #Payer WEB Site
      segment Hippo::Segments::PER,
                :name           => 'Payer WEB Site',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1305,
                :defaults => {
                  'PER01' => 'IC',
                  'PER03' => 'UR'
                }

    end
  end
end
