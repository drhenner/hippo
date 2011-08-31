module Hippo::TransactionSets
  module HIPAA_837

    class L2420D < Hippo::TransactionSets::Base
      loop_name 'L2420D'    #Supervising Provider Name

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 102

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 20,
                :position       => 103

    end
  end
end
