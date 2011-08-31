module Hippo::TransactionSets
  module HIPAA_270

    class L2100C < Hippo::TransactionSets::Base
      loop_name 'L2100C'    #Subscriber Name

      segment Hippo::Segments::NM1,
                :position       => 4

      segment Hippo::Segments::REF,
                :position       => 5

      segment Hippo::Segments::N3,
                :position       => 6

      segment Hippo::Segments::N4,
                :position       => 7

      segment Hippo::Segments::PRV,
                :position       => 8

      segment Hippo::Segments::DMG,
                :position       => 9

      segment Hippo::Segments::INS,
                :position       => 10

      segment Hippo::Segments::HI,
                :position       => 11

      segment Hippo::Segments::DTP,
                :position       => 12

      #Subscriber Eligibility Or Benefit Inquiry
      loop    Hippo::TransactionSets::HIPAA_837::L2110C,
                :identified_by  => {'CLM' => '*'},
                :position       => 13

    end
  end
end
