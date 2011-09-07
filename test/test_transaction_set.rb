module Hippo::TransactionSets
  module Test
    class Base < Hippo::TransactionSets::Base

      segment Hippo::Segments::ST,
                :name           => 'Transaction Set Header',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 50,
                :defaults => {
                  'ST01' => '837'
                }

      #Beginning of Hierarchical Transaction
      segment Hippo::Segments::BHT,
                :name           => 'Beginning of Hierarchical Transaction',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100,
                :defaults => {
                  'BHT01' => '0019'
                }

      #Submitter Name
      loop    Hippo::TransactionSets::HIPAA_837::L1000A,
                :name           => 'Submitter Name',
                :identified_by  => {
                  'NM1.NM101' => '41',
                  'NM1.NM108' => '46'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 200
      
    end
  end
end
