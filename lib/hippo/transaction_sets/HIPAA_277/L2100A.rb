module Hippo::TransactionSets
  module HIPAA_277

    class L2100A < Hippo::TransactionSets::Base
      loop_name 'L2100A'    #Information Source Name

      #Information Source Name
      segment Hippo::Segments::NM1,
                :name           => 'Information Source Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 500

    end
  end
end
