module Hippo::TransactionSets
  module HIPAA_837

    class L2330F < Hippo::TransactionSets::Base
      loop_name 'L2330F'    #Other Payer Supervising Provider

      #Other Payer Supervising Provider
      segment Hippo::Segments::NM1,
                :name           => 'Other Payer Supervising Provider',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5650

      #Other Payer Supervising Provider Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Other Payer Supervising Provider Secondary Identification',
                :minimum        => 1,
                :maximum        => 3,
                :position       => 6050

    end
  end
end
