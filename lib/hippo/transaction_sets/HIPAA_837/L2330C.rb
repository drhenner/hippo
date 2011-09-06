module Hippo::TransactionSets
  module HIPAA_837

    class L2330C < Hippo::TransactionSets::Base
      loop_name 'L2330C'    #Other Payer Referring Provider

      #Other Payer Referring Provider
      segment Hippo::Segments::NM1,
                :name           => 'Other Payer Referring Provider',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3250

      #Other Payer Referring Provider Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Other Payer Referring Provider Secondary Identification',
                :minimum        => 1,
                :maximum        => 3,
                :position       => 3550

    end
  end
end
