module Hippo::TransactionSets
  module HIPAA_837

    class L2010AB < Hippo::TransactionSets::Base
      loop_name 'L2010AB'    #Pay-to Address Name

      #Pay-to Address Name
      segment Hippo::Segments::NM1,
                :name           => 'Pay-to Address Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 150

      #Pay-to Address - ADDRESS
      segment Hippo::Segments::N3,
                :name           => 'Pay-to Address - ADDRESS',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 250

      #Pay-To Address City, State, ZIP Code
      segment Hippo::Segments::N4,
                :name           => 'Pay-To Address City, State, ZIP Code',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 300

    end
  end
end
