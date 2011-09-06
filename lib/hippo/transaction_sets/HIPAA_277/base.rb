module Hippo::TransactionSets
  module HIPAA_277

    class Base < Hippo::TransactionSets::Base

      #Transaction Set Header
      segment Hippo::Segments::ST,
                :name           => 'Transaction Set Header',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100

      #Beginning of Hierarchical Transaction
      segment Hippo::Segments::BHT,
                :name           => 'Beginning of Hierarchical Transaction',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 200

      #Information Source Level
      loop    Hippo::TransactionSets::HIPAA_277::L2000A,
                :name           => 'Information Source Level',
                :identified_by  => {
                  'HL.HL03' => '20',
                  'HL.HL04' => '1'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100

      #Information Receiver Level
      loop    Hippo::TransactionSets::HIPAA_277::L2000B,
                :name           => 'Information Receiver Level',
                :identified_by  => {
                  'HL.HL03' => '21'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100

      #Billing Provider of Service Level
      loop    Hippo::TransactionSets::HIPAA_277::L2000C,
                :name           => 'Billing Provider of Service Level',
                :identified_by  => {
                  'HL.HL03' => '19'
                },
                :minimum        => 0,
                :maximum        => nil,
                :position       => 100

      #Patient Level
      loop    Hippo::TransactionSets::HIPAA_277::L2000D,
                :name           => 'Patient Level',
                :identified_by  => {
                  'HL.HL03' => 'PT'
                },
                :minimum        => 0,
                :maximum        => nil,
                :position       => 100

      #Transaction Set Trailer
      segment Hippo::Segments::SE,
                :name           => 'Transaction Set Trailer',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 2700

    end
  end
end
