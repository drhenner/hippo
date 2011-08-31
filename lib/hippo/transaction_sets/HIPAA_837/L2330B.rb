module Hippo::TransactionSets
  module HIPAA_837

    class L2330B < Hippo::TransactionSets::Base
      loop_name 'L2330B'    #Other Payer Name

      segment Hippo::Segments::NM1,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 80

      segment Hippo::Segments::N3,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 81

      segment Hippo::Segments::N4,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 82

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 83

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 2,
                :position       => 84

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 85

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 86

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 87

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 88

    end
  end
end
