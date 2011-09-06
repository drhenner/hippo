module Hippo::TransactionSets
  module HIPAA_277

    class L2200C < Hippo::TransactionSets::Base
      loop_name 'L2200C'    #Provider of Service Information Trace Identifier

      #Provider of Service Information Trace Identifier
      segment Hippo::Segments::TRN,
                :name           => 'Provider of Service Information Trace Identifier',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 900

      #Billing Provider Status Information
      segment Hippo::Segments::STC,
                :name           => 'Billing Provider Status Information',
                :minimum        => 0,
                :maximum        => >1,
                :position       => 1000

      #Provider Secondary Identifier
      segment Hippo::Segments::REF,
                :name           => 'Provider Secondary Identifier',
                :minimum        => 0,
                :maximum        => 3,
                :position       => 1100

      #Total Accepted Quantity
      segment Hippo::Segments::QTY,
                :name           => 'Total Accepted Quantity',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1210

      #Total Rejected Quantity
      segment Hippo::Segments::QTY,
                :name           => 'Total Rejected Quantity',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1215

      #Total Accepted Amount
      segment Hippo::Segments::AMT,
                :name           => 'Total Accepted Amount',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1220

      #Total Rejected Amount
      segment Hippo::Segments::AMT,
                :name           => 'Total Rejected Amount',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1225

    end
  end
end
