module Hippo::TransactionSets
  module HIPAA_835

    class L1000B < Hippo::TransactionSets::Base
      loop_name 'L1000B'    #Payee Identfication

      segment Hippo::Segments::N1,
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
                :minimum        => 0,
                :maximum        => 4,
                :position       => 10

      segment Hippo::Segments::RDM,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 11

    end
  end
end
