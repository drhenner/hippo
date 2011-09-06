module Hippo::TransactionSets
  module HIPAA_837

    class L2330E < Hippo::TransactionSets::Base
      loop_name 'L2330E'    #Other Payer Service Facility Location

      #Other Payer Service Facility Location
      segment Hippo::Segments::NM1,
                :name           => 'Other Payer Service Facility Location',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4650

      #Other Payer Service Facility Location Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Other Payer Service Facility Location Secondary Identification',
                :minimum        => 1,
                :maximum        => 3,
                :position       => 5550

    end
  end
end
