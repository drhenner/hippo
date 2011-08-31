module Hippo::TransactionSets
  module HIPAA_837

    class L1000A < Hippo::TransactionSets::Base
      loop_name 'L1000A'    #Submitter Name

      segment Hippo::Segments::NM1,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 2

      segment Hippo::Segments::PER,
                :minimum        => 1,
                :maximum        => 2,
                :position       => 3

    end
  end
end
