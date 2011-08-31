module Hippo::TransactionSets
  module HIPAA_837

    class L2330F < Hippo::TransactionSets::Base
      loop_name 'L2330F'    #Other Payer Supervising Provider

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 69

      segment Hippo::Segments::REF,
                :minimum        => 1,
                :maximum        => 3,
                :position       => 70

    end
  end
end
