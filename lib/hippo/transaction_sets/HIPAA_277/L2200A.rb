module Hippo::TransactionSets
  module HIPAA_277

    class L2200A < Hippo::TransactionSets::Base
      loop_name 'L2200A'    #Transmission Receipt Control Identifier

      #Transmission Receipt Control Identifier
      segment Hippo::Segments::TRN,
                :name           => 'Transmission Receipt Control Identifier',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 900

      #Information Source Receipt Date
      segment Hippo::Segments::DTP,
                :name           => 'Information Source Receipt Date',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 1200

      #Information Source Process Date
      segment Hippo::Segments::DTP,
                :name           => 'Information Source Process Date',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 1205

    end
  end
end
