module Hippo::TransactionSets
  module HIPAA_837

    class L2420F < Hippo::TransactionSets::Base
      loop_name 'L2420F'    #Referring Provider Name

      #Referring Provider Name
      segment Hippo::Segments::NM1,
                :name           => 'Referring Provider Name',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5000,
                :defaults => {
                  'NM102' => '1',
                  'NM108' => 'XX'
                }

      #Referring Provider Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Referring Provider Secondary Identification',
                :minimum        => 0,
                :maximum        => 20,
                :position       => 5250,
                :defaults => {
                  'REF04' => '2U'
                }

    end
  end
end
