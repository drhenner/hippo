module Hippo::TransactionSets
  module HIPAA_837

    class L2420H < Hippo::TransactionSets::Base
      loop_name 'L2420H'    #Ambulance Drop-off Location

      #Ambulance Drop-off Location
      segment Hippo::Segments::NM1,
                :name           => 'Ambulance Drop-off Location',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5380

      #Ambulance Drop-off Location Address
      segment Hippo::Segments::N3,
                :name           => 'Ambulance Drop-off Location Address',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 5410

      #Ambulance Drop-off Location City, State, ZIP Code
      segment Hippo::Segments::N4,
                :name           => 'Ambulance Drop-off Location City, State, ZIP Code',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 5420

    end
  end
end
