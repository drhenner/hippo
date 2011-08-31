module Hippo::TransactionSets
  module HIPAA_837

    class L2310A < Hippo::TransactionSets::Base
      loop_name 'L2310A'    #Attending Physician Name

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 72

      segment Hippo::Segments::PRV,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 73

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 74

    end
  end
end
