module Hippo::TransactionSets
  module HIPAA_276

    class L2200C < Hippo::TransactionSets::Base
      loop_name 'L2200C'    #Provider Of Service Trace Identifier

      segment Hippo::Segments::TRN,
                :position       => 5

      segment Hippo::Segments::STC,
                :position       => 6

    end
  end
end
