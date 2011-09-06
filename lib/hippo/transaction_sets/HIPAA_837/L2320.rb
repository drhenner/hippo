module Hippo::TransactionSets
  module HIPAA_837

    class L2320 < Hippo::TransactionSets::Base
      loop_name 'L2320'    #Other Subscriber Information

      #Other Subscriber Information
      segment Hippo::Segments::SBR,
                :name           => 'Other Subscriber Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2900

      #Claim Level Adjustments
      segment Hippo::Segments::CAS,
                :name           => 'Claim Level Adjustments',
                :minimum        => 0,
                :maximum        => 5,
                :position       => 2950

      #Coordination of Benefits (COB) Payer Paid Amount
      segment Hippo::Segments::AMT,
                :name           => 'Coordination of Benefits (COB) Payer Paid Amount',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3000

      #Coordination of Benefits (COB) Total Non-Covered Amount
      segment Hippo::Segments::AMT,
                :name           => 'Coordination of Benefits (COB) Total Non-Covered Amount',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3020

      #Remaining Patient Liability
      segment Hippo::Segments::AMT,
                :name           => 'Remaining Patient Liability',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3050

      #Other Insurance Coverage Information
      segment Hippo::Segments::OI,
                :name           => 'Other Insurance Coverage Information',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 3110

      #Outpatient Adjudication Information
      segment Hippo::Segments::MOA,
                :name           => 'Outpatient Adjudication Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3200

      #Other Subscriber Name
      loop    Hippo::TransactionSets::HIPAA_837::L2330A,
                :name           => 'Other Subscriber Name',
                :identified_by  => {
                  'NM1.NM101' => 'IL'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 3250

      #Other Payer Name
      loop    Hippo::TransactionSets::HIPAA_837::L2330B,
                :name           => 'Other Payer Name',
                :identified_by  => {
                  'NM1.NM101' => 'PR',
                  'NM1.NM102' => '2'
                },
                :minimum        => 1,
                :maximum        => 1,
                :position       => 3250

      #Other Payer Referring Provider
      loop    Hippo::TransactionSets::HIPAA_837::L2330C,
                :name           => 'Other Payer Referring Provider',
                :identified_by  => {
                  'NM1.NM102' => '1'
                },
                :minimum        => 0,
                :maximum        => 2,
                :position       => 3250

      #Other Payer Rendering Provider
      loop    Hippo::TransactionSets::HIPAA_837::L2330D,
                :name           => 'Other Payer Rendering Provider',
                :identified_by  => {
                  'NM1.NM101' => '82'
                },
                :minimum        => 0,
                :maximum        => 1,
                :position       => 3650

      #Other Payer Service Facility Location
      loop    Hippo::TransactionSets::HIPAA_837::L2330E,
                :name           => 'Other Payer Service Facility Location',
                :identified_by  => {
                  'NM1.NM101' => '77',
                  'NM1.NM102' => '2'
                },
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4650

      #Other Payer Supervising Provider
      loop    Hippo::TransactionSets::HIPAA_837::L2330F,
                :name           => 'Other Payer Supervising Provider',
                :identified_by  => {
                  'NM1.NM101' => 'DQ',
                  'NM1.NM102' => '1'
                },
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5650

      #Other Payer Billing Provider
      loop    Hippo::TransactionSets::HIPAA_837::L2330G,
                :name           => 'Other Payer Billing Provider',
                :identified_by  => {
                  'NM1.NM101' => '85'
                },
                :minimum        => 0,
                :maximum        => 1,
                :position       => 6350

    end
  end
end
