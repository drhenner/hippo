module Hippo::TransactionSets
  module HIPAA_837

    class L2420A < Hippo::TransactionSets::Base
      loop_name 'L2420A'    #Rendering Provider Name

      #Rendering Provider Name
      segment Hippo::Segments::NM1,
                :name           => 'Rendering Provider Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5000

      #Rendering Provider Specialty Information
      segment Hippo::Segments::PRV,
                :name           => 'Rendering Provider Specialty Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5050

      #Rendering Provider Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Rendering Provider Secondary Identification',
                :minimum        => 0,
                :maximum        => 20,
                :position       => 5250

    end
  end
end
