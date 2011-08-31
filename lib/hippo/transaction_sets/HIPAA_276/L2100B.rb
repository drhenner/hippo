module Hippo::TransactionSets
  module HIPAA_276

    class L2100B < Hippo::TransactionSets::Base
      loop_name 'L2100B'    #Information Receiver Name

      segment Hippo::Segments::NM1,
                :position       => 3

    end
  end
end
