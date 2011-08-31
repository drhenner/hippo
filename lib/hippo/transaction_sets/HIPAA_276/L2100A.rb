module Hippo::TransactionSets
  module HIPAA_276

    class L2100A < Hippo::TransactionSets::Base
      loop_name 'L2100A'    #Payer Name

      segment Hippo::Segments::NM1,
                :position       => 2

    end
  end
end
