module Hippo::TransactionSets
  module HIPAA_271

    class L2110C < Hippo::TransactionSets::Base
      loop_name 'L2110C'    #Subscriber Eligibility Or Benefit Information

      segment Hippo::Segments::EB,
                :position       => 15

      segment Hippo::Segments::HSD,
                :position       => 16

      segment Hippo::Segments::REF,
                :position       => 17

      segment Hippo::Segments::DTP,
                :position       => 18

      segment Hippo::Segments::AAA,
                :position       => 19

      segment Hippo::Segments::MSG,
                :position       => 20

      #Subscriber Eligibility Or Benefit Additional Information
      loop    Hippo::TransactionSets::HIPAA_837::L2115C,
                :identified_by  => {'CLM' => '*'},
                :position       => 21

      #Loop
      loop    Hippo::TransactionSets::HIPAA_837::LLS,
                :identified_by  => {'CLM' => '*'},
                :position       => 22

    end
  end
end
