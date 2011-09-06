module Hippo::TransactionSets
  module HIPAA_277

    class L2000B < Hippo::TransactionSets::Base
      loop_name 'L2000B'    #Information Receiver Level

      #Information Receiver Level
      segment Hippo::Segments::HL,
                :name           => 'Information Receiver Level',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100

      #Information Receiver Name
      loop    Hippo::TransactionSets::HIPAA_277::L2100B,
                :name           => 'Information Receiver Name',
                :identified_by  => {
                  'NM1.NM101' => '41',
                  'NM1.NM108' => '46'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500

      #Information Receiver Application Trace Identifier
      loop    Hippo::TransactionSets::HIPAA_277::L2200B,
                :name           => 'Information Receiver Application Trace Identifier',
                :identified_by  => {
                  'TRN.TRN01' => '2'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 900

    end
  end
end
