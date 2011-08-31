module Hippo::TransactionSets
  module HIPAA_276

    class L2000D < Hippo::TransactionSets::Base
      loop_name 'L2000D'    #Subscriber Level

      segment Hippo::Segments::DMG,
                :position       => 5

      #Subscriber Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100D,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'IL'},
                :position       => 6

      #Claim Status Tracking Number
      loop    Hippo::TransactionSets::HIPAA_837::L2200D,
                :identified_by  => {'CLM' => '*'},
                :position       => 7

    end
  end
end
