module Hippo::TransactionSets
  module HIPAA_837

    class L2420E < Hippo::TransactionSets::Base
      loop_name 'L2420E'    #Ordering Provider Name

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 103

      segment Hippo::Segments::N3,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 104

      segment Hippo::Segments::N4,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 105

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 20,
                :position       => 106

      segment Hippo::Segments::PER,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 107

    end
  end
end
