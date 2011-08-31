module Hippo::TransactionSets
  module HIPAA_837

    class L2410 < Hippo::TransactionSets::Base
      loop_name 'L2410'    #Drug Identification


      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 100

    end
  end
end
