module Hippo::TransactionSets
  module HIPAA_837

    class L2000C < Hippo::TransactionSets::Base
      loop_name 'L2000C'    #Patient Hierarchical Level

      #Patient Hierarchical Level
      segment Hippo::Segments::HL,
                :name           => 'Patient Hierarchical Level',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 10,
                :defaults => {
                  'HL03' => '23',
                  'HL04' => '0'
                }

      #Patient Information
      segment Hippo::Segments::PAT,
                :name           => 'Patient Information',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 70,

      #Patient Name
      loop    Hippo::TransactionSets::HIPAA_837::L2010CA,
                :name           => 'Patient Name',
                :identified_by  => {'NM1.NM101' => 'QC'},
                :minimum        => 1,
                :maximum        => 1,
                :position       => 150

      #Claim Information
      loop    Hippo::TransactionSets::HIPAA_837::L2300,
                :name           => 'Claim Information',
                :minimum        => 1,
                :maximum        => 100,
                :position       => 1300

    end
  end
end
