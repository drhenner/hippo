module Hippo::TransactionSets
  module HIPAA_271

    class L2100A < Hippo::TransactionSets::Base
      loop_name 'L2100A'    #Information Source Name

      segment Hippo::Segments::NM1,
                :position       => 2

      segment Hippo::Segments::PER,
                :position       => 3

      segment Hippo::Segments::AAA,
                :position       => 4

    end
  end
end
