module Hippo::TransactionSets
  module HIPAA_837

    class L2310E < Hippo::TransactionSets::Base
      loop_name 'L2310E'    #Ambulance Pick-up Location

      #Ambulance Pick-up Location
      segment Hippo::Segments::NM1,
                :name           => 'Ambulance Pick-up Location',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2500,
                :defaults => {
                  'NM101' => 'PW',
                  'NM102' => '2'
                }

      #Ambulance Pick-up Location Address
      segment Hippo::Segments::N3,
                :name           => 'Ambulance Pick-up Location Address',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 2650

      #Ambulance Pick-up Location City, State, ZIP Code
      segment Hippo::Segments::N4,
                :name           => 'Ambulance Pick-up Location City, State, ZIP Code',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 2700

    end
  end
end
