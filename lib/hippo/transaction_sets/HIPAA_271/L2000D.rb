module Hippo::TransactionSets
  module HIPAA_271

    class L2000D < Hippo::TransactionSets::Base
      loop_name 'L2000D'    #Dependent Level

      segment Hippo::Segments::TRN,
                :position       => 4

      #Dependent Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100D,
                :identified_by  => {'CLM' => '*'},
                :position       => 5

    end
  end
end
