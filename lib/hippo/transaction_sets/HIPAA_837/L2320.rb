module Hippo::TransactionSets
  module HIPAA_837

    class L2320 < Hippo::TransactionSets::Base
      loop_name 'L2320'    #Other Subscriber Information

      segment Hippo::Segments::SBR,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 68

      segment Hippo::Segments::DMG,
                :position       => 69


      segment Hippo::Segments::CAS,
                :minimum        => 0,
                :maximum        => 5,
                :position       => 71

      segment Hippo::Segments::AMT,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 72

      segment Hippo::Segments::AMT,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 73

      segment Hippo::Segments::AMT,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 74

      segment Hippo::Segments::OI,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 75

      segment Hippo::Segments::MOA,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 76


      segment Hippo::Segments::MIA,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 78

      #Other Subscriber Name
      loop    Hippo::TransactionSets::HIPAA_837::L2330A,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'IL'},
                :minimum        => 1,
                :maximum        => 1,
                :position       => 79

      #Other Payer Name
      loop    Hippo::TransactionSets::HIPAA_837::L2330B,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'PR'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 80

      #Other Payer Referring Provider
      loop    Hippo::TransactionSets::HIPAA_837::L2330C,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'DN'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 81

      #Other Payer Rendering Provider
      loop    Hippo::TransactionSets::HIPAA_837::L2330D,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '82'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 82

      #Other Payer Service Facility Location
      loop    Hippo::TransactionSets::HIPAA_837::L2330E,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '77'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 83

    end
  end
end
