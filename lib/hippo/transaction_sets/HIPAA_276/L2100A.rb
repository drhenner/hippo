module Hippo::TransactionSets
  module HIPAA_276

    class L2100A < Hippo::TransactionSets::Base
      loop_name 'L2100A'    #Payer Name

      #Payer Name
      segment Hippo::Segments::NM1,
                :name           => 'Payer Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500,
                :defaults => {
                  'NM101' => 'PR',
                  'NM102' => '2'
                }

    end
  end
end
