module Hippo::TransactionSets
  module HIPAA_276

    class L2200B < Hippo::TransactionSets::Base
      loop_name 'L2200B'    #Information Receiver Trace

      segment Hippo::Segments::TRN,
                :position       => 4

      segment Hippo::Segments::STC,
                :position       => 5

    end
  end
end
