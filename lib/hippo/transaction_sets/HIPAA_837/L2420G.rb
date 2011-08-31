module Hippo::TransactionSets
  module HIPAA_837

    class L2420G < Hippo::TransactionSets::Base
      loop_name 'L2420G'    #Ambulance Pick-up Location

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 105

      segment Hippo::Segments::N3,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 106

      segment Hippo::Segments::N4,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 107

    end
  end
end
