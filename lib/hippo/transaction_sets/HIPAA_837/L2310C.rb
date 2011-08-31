module Hippo::TransactionSets
  module HIPAA_837

    class L2310C < Hippo::TransactionSets::Base
      loop_name 'L2310C'    #Other Provider Name

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 74

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 75

    end
  end
end
