module Hippo::TransactionSets
  module HIPAA_837

    class L2440 < Hippo::TransactionSets::Base
      loop_name 'L2440'    #Form Identification Code

      segment Hippo::Segments::LQ,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 108

      segment Hippo::Segments::FRM,
                :minimum        => 1,
                :maximum        => 99,
                :position       => 109

    end
  end
end
