module Hippo::TransactionSets
  module HIPAA_835

    class L2110 < Hippo::TransactionSets::Base
      loop_name 'L2110'    #Service Payment Information

      #Service Payment Information
      segment Hippo::Segments::SVC,
                :name           => 'Service Payment Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 700

      #Service Date
      segment Hippo::Segments::DTM,
                :name           => 'Service Date',
                :minimum        => 0,
                :maximum        => 2,
                :position       => 800

      #Service Adjustment
      segment Hippo::Segments::CAS,
                :name           => 'Service Adjustment',
                :minimum        => 0,
                :maximum        => 99,
                :position       => 900

      #Service Identification
      segment Hippo::Segments::REF,
                :name           => 'Service Identification',
                :minimum        => 0,
                :maximum        => 8,
                :position       => 1000

      #Line Item Control Number
      segment Hippo::Segments::REF,
                :name           => 'Line Item Control Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1010,
                :defaults => {
                  'REF01' => '6R'
                }

      #Rendering Provider Information
      segment Hippo::Segments::REF,
                :name           => 'Rendering Provider Information',
                :minimum        => 0,
                :maximum        => 10,
                :position       => 1050

      #HealthCare Policy Identification
      segment Hippo::Segments::REF,
                :name           => 'HealthCare Policy Identification',
                :minimum        => 0,
                :maximum        => 5,
                :position       => 1060,
                :defaults => {
                  'REF01' => '0K'
                }

      #Service Supplemental Amount
      segment Hippo::Segments::AMT,
                :name           => 'Service Supplemental Amount',
                :minimum        => 0,
                :maximum        => 9,
                :position       => 1100

      #Service Supplemental Quantity
      segment Hippo::Segments::QTY,
                :name           => 'Service Supplemental Quantity',
                :minimum        => 0,
                :maximum        => 6,
                :position       => 1200

      #Health Care Remark Codes
      segment Hippo::Segments::LQ,
                :name           => 'Health Care Remark Codes',
                :minimum        => 0,
                :maximum        => 99,
                :position       => 1300

    end
  end
end
