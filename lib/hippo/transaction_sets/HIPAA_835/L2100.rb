module Hippo::TransactionSets
  module HIPAA_835

    class L2100 < Hippo::TransactionSets::Base
      loop_name 'L2100'    #Claim Payment Information

      segment Hippo::Segments::CLP,
                :minimum        => 1,
                :maximum        => 9999,
                :position       => 11

      segment Hippo::Segments::CAS,
                :minimum        => 0,
                :maximum        => 99,
                :position       => 12

      segment Hippo::Segments::NM1,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 13

      segment Hippo::Segments::MIA,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 14

      segment Hippo::Segments::MOA,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 15

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 5,
                :position       => 16

      segment Hippo::Segments::DTM,
                :minimum        => 0,
                :maximum        => 4,
                :position       => 17

      segment Hippo::Segments::PER,
                :minimum        => 0,
                :maximum        => 2,
                :position       => 18

      segment Hippo::Segments::AMT,
                :minimum        => 0,
                :maximum        => 13,
                :position       => 19

      segment Hippo::Segments::QTY,
                :minimum        => 0,
                :maximum        => 14,
                :position       => 20

      #Service Payment Information
      loop    Hippo::TransactionSets::HIPAA_837::L2110,
                :identified_by  => {'CLM' => '*'},
                :position       => 21

    end
  end
end
