module Hippo::TransactionSets
  module HIPAA_271

    class L2110D < Hippo::TransactionSets::Base
      loop_name 'L2110D'    #Dependent Eligibility Or Benefit Information

      segment Hippo::Segments::EB,
                :position       => 16

      segment Hippo::Segments::HSD,
                :position       => 17

      segment Hippo::Segments::REF,
                :position       => 18

      segment Hippo::Segments::DTP,
                :position       => 19

      segment Hippo::Segments::AAA,
                :position       => 20

      segment Hippo::Segments::MSG,
                :position       => 21

      #Dependent Eligibility Or Benefit Additional Information
      loop    Hippo::TransactionSets::HIPAA_837::L2115D,
                :identified_by  => {'CLM' => '*'},
                :position       => 22

      #Loop
      loop    Hippo::TransactionSets::HIPAA_837::LLS,
                :identified_by  => {'CLM' => '*'},
                :position       => 23

    end
  end
end
