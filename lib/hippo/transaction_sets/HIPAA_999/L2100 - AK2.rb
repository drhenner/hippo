module Hippo::TransactionSets
  module HIPAA_999

    class L2100 - AK2 < Hippo::TransactionSets::Base
      loop_name 'L2100 - AK2'    #Error Identification

      #Error Identification
      segment Hippo::Segments::IK3,
                :name           => 'Error Identification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 400

      #Segment Context
      segment Hippo::Segments::CTX,
                :name           => 'Segment Context',
                :minimum        => 0,
                :maximum        => 9,
                :position       => 500

      #Business Unit Identifier
      segment Hippo::Segments::CTX,
                :name           => 'Business Unit Identifier',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 510

      #Implementation Data Element Note
      loop    Hippo::TransactionSets::HIPAA_837::L2110 - AK2,
                :name           => 'Implementation Data Element Note',
                :minimum        => 0,
                :maximum        => nil,
                :position       => 600

    end
  end
end
