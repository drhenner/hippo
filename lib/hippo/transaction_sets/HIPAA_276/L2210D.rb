module Hippo::TransactionSets
  module HIPAA_276

    class L2210D < Hippo::TransactionSets::Base
      loop_name 'L2210D'    #Service Level Information

      segment Hippo::Segments::SVC,
                :position       => 12

      segment Hippo::Segments::STC,
                :position       => 13

      segment Hippo::Segments::REF,
                :position       => 14

      segment Hippo::Segments::DTP,
                :position       => 15

    end
  end
end
