module Hippo::TransactionSets
  module HIPAA_837

    class L2420F < Hippo::TransactionSets::Base
      loop_name 'L2420F'    #Referring Provider Name

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 104

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 20,
                :position       => 105

    end
  end
end
