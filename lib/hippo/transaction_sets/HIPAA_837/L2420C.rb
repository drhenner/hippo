module Hippo::TransactionSets
  module HIPAA_837

    class L2420C < Hippo::TransactionSets::Base
      loop_name 'L2420C'    #Service Facility Location Name

      #Service Facility Location Name
      segment Hippo::Segments::NM1,
                :name           => 'Service Facility Location Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5000

      #Service Facility Location Address
      segment Hippo::Segments::N3,
                :name           => 'Service Facility Location Address',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 5140

      #Service Facility Location City, State, ZIP Code
      segment Hippo::Segments::N4,
                :name           => 'Service Facility Location City, State, ZIP Code',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 5200

      #Service Facility Location Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Service Facility Location Secondary Identification',
                :minimum        => 0,
                :maximum        => 3,
                :position       => 5250

    end
  end
end
