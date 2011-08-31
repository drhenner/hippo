module Hippo::TransactionSets
  module HIPAA_837

    class L2010AB < Hippo::TransactionSets::Base
      loop_name 'L2010AB'    #Pay-to Address Name

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 8

      segment Hippo::Segments::N3,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 9

      segment Hippo::Segments::N4,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 10

    end
  end
end
