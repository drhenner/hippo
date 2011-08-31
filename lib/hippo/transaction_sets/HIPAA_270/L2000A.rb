module Hippo::TransactionSets
  module HIPAA_270

    class L2000A < Hippo::TransactionSets::Base
      loop_name 'L2000A'    #Information Source Level

      #Information Source Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100A,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '2B'},
                :position       => 1

    end
  end
end
