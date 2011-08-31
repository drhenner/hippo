module Hippo::TransactionSets
  module HIPAA_271

    class L2100B < Hippo::TransactionSets::Base
      loop_name 'L2100B'    #Information Receiver Level

      #Information Receiver Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100B,
                :identified_by  => {'CLM' => '*'},
                :position       => 2

    end
  end
end
  :position       => 4

      segment Hippo::Segments::PRV,
                :position       => 5

    end
  end
end
