module Hippo::TransactionSets
  module HIPAA_835

    class L2000 < Hippo::TransactionSets::Base
      loop_name 'L2000'    #Header Number

      segment Hippo::Segments::LX,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 8

      segment Hippo::Segments::TS3,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 9

      segment Hippo::Segments::TS2,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 10

      #Claim Payment Information
      loop    Hippo::TransactionSets::HIPAA_837::L2100,
                :identified_by  => {'CLM' => '*'},
                :position       => 11

    end
  end
end
