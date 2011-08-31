module Hippo::TransactionSets
  module HIPAA_276

    class L2200D < Hippo::TransactionSets::Base
      loop_name 'L2200D'    #Claim Status Tracking Number

      segment Hippo::Segments::TRN,
                :position       => 7

      segment Hippo::Segments::STC,
                :position       => 8

      segment Hippo::Segments::REF,
                :position       => 9

      segment Hippo::Segments::AMT,
                :position       => 10

      segment Hippo::Segments::DTP,
                :position       => 11

      #Service Level Information
      loop    Hippo::TransactionSets::HIPAA_837::L2210D,
                :identified_by  => {'CLM' => '*'},
                :position       => 12

    end
  end
end
