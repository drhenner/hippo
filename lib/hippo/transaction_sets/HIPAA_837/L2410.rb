module Hippo::TransactionSets
  module HIPAA_837

    class L2410 < Hippo::TransactionSets::Base
      loop_name 'L2410'    #Drug Identification

      #Drug Identification
      segment Hippo::Segments::LIN,
                :name           => 'Drug Identification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4940

      #Drug Quantity
      segment Hippo::Segments::CTP,
                :name           => 'Drug Quantity',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 4950

      #Prescription or Compound Drug Association Number
      segment Hippo::Segments::REF,
                :name           => 'Prescription or Compound Drug Association Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4960

    end
  end
end
