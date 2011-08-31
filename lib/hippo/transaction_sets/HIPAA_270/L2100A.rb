module Hippo::TransactionSets
  module HIPAA_270

    class L2100A < Hippo::TransactionSets::Base
      loop_name 'L2100A'    #Information Source Name

      segment Hippo::Segments::NM1,
                :position       => 1

    end
  end
end
