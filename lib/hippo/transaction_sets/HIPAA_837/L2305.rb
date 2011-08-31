module Hippo::TransactionSets
  module HIPAA_837

    class L2305 < Hippo::TransactionSets::Base
      loop_name 'L2305'    #Home Health Care Plan Information

      segment Hippo::Segments::CR7,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 61

      segment Hippo::Segments::HSD,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 62

    end
  end
end
