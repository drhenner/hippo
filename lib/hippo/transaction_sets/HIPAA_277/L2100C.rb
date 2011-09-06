module Hippo::TransactionSets
  module HIPAA_277

    class L2100C < Hippo::TransactionSets::Base
      loop_name 'L2100C'    #Billing Provider Name

      #Billing Provider Name
      segment Hippo::Segments::NM1,
                :name           => 'Billing Provider Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500,
                :defaults => {
                  'NM101' => '85'
                }

    end
  end
end
