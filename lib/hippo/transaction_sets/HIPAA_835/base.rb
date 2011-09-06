module Hippo::TransactionSets
  module HIPAA_835

    class Base < Hippo::TransactionSets::Base

      #Transaction Set Header
      segment Hippo::Segments::ST,
                :name           => 'Transaction Set Header',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100

      #Financial Information
      segment Hippo::Segments::BPR,
                :name           => 'Financial Information',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 200

      #Reassociation Trace Number
      segment Hippo::Segments::TRN,
                :name           => 'Reassociation Trace Number',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 400

      #Foreign Currency Information
      segment Hippo::Segments::CUR,
                :name           => 'Foreign Currency Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 500

      #Receiver Identification
      segment Hippo::Segments::REF,
                :name           => 'Receiver Identification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 590

      #Version Identification
      segment Hippo::Segments::REF,
                :name           => 'Version Identification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 600

      #Production Date
      segment Hippo::Segments::DTM,
                :name           => 'Production Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 700

      #Payer Identification
      loop    Hippo::TransactionSets::HIPAA_837::L1000A,
                :name           => 'Payer Identification',
                :identified_by  => {
                  'N1.N101' => 'PR',
                  'N1.N103' => 'XV'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 800

      #Payee Identification
      loop    Hippo::TransactionSets::HIPAA_837::L1000B,
                :name           => 'Payee Identification',
                :identified_by  => {
                  'N1.N101' => 'PE'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 1400

      #Header Number
      loop    Hippo::TransactionSets::HIPAA_837::L2000,
                :name           => 'Header Number',
                :minimum        => 0,
                :maximum        => nil,
                :position       => 30

      #Provider Adjustment
      segment Hippo::Segments::PLB,
                :name           => 'Provider Adjustment',
                :minimum        => 0,
                :maximum        => nil,
                :position       => 100

      #Transaction Set Trailer
      segment Hippo::Segments::SE,
                :name           => 'Transaction Set Trailer',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 200

    end
  end
end
