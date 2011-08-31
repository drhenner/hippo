module Hippo::TransactionSets
  module HIPAA_276

    class L2100C < Hippo::TransactionSets::Base
      loop_name 'L2100C'    #Provider Name

      segment Hippo::Segments::NM1,
                :position       => 4

    end
  end
end
