module Hippo::TransactionSets
  module HIPAA_270

    class L2000D < Hippo::TransactionSets::Base
      loop_name 'L2000D'    #Dependent Level

      segment Hippo::Segments::TRN,
                :position       => 4

      #Dependent Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100D,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '03'},
                :position       => 5

    end
  end
end
