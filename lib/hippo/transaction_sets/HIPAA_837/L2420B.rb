module Hippo::TransactionSets
  module HIPAA_837

    class L2420B < Hippo::TransactionSets::Base
      loop_name 'L2420B'    #Purchased Service Provider Name

      #Purchased Service Provider Name
      segment Hippo::Segments::NM1,
                :name           => 'Purchased Service Provider Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5000,
                :defaults => {
                  'NM101' => 'QB'
                }

      #Purchased Service Provider Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Purchased Service Provider Secondary Identification',
                :minimum        => 0,
                :maximum        => 20,
                :position       => 5250

    end
  end
end
