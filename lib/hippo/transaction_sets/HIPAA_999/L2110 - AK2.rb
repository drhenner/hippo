module Hippo::TransactionSets
  module HIPAA_999

    class L2110 - AK2 < Hippo::TransactionSets::Base
      loop_name 'L2110 - AK2'    #Implementation Data Element Note

      #Implementation Data Element Note
      segment Hippo::Segments::IK4,
                :name           => 'Implementation Data Element Note',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 600

      #Element Context
      segment Hippo::Segments::CTX,
                :name           => 'Element Context',
                :minimum        => 0,
                :maximum        => 10,
                :position       => 700

    end
  end
end
