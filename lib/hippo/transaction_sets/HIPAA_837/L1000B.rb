module Hippo::TransactionSets
  module HIPAA_837

    class L1000B < Hippo::TransactionSets::Base
      loop_name 'L1000B'    #Receiver Name

      segment Hippo::Segments::NM1,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 3

      segment Hippo::Segments::PER,
                :minimum        => 1,
                :maximum        => 2,
                :position       => 4

    end
  end
end
