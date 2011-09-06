module Hippo::TransactionSets
  module HIPAA_837

    class L2330G < Hippo::TransactionSets::Base
      loop_name 'L2330G'    #Other Payer Billing Provider

      #Other Payer Billing Provider
      segment Hippo::Segments::NM1,
                :name           => 'Other Payer Billing Provider',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 6350

      #Other Payer Billing Provider Secondary Identification
      segment Hippo::Segments::REF,
                :name           => 'Other Payer Billing Provider Secondary Identification',
                :minimum        => 1,
                :maximum        => 2,
                :position       => 6600

    end
  end
end
