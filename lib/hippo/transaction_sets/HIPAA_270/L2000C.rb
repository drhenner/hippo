module Hippo::TransactionSets
  module HIPAA_270

    class L2000C < Hippo::TransactionSets::Base
      loop_name 'L2000C'    #Subscriber Level

      segment Hippo::Segments::TRN,
                :position       => 3

      #Subscriber Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100C,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'IL'},
                :position       => 4

    end
  end
end
