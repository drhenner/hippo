module Hippo::TransactionSets
  module HIPAA_271

    class LLS < Hippo::TransactionSets::Base
      loop_name 'LLS'    #Loop

      segment Hippo::Segments::LS,
                :position       => 23

      segment Hippo::Segments::LE,
                :position       => 24

      #Dependent Benefit Related Entity Name
      loop    Hippo::TransactionSets::HIPAA_837::L2120D,
                :identified_by  => {'CLM' => '*'},
                :position       => 25

    end
  end
end
