module Hippo::TransactionSets
  module HIPAA_837

    class L2310D < Hippo::TransactionSets::Base
      loop_name 'L2310D'    #Supervising Provider Name

      #Supervising Provider Name
      segment Hippo::Segments::NM1,
                :name           => 'Supervising Provider Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2500,
                :defaults => {
                  'NM101' => 'DQ',
                  'NM102' => '1'
                }

      #Supervising Provider Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Supervising Provider Secondary Identification',
                :minimum        => 0,
                :maximum        => 4,
                :position       => 2710

    end
  end
end
