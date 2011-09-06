module Hippo::TransactionSets
  module HIPAA_276

    class Base < Hippo::TransactionSets::Base

      #Transaction Set Header
      segment Hippo::Segments::ST,
                :name           => 'Transaction Set Header',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100,
                :defaults => {
                  'ST01' => '276'
                }

      #Beginning of Hierarchical Transaction
      segment Hippo::Segments::BHT,
                :name           => 'Beginning of Hierarchical Transaction',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 200,
                :defaults => {
                  'BHT01' => '0010',
                  'BHT02' => '13'
                }

      #Information Source Level
      loop    Hippo::TransactionSets::HIPAA_276::L2000A,
                :name           => 'Information Source Level',
                :identified_by  => {
                  'HL.HL03' => '20',
                  'HL.HL04' => '1'
                },
                :minimum        => 1,
                :maximum        => nil,
                :position       => 100

      #Information Receiver Level
      loop    Hippo::TransactionSets::HIPAA_276::L2000B,
                :name           => 'Information Receiver Level',
                :identified_by  => {
                  'HL.HL03' => '21',
                  'HL.HL04' => '1'
                },
                :minimum        => 1,
                :maximum        => nil,
                :position       => 100

      #Service Provider Level
      loop    Hippo::TransactionSets::HIPAA_276::L2000C,
                :name           => 'Service Provider Level',
                :identified_by  => {
                  'HL.HL03' => '19',
                  'HL.HL04' => '1'
                },
                :minimum        => 1,
                :maximum        => nil,
                :position       => 100

      #Subscriber Level
      loop    Hippo::TransactionSets::HIPAA_276::L2000D,
                :name           => 'Subscriber Level',
                :identified_by  => {
                  'HL.HL03' => '22'
                },
                :minimum        => 1,
                :maximum        => nil,
                :position       => 100

      #Dependent Level
      loop    Hippo::TransactionSets::HIPAA_276::L2000E,
                :name           => 'Dependent Level',
                :identified_by  => {
                  'HL.HL03' => '23'
                },
                :minimum        => 0,
                :maximum        => nil,
                :position       => 100

      #Transaction Set Trailer
      segment Hippo::Segments::SE,
                :name           => 'Transaction Set Trailer',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 1600

    end
  end
end
