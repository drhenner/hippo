module Hippo::TransactionSets
  module HIPAA_271

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

      segment Hippo::Segments::AAA,
                :position       => 9

      segment Hippo::Segments::PRV,
                :position       => 10

      segment Hippo::Segments::DMG,
                :position       => 11

      segment Hippo::Segments::INS,
                :position       => 12

      segment Hippo::Segments::HI,
                :position       => 13

      segment Hippo::Segments::DTP,
                :position       => 14

      segment Hippo::Segments::MPI,
                :position       => 15

      #Dependent Eligibility Or Benefit Information
      loop    Hippo::TransactionSets::HIPAA_837::L2110D,
                :identified_by  => {'CLM' => '*'},
                :position       => 16

    end
  end
end
