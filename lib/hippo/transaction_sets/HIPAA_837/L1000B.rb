module Hippo::TransactionSets
  module HIPAA_837

    class L1000B < Hippo::TransactionSets::Base
      loop_name 'L1000B'    #Receiver Name

      #Receiver Name
      segment Hippo::Segments::NM1,
                :name           => 'Receiver Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500,
                :defaults => {
                  'NM101' => '40',
                  'NM102' => '2',
                  'NM108' => '46'
                }

    end
  end
end
