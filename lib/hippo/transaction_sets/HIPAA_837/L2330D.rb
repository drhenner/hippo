module Hippo::TransactionSets
  module HIPAA_837

    class L2330D < Hippo::TransactionSets::Base
      loop_name 'L2330D'    #Other Payer Rendering Provider

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 82

      segment Hippo::Segments::REF,
                :minimum        => 1,
                :maximum        => 3,
                :position       => 83

    end
  end
end
