module Hippo::TransactionSets
  module HIPAA_837

    class L2010BB < Hippo::TransactionSets::Base
      loop_name 'L2010BB'    #Payer Name

      segment Hippo::Segments::NM1,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 9

      segment Hippo::Segments::N3,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 10

      segment Hippo::Segments::N4,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 11

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 3,
                :position       => 12

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 2,
                :position       => 13

    end
  end
end
