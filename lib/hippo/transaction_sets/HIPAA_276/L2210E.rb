module Hippo::TransactionSets
  module HIPAA_276

    class L2210E < Hippo::TransactionSets::Base
      loop_name 'L2210E'    #Service Line Information

      segment Hippo::Segments::SVC,
                :position       => 13

      segment Hippo::Segments::STC,
                :position       => 14

      segment Hippo::Segments::REF,
                :position       => 15

      segment Hippo::Segments::DTP,
                :position       => 16

    end
  end
end
