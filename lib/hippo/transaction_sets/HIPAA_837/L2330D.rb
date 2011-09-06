module Hippo::TransactionSets
  module HIPAA_837

    class L2330D < Hippo::TransactionSets::Base
      loop_name 'L2330D'    #Other Payer Rendering Provider

      #Other Payer Rendering Provider
      segment Hippo::Segments::NM1,
                :name           => 'Other Payer Rendering Provider',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3650,
                :defaults => {
                  'NM101' => '82'
                }

      #Other Payer Rendering Provider Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Other Payer Rendering Provider Secondary Identification',
                :minimum        => 1,
                :maximum        => 3,
                :position       => 4150

    end
  end
end
