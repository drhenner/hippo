module Hippo::TransactionSets
  module HIPAA_271

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

      segment Hippo::Segments::AAA,
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

      segment Hippo::Segments::MPI,
                :position       => 14

      #Subscriber Eligibility Or Benefit Information
      loop    Hippo::TransactionSets::HIPAA_837::L2110C,
                :identified_by  => {'CLM' => '*'},
                :position       => 15

    end
  end
end
