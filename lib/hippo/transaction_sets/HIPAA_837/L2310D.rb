module Hippo::TransactionSets
  module HIPAA_837

    class L2310D < Hippo::TransactionSets::Base
      loop_name 'L2310D'    #Supervising Provider Name

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 65

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 4,
                :position       => 66

    end
  end
end
