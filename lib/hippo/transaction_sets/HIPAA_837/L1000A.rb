module Hippo::TransactionSets
  module HIPAA_837

    class L1000A < Hippo::TransactionSets::Base
      loop_name 'L1000A'    #Submitter Name

      #Submitter Name
      segment Hippo::Segments::NM1,
                :name           => 'Submitter Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 200,
                :defaults => {
                  'NM101' => '41',
                  'NM108' => '46'
                }

      #Submitter EDI Contact Information
      segment Hippo::Segments::PER,
                :name           => 'Submitter EDI Contact Information',
                :minimum        => 1,
                :maximum        => 2,
                :position       => 450,
                :defaults => {
                  'PER01' => 'IC'
                }

    end
  end
end
