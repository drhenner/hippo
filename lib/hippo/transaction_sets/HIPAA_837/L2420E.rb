module Hippo::TransactionSets
  module HIPAA_837

    class L2420E < Hippo::TransactionSets::Base
      loop_name 'L2420E'    #Ordering Provider Name

      #Ordering Provider Name
      segment Hippo::Segments::NM1,
                :name           => 'Ordering Provider Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5000

      #Ordering Provider Address
      segment Hippo::Segments::N3,
                :name           => 'Ordering Provider Address',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5140

      #Ordering Provider City, State, ZIP Code
      segment Hippo::Segments::N4,
                :name           => 'Ordering Provider City, State, ZIP Code',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5200

      #Ordering Provider Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Ordering Provider Secondary Identification',
                :minimum        => 0,
                :maximum        => 20,
                :position       => 5250

      #Ordering Provider Contact Information
      segment Hippo::Segments::PER,
                :name           => 'Ordering Provider Contact Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5300

    end
  end
end
