module Hippo::TransactionSets
  module HIPAA_276

    class L2200E < Hippo::TransactionSets::Base
      loop_name 'L2200E'    #Claim Status Tracking Number

      segment Hippo::Segments::TRN,
                :position       => 8

      segment Hippo::Segments::STC,
                :position       => 9

      segment Hippo::Segments::REF,
                :position       => 10

      segment Hippo::Segments::AMT,
                :position       => 11

      segment Hippo::Segments::DTP,
                :position       => 12

      #Service Line Information
      loop    Hippo::TransactionSets::HIPAA_837::L2210E,
                :identified_by  => {'CLM' => '*'},
                :position       => 13

    end
  end
end
