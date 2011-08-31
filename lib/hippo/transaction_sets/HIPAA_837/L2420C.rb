module Hippo::TransactionSets
  module HIPAA_837

    class L2420C < Hippo::TransactionSets::Base
      loop_name 'L2420C'    #Service Facility Location

      segment Hippo::Segments::NM1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 101

      segment Hippo::Segments::N3,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 102

      segment Hippo::Segments::N4,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 103

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 3,
                :position       => 104

    end
  end
end
