module Hippo::TransactionSets
  module HIPAA_271

    class L2000A < Hippo::TransactionSets::Base
      loop_name 'L2000A'    #Information Source Level

      segment Hippo::Segments::AAA,
                :position       => 1

      #Information Source Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100A,
                :identified_by  => {'CLM' => '*'},
                :position       => 2

    end
  end
end
