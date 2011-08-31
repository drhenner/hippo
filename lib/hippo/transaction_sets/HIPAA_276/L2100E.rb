module Hippo::TransactionSets
  module HIPAA_276

    class L2100E < Hippo::TransactionSets::Base
      loop_name 'L2100E'    #Dependent Name

      segment Hippo::Segments::NM1,
                :position       => 7

    end
  end
end
