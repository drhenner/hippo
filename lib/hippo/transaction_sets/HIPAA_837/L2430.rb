module Hippo::TransactionSets
  module HIPAA_837

    class L2430 < Hippo::TransactionSets::Base
      loop_name 'L2430'    #Line Adjudication Information

      segment Hippo::Segments::SVD,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 107

      segment Hippo::Segments::CAS,
                :minimum        => 0,
                :maximum        => 5,
                :position       => 108

      segment Hippo::Segments::DTP,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 109

      segment Hippo::Segments::AMT,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 110

    end
  end
end
