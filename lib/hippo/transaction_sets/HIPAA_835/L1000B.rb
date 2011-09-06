module Hippo::TransactionSets
  module HIPAA_835

    class L1000B < Hippo::TransactionSets::Base
      loop_name 'L1000B'    #Payee Identification

      #Payee Identification
      segment Hippo::Segments::N1,
                :name           => 'Payee Identification',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 1400

      #Payee Address
      segment Hippo::Segments::N3,
                :name           => 'Payee Address',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1600

      #Payee City, State, ZIP Code
      segment Hippo::Segments::N4,
                :name           => 'Payee City, State, ZIP Code',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1700

      #Payee Additional Identification
      segment Hippo::Segments::REF,
                :name           => 'Payee Additional Identification',
                :minimum        => 0,
                :maximum        => nil,
                :position       => 1800

      #Remittance Delivery Method
      segment Hippo::Segments::RDM,
                :name           => 'Remittance Delivery Method',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2000

    end
  end
end
