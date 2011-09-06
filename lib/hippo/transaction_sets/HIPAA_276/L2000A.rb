module Hippo::TransactionSets
  module HIPAA_276

    class L2000A < Hippo::TransactionSets::Base
      loop_name 'L2000A'    #Information Source Level

      #Information Source Level
      segment Hippo::Segments::HL,
                :name           => 'Information Source Level',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100

      #Payer Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100A,
                :name           => 'Payer Name',
                :identified_by  => {
                  'NM1.NM101' => 'PR',
                  'NM1.NM102' => '2'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500

    end
  end
end
