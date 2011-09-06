module Hippo::TransactionSets
  module HIPAA_277

    class L2100B < Hippo::TransactionSets::Base
      loop_name 'L2100B'    #Information Receiver Name

      #Information Receiver Name
      segment Hippo::Segments::NM1,
                :name           => 'Information Receiver Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500

    end
  end
end
