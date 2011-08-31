module Hippo::TransactionSets
  module HIPAA_837

    class L2420H < Hippo::TransactionSets::Base
      loop_name 'L2420H'    #Ambulance Drop-off Location

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 106

      segment Hippo::Segments::N3,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 107

      segment Hippo::Segments::N4,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 108

    end
  end
end
