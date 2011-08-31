module Hippo::TransactionSets
  module HIPAA_835

    class L1000A < Hippo::TransactionSets::Base
      loop_name 'L1000A'    #Payer Identification

      segment Hippo::Segments::N1,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 6

      segment Hippo::Segments::N3,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 7

      segment Hippo::Segments::N4,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 8

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 4,
                :position       => 9

      segment Hippo::Segments::PER,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 10

    end
  end
end
