module Hippo::TransactionSets
  module HIPAA_837

    class L2010AA < Hippo::TransactionSets::Base
      loop_name 'L2010AA'    #Billing Provider Name

      segment Hippo::Segments::NM1,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 7

      segment Hippo::Segments::N3,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 8

      segment Hippo::Segments::N4,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 9

      segment Hippo::Segments::REF,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 10

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 2,
                :position       => 11

      segment Hippo::Segments::PER,
                :minimum        => 0,
                :maximum        => 2,
                :position       => 12

    end
  end
end
