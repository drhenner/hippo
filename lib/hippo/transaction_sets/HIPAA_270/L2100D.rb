module Hippo::TransactionSets
  module HIPAA_270

    class L2100D < Hippo::TransactionSets::Base
      loop_name 'L2100D'    #Dependent Name

      segment Hippo::Segments::NM1,
                :position       => 5

      segment Hippo::Segments::REF,
                :position       => 6

      segment Hippo::Segments::N3,
                :position       => 7

      segment Hippo::Segments::N4,
                :position       => 8

      segment Hippo::Segments::PRV,
                :position       => 9

      segment Hippo::Segments::DMG,
                :position       => 10

      segment Hippo::Segments::INS,
                :position       => 11

      segment Hippo::Segments::HI,
                :position       => 12

      segment Hippo::Segments::DTP,
                :position       => 13

      #Dependent Eligibility Or Benefit Inquiry
      loop    Hippo::TransactionSets::HIPAA_837::L2110D,
                :identified_by  => {'CLM' => '*'},
                :position       => 14

    end
  end
end
