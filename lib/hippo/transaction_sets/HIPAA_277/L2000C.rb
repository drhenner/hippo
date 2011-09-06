module Hippo::TransactionSets
  module HIPAA_277

    class L2000C < Hippo::TransactionSets::Base
      loop_name 'L2000C'    #Billing Provider of Service Level

      #Billing Provider of Service Level
      segment Hippo::Segments::HL,
                :name           => 'Billing Provider of Service Level',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 100,
                :defaults => {
                  'HL03' => '19'
                }

      #Billing Provider Name
      loop    Hippo::TransactionSets::HIPAA_277::L2100C,
                :name           => 'Billing Provider Name',
                :identified_by  => {
                  'NM1.NM101' => '85'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500

      #Provider of Service Information Trace Identifier
      loop    Hippo::TransactionSets::HIPAA_277::L2200C,
                :name           => 'Provider of Service Information Trace Identifier',
                :identified_by  => {
                  'TRN.TRN01' => '1'
                },
                :minimum        => 0,
                :maximum        => 1,
                :position       => 900

    end
  end
end
