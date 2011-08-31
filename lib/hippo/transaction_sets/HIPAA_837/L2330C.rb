module Hippo::TransactionSets
  module HIPAA_837

    class L2330C < Hippo::TransactionSets::Base
      loop_name 'L2330C'    #Other Payer Referring Provider

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 81

      segment Hippo::Segments::REF,
                :minimum        => 1,
                :maximum        => 3,
                :position       => 82

    end
  end
end
