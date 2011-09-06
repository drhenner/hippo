module Hippo::TransactionSets
  module HIPAA_837

    class L2310F < Hippo::TransactionSets::Base
      loop_name 'L2310F'    #Ambulance Drop-off Location

      #Ambulance Drop-off Location
      segment Hippo::Segments::NM1,
                :name           => 'Ambulance Drop-off Location',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2500,
                :defaults => {
                  'NM101' => '45',
                  'NM102' => '2'
                }

      #Ambulance Drop-off Location Address
      segment Hippo::Segments::N3,
                :name           => 'Ambulance Drop-off Location Address',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 2650

      #Ambulance Drop-off Location City, State, ZIP Code
      segment Hippo::Segments::N4,
                :name           => 'Ambulance Drop-off Location City, State, ZIP Code',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 2700

    end
  end
end
