module Hippo::TransactionSets
  module HIPAA_837

    class L2330E < Hippo::TransactionSets::Base
      loop_name 'L2330E'    #Other Payer Service Facility Location

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 83

      segment Hippo::Segments::REF,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 84

    end
  end
end
