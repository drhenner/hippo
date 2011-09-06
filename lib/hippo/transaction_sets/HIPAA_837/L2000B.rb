module Hippo::TransactionSets
  module HIPAA_837

    class L2000B < Hippo::TransactionSets::Base
      loop_name 'L2000B'    #Subscriber Hierarchical Level

      #Subscriber Hierarchical Level
      segment Hippo::Segments::HL,
                :name           => 'Subscriber Hierarchical Level',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 10,
                :defaults => {
                  'HL03' => '22'
                }

      #Subscriber Information
      segment Hippo::Segments::SBR,
                :name           => 'Subscriber Information',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 50,
                :defaults => {
                  'SBR02' => '18'
                }

      #Patient Information
      segment Hippo::Segments::PAT,
                :name           => 'Patient Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 70,
                :defaults => {
                  'PAT05' => 'D8',
                  'PAT07' => '01',
                  'PAT09' => 'Y'
                }

      #Subscriber Name
      loop    Hippo::TransactionSets::HIPAA_837::L2010BA,
                :name           => 'Subscriber Name',
                :identified_by  => {
                  'NM1.NM101' => 'IL'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 150

      #Payer Name
      loop    Hippo::TransactionSets::HIPAA_837::L2010BB,
                :name           => 'Payer Name',
                :identified_by  => {
                  'NM1.NM101' => 'PR',
                  'NM1.NM102' => '2'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 150

    end
  end
end
