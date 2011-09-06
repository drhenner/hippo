module Hippo::TransactionSets
  module HIPAA_277

    class L2220D < Hippo::TransactionSets::Base
      loop_name 'L2220D'    #Service Line Information

      #Service Line Information
      segment Hippo::Segments::SVC,
                :name           => 'Service Line Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1800

      #Service Line Level Status Information
      segment Hippo::Segments::STC,
                :name           => 'Service Line Level Status Information',
                :minimum        => 1,
                :maximum        => nil,
                :position       => 1900

      #Service Line Item Identification
      segment Hippo::Segments::REF,
                :name           => 'Service Line Item Identification',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 2000

      #Pharmacy Prescription Number
      segment Hippo::Segments::REF,
                :name           => 'Pharmacy Prescription Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2010

      #Service Line Date
      segment Hippo::Segments::DTP,
                :name           => 'Service Line Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2100

    end
  end
end
