module Hippo::TransactionSets
  module HIPAA_837

    class L2310F < Hippo::TransactionSets::Base
      loop_name 'L2310F'    #Ambulance Drop-off Location

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 67

      segment Hippo::Segments::N3,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 68

      segment Hippo::Segments::N4,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 69

    end
  end
end
