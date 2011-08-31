module Hippo::TransactionSets
  module HIPAA_276

    class L2000A < Hippo::TransactionSets::Base
      loop_name 'L2000A'    #Information Source Level

      #Payer Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100A,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'PI'},
                :position       => 2

    end
  end
end
