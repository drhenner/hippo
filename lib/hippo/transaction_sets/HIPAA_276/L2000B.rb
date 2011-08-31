module Hippo::TransactionSets
  module HIPAA_276

    class L2000B < Hippo::TransactionSets::Base
      loop_name 'L2000B'    #Information Receiver Level

      #Information Receiver Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100B,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '41'},
                :position       => 3

      #Information Receiver Trace
      loop    Hippo::TransactionSets::HIPAA_837::L2200B,
                :identified_by  => {'CLM' => '*'},
                :position       => 4

    end
  end
end
