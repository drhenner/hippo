module Hippo::TransactionSets
  module HIPAA_835

    class L2110 < Hippo::TransactionSets::Base
      loop_name 'L2110'    #Service Payment Information

      segment Hippo::Segments::SVC,
                :minimum        => 0,
                :maximum        => 999,
                :position       => 21

      segment Hippo::Segments::DTM,
                :minimum        => 0,
                :maximum        => 2,
                :position       => 22

      segment Hippo::Segments::CAS,
                :minimum        => 0,
                :maximum        => 99,
                :position       => 23

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 8,
                :position       => 24

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 10,
                :position       => 25

      segment Hippo::Segments::AMT,
                :minimum        => 0,
                :maximum        => 9,
                :position       => 26

      segment Hippo::Segments::QTY,
                :minimum        => 0,
                :maximum        => 6,
                :position       => 27

      segment Hippo::Segments::LQ,
                :minimum        => 0,
                :maximum        => 99,
                :position       => 28

    end
  end
end
