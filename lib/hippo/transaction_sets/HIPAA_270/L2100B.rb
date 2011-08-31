module Hippo::TransactionSets
  module HIPAA_270

    class L2100B < Hippo::TransactionSets::Base
      loop_name 'L2100B'    #Information Receiver Level

      #Information Receiver Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100B,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '1P'},
                :position       => 2

    end
  end
end
      segment Hippo::Segments::N4,
                :position       => 5

      segment Hippo::Segments::PRV,
                :position       => 6

    end
  end
end
