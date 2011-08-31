module Hippo::TransactionSets
  module HIPAA_837

    class L2330G < Hippo::TransactionSets::Base
      loop_name 'L2330G'    #Other Payer Billing Provider

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 70

      segment Hippo::Segments::REF,
                :minimum        => 1,
                :maximum        => 2,
                :position       => 71

    end
  end
end
