module Hippo::TransactionSets
  module HIPAA_837

    class L2000A < Hippo::TransactionSets::Base
      loop_name 'L2000A'    #Billing Provider Hierarchical Level

      #Billing Provider Hierarchical Level
      segment Hippo::Segments::HL,
                :name           => 'Billing Provider Hierarchical Level',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 10,
                :defaults => {
                  'HL03' => '20',
                  'HL04' => '1'
                }

      #Billing Provider Specialty Information
      segment Hippo::Segments::PRV,
                :name           => 'Billing Provider Specialty Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 30,
                :defaults => {
                  'PRV01' => 'BI',
                  'PRV02' => 'PXC'
                }

      #Foreign Currency Information
      segment Hippo::Segments::CUR,
                :name           => 'Foreign Currency Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 100,
                :defaults => {
                  'CUR01' => '85'
                }

      #Billing Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2010AA,
                :name           => 'Billing Provider Name',
                :identified_by  => {'NM1.NM101' => '85'},
                :minimum        => 1,
                :maximum        => 1,
                :position       => 150

      #Pay-to Address Name
      loop    Hippo::TransactionSets::HIPAA_837::L2010AB,
                :name           => 'Pay-to Address Name',
                :identified_by  => {'NM1.NM101' => '87'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 150

      #Pay-To Plan Name
      loop    Hippo::TransactionSets::HIPAA_837::L2010AC,
                :name           => 'Pay-To Plan Name',
                :identified_by  => {'NM1.NM101' => 'PE'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 450

    end
  end
end
