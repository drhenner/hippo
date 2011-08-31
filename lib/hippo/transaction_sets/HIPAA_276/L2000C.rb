module Hippo::TransactionSets
  module HIPAA_276

    class L2000C < Hippo::TransactionSets::Base
      loop_name 'L2000C'    #Service Provider Level

      #Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100C,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '1P'},
                :position       => 4

      #Provider Of Service Trace Identifier
      loop    Hippo::TransactionSets::HIPAA_837::L2200C,
                :identified_by  => {'CLM' => '*'},
                :position       => 5

    end
  end
end
