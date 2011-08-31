module Hippo::TransactionSets
  module HIPAA_837

    class L2420A < Hippo::TransactionSets::Base
      loop_name 'L2420A'    #Rendering Provider Name

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 99

      segment Hippo::Segments::PRV,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 100

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 20,
                :position       => 101

    end
  end
end
