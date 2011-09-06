module Hippo::TransactionSets
  module HIPAA_837

    class L2300 < Hippo::TransactionSets::Base
      loop_name 'L2300'    #Claim Information

      #Claim Information
      segment Hippo::Segments::CLM,
                :name           => 'Claim Information',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 1300

      #Date - Onset of Current Illness or Symptom
      segment Hippo::Segments::DTP,
                :name           => 'Date - Onset of Current Illness or Symptom',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1350

      #Date - Initial Treatment Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Initial Treatment Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1370

      #Date - Last Seen Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Last Seen Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1390

      #Date - Acute Manifestation
      segment Hippo::Segments::DTP,
                :name           => 'Date - Acute Manifestation',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 13

      #Date - Accident
      segment Hippo::Segments::DTP,
                :name           => 'Date - Accident',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 13

      #Date - Last Menstrual Period
      segment Hippo::Segments::DTP,
                :name           => 'Date - Last Menstrual Period',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 13

      #Date - Last X-ray Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Last X-ray Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 13

      #Date - Hearing and Vision Prescription Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Hearing and Vision Prescription Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 13

      #Date - Disability Dates
      segment Hippo::Segments::DTP,
                :name           => 'Date - Disability Dates',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 13

      #Date - Last Worked
      segment Hippo::Segments::DTP,
                :name           => 'Date - Last Worked',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 13

      #Date - Authorized Return to Work
      segment Hippo::Segments::DTP,
                :name           => 'Date - Authorized Return to Work',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 13

      #Date - Admission
      segment Hippo::Segments::DTP,
                :name           => 'Date - Admission',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 13

      #Date - Discharge
      segment Hippo::Segments::DTP,
                :name           => 'Date - Discharge',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 13

      #Date - Assumed and Relinquished Care Dates
      segment Hippo::Segments::DTP,
                :name           => 'Date - Assumed and Relinquished Care Dates',
                :minimum        => 0,
                :maximum        => 2,
                :position       => 13

      #Date - Property and Casualty Date of First Contact
      segment Hippo::Segments::DTP,
                :name           => 'Date - Property and Casualty Date of First Contact',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 13

      #Date - Repricer Received Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Repricer Received Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 13

      #Claim Supplemental Information
      segment Hippo::Segments::PWK,
                :name           => 'Claim Supplemental Information',
                :minimum        => 0,
                :maximum        => 10,
                :position       => 1550

      #Contract Information
      segment Hippo::Segments::CN1,
                :name           => 'Contract Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1600

      #Patient Amount Paid
      segment Hippo::Segments::AMT,
                :name           => 'Patient Amount Paid',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1760

      #Service Authorization Exception Code
      segment Hippo::Segments::REF,
                :name           => 'Service Authorization Exception Code',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 17

      #Mandatory Medicare (Section 4081) Crossover Indicator
      segment Hippo::Segments::REF,
                :name           => 'Mandatory Medicare (Section 4081) Crossover Indicator',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 17

      #Mammography Certification Number
      segment Hippo::Segments::REF,
                :name           => 'Mammography Certification Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 17

      #Referral Number
      segment Hippo::Segments::REF,
                :name           => 'Referral Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 17

      #Prior Authorization
      segment Hippo::Segments::REF,
                :name           => 'Prior Authorization',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1800

      #Payer Claim Control Number
      segment Hippo::Segments::REF,
                :name           => 'Payer Claim Control Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1810

      #Clinical Laboratory Improvement Amendment (CLIA) Number
      segment Hippo::Segments::REF,
                :name           => 'Clinical Laboratory Improvement Amendment (CLIA) Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1820

      #Repriced Claim Number
      segment Hippo::Segments::REF,
                :name           => 'Repriced Claim Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1830

      #Adjusted Repriced Claim Number
      segment Hippo::Segments::REF,
                :name           => 'Adjusted Repriced Claim Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1840

      #Investigational Device Exemption Number
      segment Hippo::Segments::REF,
                :name           => 'Investigational Device Exemption Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1850

      #Claim Identifier For Transmission Intermediaries
      segment Hippo::Segments::REF,
                :name           => 'Claim Identifier For Transmission Intermediaries',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1860

      #Medical Record Number
      segment Hippo::Segments::REF,
                :name           => 'Medical Record Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1890

      #Demonstration Project Identifier
      segment Hippo::Segments::REF,
                :name           => 'Demonstration Project Identifier',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 18

      #Care Plan Oversight
      segment Hippo::Segments::REF,
                :name           => 'Care Plan Oversight',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 18

      #File Information
      segment Hippo::Segments::K3,
                :name           => 'File Information',
                :minimum        => 0,
                :maximum        => 10,
                :position       => 18

      #Claim Note
      segment Hippo::Segments::NTE,
                :name           => 'Claim Note',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1900

      #Ambulance Transport Information
      segment Hippo::Segments::CR1,
                :name           => 'Ambulance Transport Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 1950

      #Spinal Manipulation Service Information
      segment Hippo::Segments::CR2,
                :name           => 'Spinal Manipulation Service Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2000

      #Ambulance Certification
      segment Hippo::Segments::CRC,
                :name           => 'Ambulance Certification',
                :minimum        => 0,
                :maximum        => 3,
                :position       => 2200

      #Patient Condition Information: Vision
      segment Hippo::Segments::CRC,
                :name           => 'Patient Condition Information: Vision',
                :minimum        => 0,
                :maximum        => 3,
                :position       => 2210

      #Homebound Indicator
      segment Hippo::Segments::CRC,
                :name           => 'Homebound Indicator',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2220

      #EPSDT Referral
      segment Hippo::Segments::CRC,
                :name           => 'EPSDT Referral',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2230

      #Health Care Diagnosis Code
      segment Hippo::Segments::HI,
                :name           => 'Health Care Diagnosis Code',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 2310

      #Anesthesia Related Procedure
      segment Hippo::Segments::HI,
                :name           => 'Anesthesia Related Procedure',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2313

      #Condition Information
      segment Hippo::Segments::HI,
                :name           => 'Condition Information',
                :minimum        => 0,
                :maximum        => 2,
                :position       => 2320

      #Claim Pricing/Repricing Information
      segment Hippo::Segments::HCP,
                :name           => 'Claim Pricing/Repricing Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2410

      #Referring Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2310A,
                :name           => 'Referring Provider Name',
                :identified_by  => {
                  'NM1.NM102' => '1',
                  'NM1.NM108' => 'XX'
                },
                :minimum        => 0,
                :maximum        => 2,
                :position       => 2500

      #Rendering Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2310B,
                :name           => 'Rendering Provider Name',
                :identified_by  => {
                  'NM1.NM101' => '82',
                  'NM1.NM108' => 'XX'
                },
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2500

      #Service Facility Location Name
      loop    Hippo::TransactionSets::HIPAA_837::L2310C,
                :name           => 'Service Facility Location Name',
                :identified_by  => {
                  'NM1.NM101' => '77',
                  'NM1.NM102' => '2',
                  'NM1.NM108' => 'XX'
                },
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2500

      #Supervising Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2310D,
                :name           => 'Supervising Provider Name',
                :identified_by  => {
                  'NM1.NM101' => 'DQ',
                  'NM1.NM102' => '1',
                  'NM1.NM108' => 'XX'
                },
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2500

      #Ambulance Pick-up Location
      loop    Hippo::TransactionSets::HIPAA_837::L2310E,
                :name           => 'Ambulance Pick-up Location',
                :identified_by  => {
                  'NM1.NM101' => 'PW',
                  'NM1.NM102' => '2'
                },
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2500

      #Ambulance Drop-off Location
      loop    Hippo::TransactionSets::HIPAA_837::L2310F,
                :name           => 'Ambulance Drop-off Location',
                :identified_by  => {
                  'NM1.NM101' => '45',
                  'NM1.NM102' => '2'
                },
                :minimum        => 0,
                :maximum        => 1,
                :position       => 2500

      #Other Subscriber Information
      loop    Hippo::TransactionSets::HIPAA_837::L2320,
                :name           => 'Other Subscriber Information',
                :minimum        => 0,
                :maximum        => 10,
                :position       => 2900

      #Service Line Number
      loop    Hippo::TransactionSets::HIPAA_837::L2400,
                :name           => 'Service Line Number',
                :minimum        => 1,
                :maximum        => 50,
                :position       => 3650

    end
  end
end
