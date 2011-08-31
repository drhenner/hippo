module Hippo::TransactionSets
  module HIPAA_837

    class L2420B < Hippo::TransactionSets::Base
      loop_name 'L2420B'    #Purchased Service Provider

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 100

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 20,
                :position       => 101

    end
  end
end
