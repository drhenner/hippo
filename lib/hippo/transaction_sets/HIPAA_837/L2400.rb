module Hippo::TransactionSets
  module HIPAA_837

    class L2400 < Hippo::TransactionSets::Base
      loop_name 'L2400'    #Service Line Number

      #Service Line Number
      segment Hippo::Segments::LX,
                :name           => 'Service Line Number',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 3650

      #Professional Service
      segment Hippo::Segments::SV1,
                :name           => 'Professional Service',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 3700,

      #Durable Medical Equipment Service
      segment Hippo::Segments::SV5,
                :name           => 'Durable Medical Equipment Service',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4000,
                :defaults => {
                  'SV502' => 'DA'
                }

      #Line Supplemental Information
      segment Hippo::Segments::PWK,
                :name           => 'Line Supplemental Information',
                :minimum        => 0,
                :maximum        => 10,
                :position       => 4200,

      #Durable Medical Equipment Certificate of Medical Necessity Indicator
      segment Hippo::Segments::PWK,
                :name           => 'Durable Medical Equipment Certificate of Medical Necessity Indicator',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4220,
                :defaults => {
                  'PWK01' => 'CT'
                }

      #Ambulance Transport Information
      segment Hippo::Segments::CR1,
                :name           => 'Ambulance Transport Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4250,
                :defaults => {
                  'CR105' => 'DH'
                }

      #Durable Medical Equipment Certification
      segment Hippo::Segments::CR3,
                :name           => 'Durable Medical Equipment Certification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4350,
                :defaults => {
                  'CR302' => 'MO'
                }

      #Ambulance Certification
      segment Hippo::Segments::CRC,
                :name           => 'Ambulance Certification',
                :minimum        => 0,
                :maximum        => 3,
                :position       => 4500,
                :defaults => {
                  'CRC01' => '07'
                }

      #Hospice Employee Indicator
      segment Hippo::Segments::CRC,
                :name           => 'Hospice Employee Indicator',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4520,
                :defaults => {
                  'CRC01' => '70',
                  'CRC03' => '65'
                }

      #Condition Indicator/Durable Medical Equipment
      segment Hippo::Segments::CRC,
                :name           => 'Condition Indicator/Durable Medical Equipment',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4530,
                :defaults => {
                  'CRC01' => '09'
                }

      #Date - Service Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Service Date',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 4550,
                :defaults => {
                  'DTP01' => '472'
                }

      #Date - Prescription Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Prescription Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4555,
                :defaults => {
                  'DTP01' => '471',
                  'DTP02' => 'D8'
                }

      #DATE - Certification Revision/Recertification Date
      segment Hippo::Segments::DTP,
                :name           => 'DATE - Certification Revision/Recertification Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4560,
                :defaults => {
                  'DTP01' => '607',
                  'DTP02' => 'D8'
                }

      #Date - Begin Therapy Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Begin Therapy Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4580,
                :defaults => {
                  'DTP01' => '463',
                  'DTP02' => 'D8'
                }

      #Date - Last Certification Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Last Certification Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4590,
                :defaults => {
                  'DTP01' => '461',
                  'DTP02' => 'D8'
                }

      #Date - Last Seen Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Last Seen Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 45,
                :defaults => {
                  'DTP01' => '304',
                  'DTP02' => 'D8'
                }

      #Date - Test Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Test Date',
                :minimum        => 0,
                :maximum        => 2,
                :position       => 45,
                :defaults => {
                  'DTP02' => 'D8'
                }

      #Date - Shipped Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Shipped Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 45,
                :defaults => {
                  'DTP01' => '011',
                  'DTP02' => 'D8'
                }

      #Date - Last X-ray Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Last X-ray Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 45,
                :defaults => {
                  'DTP01' => '455',
                  'DTP02' => 'D8'
                }

      #Date - Initial Treatment Date
      segment Hippo::Segments::DTP,
                :name           => 'Date - Initial Treatment Date',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 45,
                :defaults => {
                  'DTP01' => '454',
                  'DTP02' => 'D8'
                }

      #Ambulance Patient Count
      segment Hippo::Segments::QTY,
                :name           => 'Ambulance Patient Count',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4600,
                :defaults => {
                  'QTY01' => 'PT'
                }

      #Obstetric Anesthesia Additional Units
      segment Hippo::Segments::QTY,
                :name           => 'Obstetric Anesthesia Additional Units',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4610,
                :defaults => {
                  'QTY01' => 'FL'
                }

      #Test Result
      segment Hippo::Segments::MEA,
                :name           => 'Test Result',
                :minimum        => 0,
                :maximum        => 5,
                :position       => 4620

      #Contract Information
      segment Hippo::Segments::CN1,
                :name           => 'Contract Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4650

      #Repriced Line Item Reference Number
      segment Hippo::Segments::REF,
                :name           => 'Repriced Line Item Reference Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4700,
                :defaults => {
                  'REF01' => '9B'
                }

      #Adjusted Repriced Line Item Reference Number
      segment Hippo::Segments::REF,
                :name           => 'Adjusted Repriced Line Item Reference Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4710,
                :defaults => {
                  'REF01' => '9D'
                }

      #Prior Authorization
      segment Hippo::Segments::REF,
                :name           => 'Prior Authorization',
                :minimum        => 0,
                :maximum        => 5,
                :position       => 4730,
                :defaults => {
                  'REF01' => 'G1'
                }

      #Line Item Control Number
      segment Hippo::Segments::REF,
                :name           => 'Line Item Control Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 47,
                :defaults => {
                  'REF01' => '6R'
                }

      #Mammography Certification Number
      segment Hippo::Segments::REF,
                :name           => 'Mammography Certification Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 47,
                :defaults => {
                  'REF01' => 'EW'
                }

      #Clinical Laboratory Improvement Amendment (CLIA) Number
      segment Hippo::Segments::REF,
                :name           => 'Clinical Laboratory Improvement Amendment (CLIA) Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 47,
                :defaults => {
                  'REF01' => 'X4'
                }

      #Referring Clinical Laboratory Improvement Amendment (CLIA) Facility Identification
      segment Hippo::Segments::REF,
                :name           => 'Referring Clinical Laboratory Improvement Amendment (CLIA) Facility Identification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 47,
                :defaults => {
                  'REF01' => 'F4'
                }

      #Immunization Batch Number
      segment Hippo::Segments::REF,
                :name           => 'Immunization Batch Number',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 47,
                :defaults => {
                  'REF01' => 'BT'
                }

      #Referral Number
      segment Hippo::Segments::REF,
                :name           => 'Referral Number',
                :minimum        => 0,
                :maximum        => 5,
                :position       => 47,
                :defaults => {
                  'REF01' => '9F'
                }

      #Sales Tax Amount
      segment Hippo::Segments::AMT,
                :name           => 'Sales Tax Amount',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4810,
                :defaults => {
                  'AMT01' => 'T'
                }

      #Postage Claimed Amount
      segment Hippo::Segments::AMT,
                :name           => 'Postage Claimed Amount',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4830,
                :defaults => {
                  'AMT01' => 'F4'
                }

      #File Information
      segment Hippo::Segments::K3,
                :name           => 'File Information',
                :minimum        => 0,
                :maximum        => 10,
                :position       => 4850

      #Line Note
      segment Hippo::Segments::NTE,
                :name           => 'Line Note',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4860

      #Third Party Organization Notes
      segment Hippo::Segments::NTE,
                :name           => 'Third Party Organization Notes',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4865,
                :defaults => {
                  'NTE01' => 'TPO'
                }

      #Purchased Service Information
      segment Hippo::Segments::PS1,
                :name           => 'Purchased Service Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4880

      #Line Pricing/Repricing Information
      segment Hippo::Segments::HCP,
                :name           => 'Line Pricing/Repricing Information',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4920

      #Drug Identification
      loop    Hippo::TransactionSets::HIPAA_837::L2410,
                :name           => 'Drug Identification',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 4940

      #Rendering Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2420A,
                :name           => 'Rendering Provider Name',
                :identified_by  => {'NM1.NM101' => '82'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5000

      #Purchased Service Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2420B,
                :name           => 'Purchased Service Provider Name',
                :identified_by  => {'NM1.NM101' => 'QB'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5000

      #Service Facility Location Name
      loop    Hippo::TransactionSets::HIPAA_837::L2420C,
                :name           => 'Service Facility Location Name',
                :identified_by  => {'NM1.NM101' => '77'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5000

      #Supervising Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2420D,
                :name           => 'Supervising Provider Name',
                :identified_by  => {'NM1.NM101' => 'DQ'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5000

      #Ordering Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2420E,
                :name           => 'Ordering Provider Name',
                :identified_by  => {'NM1.NM101' => 'DK'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5000

      #Referring Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2420F,
                :name           => 'Referring Provider Name',
                :minimum        => 0,
                :maximum        => 2,
                :position       => 5000

      #Ambulance Pick-up Location
      loop    Hippo::TransactionSets::HIPAA_837::L2420G,
                :name           => 'Ambulance Pick-up Location',
                :identified_by  => {'NM1.NM101' => 'PW'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5310

      #Ambulance Drop-off Location
      loop    Hippo::TransactionSets::HIPAA_837::L2420H,
                :name           => 'Ambulance Drop-off Location',
                :identified_by  => {'NM1.NM101' => '45'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5380

      #Line Adjudication Information
      loop    Hippo::TransactionSets::HIPAA_837::L2430,
                :name           => 'Line Adjudication Information',
                :minimum        => 0,
                :maximum        => 15,
                :position       => 5400

      #Form Identification Code
      loop    Hippo::TransactionSets::HIPAA_837::L2440,
                :name           => 'Form Identification Code',
                :minimum        => 0,
                :maximum        => nil,
                :position       => 5510

    end
  end
end
