module Hippo::TransactionSets
  module HIPAA_271

    class L2000C < Hippo::TransactionSets::Base
      loop_name 'L2000C'    #Subscriber Level

      segment Hippo::Segments::TRN,
                :position       => 3

      #Subscriber Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100C,
                :identified_by  => {'CLM' => '*'},
                :position       => 4

    end
  end
end
