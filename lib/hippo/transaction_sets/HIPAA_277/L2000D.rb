module Hippo::TransactionSets
  module HIPAA_277

    class L2000D < Hippo::TransactionSets::Base
      loop_name 'L2000D'    #Patient Level

      #Patient Level
      segment Hippo::Segments::HL,
                :name           => 'Patient Level',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 100,
                :defaults => {
                  'HL03' => 'PT'
                }

      #Patient Name
      loop    Hippo::TransactionSets::HIPAA_277::L2100D,
                :name           => 'Patient Name',
                :identified_by  => {
                  'NM1.NM101' => 'QC',
                  'NM1.NM102' => '1'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500

      #Claim Status Tracking Number
      loop    Hippo::TransactionSets::HIPAA_277::L2200D,
                :name           => 'Claim Status Tracking Number',
                :identified_by  => {
                  'TRN.TRN01' => '2'
                },
                :minimum        => 1,
                :maximum        => nil,
                :position       => 900

    end
  end
end
