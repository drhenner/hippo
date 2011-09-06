module Hippo::TransactionSets
  module HIPAA_277

    class L2000E < Hippo::TransactionSets::Base
      loop_name 'L2000E'    #Dependent Level

      #Dependent Level
      segment Hippo::Segments::HL,
                :name           => 'Dependent Level',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 100

      #Dependent Name
      loop    Hippo::TransactionSets::HIPAA_277::L2100E,
                :name           => 'Dependent Name',
                :identified_by  => {
                  'NM1.NM101' => 'QC',
                  'NM1.NM102' => '1'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500

      #Claim Status Tracking Number
      loop    Hippo::TransactionSets::HIPAA_277::L2200E,
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
