module Hippo::TransactionSets
  module HIPAA_837

    class L2400 < Hippo::TransactionSets::Base
      loop_name 'L2400'    #Service Line Number

      segment Hippo::Segments::LX,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 76

      segment Hippo::Segments::SV1,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 77

      segment Hippo::Segments::PWK,
                :minimum        => 0,
                :maximum        => 11,
                :position       => 79

      segment Hippo::Segments::CR1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 80

      segment Hippo::Segments::CR3,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 81

      segment Hippo::Segments::CRC,
                :minimum        => 0,
                :maximum        => 5,
                :position       => 82

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 35,
                :position       => 83

      segment Hippo::Segments::MEA,
                :minimum        => 0,
                :maximum        => 5,
                :position       => 84

      segment Hippo::Segments::CN1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 85

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 19,
                :position       => 86

      segment Hippo::Segments::AMT,
                :minimum        => 0,
                :maximum        => 2,
                :position       => 87

      segment Hippo::Segments::K3,
                :minimum        => 0,
                :maximum        => 10,
                :position       => 88

      segment Hippo::Segments::NTE,
                :minimum        => 0,
                :maximum        => 2,
                :position       => 89

      segment Hippo::Segments::PS1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 90

      segment Hippo::Segments::HCP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 91


      segment Hippo::Segments::QTY,
                :minimum        => 0,
                :maximum        => 5,
                :position       => 94

      #Drug Identification
      loop    Hippo::TransactionSets::HIPAA_837::L2410,
                :identified_by  => {'CLM' => '*'},
                :minimum        => 0,
                :maximum        => 25,
                :position       => 98

      #Rendering Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2420A,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '82'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 99

      #Purchased Service Provider
      loop    Hippo::TransactionSets::HIPAA_837::L2420B,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'QB'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 100

      #Service Facility Location
      loop    Hippo::TransactionSets::HIPAA_837::L2420C,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '77'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 101

      #Supervising Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2420D,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'DQ'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 102

      #Ordering Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2420E,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'DK'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 103

      #Referring Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2420F,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'DN'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 104

      #Ambulance Pick-up Location
      loop    Hippo::TransactionSets::HIPAA_837::L2420G,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'PR'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 105

      #Ambulance Drop-off Location
      loop    Hippo::TransactionSets::HIPAA_837::L2420H,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'PR'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 106

      #Line Adjudication Information
      loop    Hippo::TransactionSets::HIPAA_837::L2430,
                :identified_by  => {'CLM' => '*'},
                :minimum        => 0,
                :maximum        => 25,
                :position       => 107

      #Form Identification Code
      loop    Hippo::TransactionSets::HIPAA_837::L2440,
                :identified_by  => {'CLM' => '*'},
                :minimum        => 0,
                :maximum        => 5,
                :position       => 108

    end
  end
end
