module Hippo::TransactionSets
  module HIPAA_835

    class Base < Hippo::TransactionSets::Base

      segment Hippo::Segments::BPR,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 0

      segment Hippo::Segments::TRN,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 1

      segment Hippo::Segments::CUR,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3

      segment Hippo::Segments::DTM,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4

      segment Hippo::Segments::PLB,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5

      #Payer Identification
      loop    Hippo::TransactionSets::HIPAA_837::L1000A,
                :identified_by  => {'N1.EntityIdentifierCode1' => 'PR'},
                :minimum        => 1,
                :maximum        => 1,
                :position       => 6

      #Payee Identfication
      loop    Hippo::TransactionSets::HIPAA_837::L1000B,
                :identified_by  => {'N1.EntityIdentifierCode1' => 'PE'},
                :minimum        => 1,
                :maximum        => 1,
                :position       => 7

      #Header Number
      loop    Hippo::TransactionSets::HIPAA_837::L2000,
                :identified_by  => {'CLM' => '*'},
                :minimum        => 1,
                :maximum        => 9999,
                :position       => 8

    end
  end
end
