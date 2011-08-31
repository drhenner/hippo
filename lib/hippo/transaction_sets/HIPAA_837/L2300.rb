module Hippo::TransactionSets
  module HIPAA_837

    class L2300 < Hippo::TransactionSets::Base
      loop_name 'L2300'    #Claim Information

      segment Hippo::Segments::CLM,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 8


      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 10

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 11

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 12

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 13

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 14

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 15

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 16

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 17

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 18

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 19

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 20

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 21

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 22

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 2,
                :position       => 23

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 24

      segment Hippo::Segments::DTP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 25

      segment Hippo::Segments::PWK,
                :minimum        => 0,
                :maximum        => 10,
                :position       => 26

      segment Hippo::Segments::CN1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 27

      segment Hippo::Segments::AMT,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 28

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 29

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 30

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 31

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 32

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 33

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 34

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 35

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 36

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 37

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 38

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 39

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 40

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 41

      segment Hippo::Segments::REF,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 42

      segment Hippo::Segments::K3,
                :minimum        => 0,
                :maximum        => 10,
                :position       => 43

      segment Hippo::Segments::NTE,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 44

      segment Hippo::Segments::CR1,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 45

      segment Hippo::Segments::CR2,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 46

      segment Hippo::Segments::CRC,
                :minimum        => 0,
                :maximum        => 3,
                :position       => 47

      segment Hippo::Segments::CRC,
                :minimum        => 0,
                :maximum        => 3,
                :position       => 48

      segment Hippo::Segments::CRC,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 49

      segment Hippo::Segments::CRC,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 50

      segment Hippo::Segments::HI,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 51

      segment Hippo::Segments::HI,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 52

      segment Hippo::Segments::HI,
                :minimum        => 0,
                :maximum        => 2,
                :position       => 53

      segment Hippo::Segments::HCP,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 54


      segment Hippo::Segments::QTY,
                :minimum        => 0,
                :maximum        => 4,
                :position       => 60

      #Home Health Care Plan Information
      loop    Hippo::TransactionSets::HIPAA_837::L2305,
                :identified_by  => {'CLM' => '*'},
                :minimum        => 0,
                :maximum        => 6,
                :position       => 61

      #Referring Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2310A,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'DN'},
                :minimum        => 0,
                :maximum        => 2,
                :position       => 62

      #Rendering Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2310B,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '82'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 63

      #Service Facility Location
      loop    Hippo::TransactionSets::HIPAA_837::L2310C,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '77'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 64

      #Supervising Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2310D,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'DQ'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 65

      #Ambulance Pick-up Location
      loop    Hippo::TransactionSets::HIPAA_837::L2310E,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'DQ'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 66

      #Ambulance Drop-off Location
      loop    Hippo::TransactionSets::HIPAA_837::L2310F,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'DQ'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 67

      #Other Subscriber Information
      loop    Hippo::TransactionSets::HIPAA_837::L2320,
                :identified_by  => {'CLM' => '*'},
                :minimum        => 0,
                :maximum        => 10,
                :position       => 68

      #Other Payer Supervising Provider
      loop    Hippo::TransactionSets::HIPAA_837::L2330F,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'DQ'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 69

      #Other Payer Billing Provider
      loop    Hippo::TransactionSets::HIPAA_837::L2330G,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'DQ'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 70


      #Attending Physician Name
      loop    Hippo::TransactionSets::HIPAA_837::L2310A,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '71'},
                :minimum        => 0,
                :maximum        => 2,
                :position       => 72

      #Operating Physician Name
      loop    Hippo::TransactionSets::HIPAA_837::L2310B,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '72'},
                :minimum        => 0,
                :maximum        => 2,
                :position       => 73

      #Other Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2310C,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '73'},
                :minimum        => 0,
                :maximum        => 2,
                :position       => 74


      #Service Line Number
      loop    Hippo::TransactionSets::HIPAA_837::L2400,
                :identified_by  => {'CLM' => '*'},
                :minimum        => 1,
                :maximum        => 50,
                :position       => 76

    end
  end
end
