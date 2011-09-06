module Hippo::TransactionSets
  module HIPAA_277

    class L2220E < Hippo::TransactionSets::Base
      loop_name 'L2220E'    #Service Line Information

      #Service Line Information
      segment Hippo::Segments::SVC,
                :name           => 'Service Line Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1800

      #Service Line Status Information
      segment Hippo::Segments::STC,
                :name           => 'Service Line Status Information',
                :minimum        => 1,
                :maximum        => nil,
                :position       => 1900

      #Service Line Item Identification
      segment Hippo::Segments::REF,
                :name           => 'Service Line Item Identification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2000

      #Service Line Date
      segment Hippo::Segments::DTP,
                :name           => 'Service Line Date',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 2100

    end
  end
end
