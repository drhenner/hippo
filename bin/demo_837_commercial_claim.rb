#!/usr/bin/env ruby

=begin
This example file is based on the Commercial Health Insurance example (3.1.1) published in the 5010X222A1 TR3.

Patient is a different person than the Subscriber. Payer is commercial health insurance company.

SUBSCRIBER: Jane Smith
PATIENT ADDRESS:236 N. Main St., Miami, Fl, 33413
TELEPHONE NUMBER: 305-555-1111
SEX: F
DOB: 05/01/43
EMPLOYER: ACME Inc.
GROUP #: 2222-SJ
KEY INSURANCE COMPANY ID #: JS00111223333

PATIENT: Ted Smith
PATIENT ADDRESS:236 N. Main St., Miami, Fl, 33413
TELEPHONE NUMBER: 305-555-1111
SEX: M
DOB: 05/01/73
KEY INSURANCE COMPANY ID #: JS01111223333

DESTINATION PAYER: Key Insurance Company
PAYER ADDRESS: 3333 Ocean St. South Miami, FL 33000
PAYER ID: 999996666

SUBMITTER: Premier Billing Service
EDI#: TGJ23
CONTACT PERSON AND PHONE NUMBER: JERRY, 305-555-2222 ext. 231

RECEIVER: Key Insurance Company
EDI #:66783JJT

BILLING PROVIDER: Dr. Ben Kildare,
ADDRESS: 234 Seaway St, Miami, FL, 33111
NPI: 9876543210
TIN: 587654321
KEY INSURANCE COMPANY PROVIDER ID #: KA6663
Taxonomy Code: 203BF0100Y

PAY-TO PROVIDER: Kildare Associates,
PROVIDER ADDRESS: 2345 Ocean Blvd, Miami, Fl 33111
RENDERING PROVIDER: Dr. Ben Kildare 

PATIENT ACCOUNT NUMBER: 2-646-3774
CASE: Patient has sore throat.

INITIAL VISIT: DOS=10/03/06. POS=Office
SERVICES: Office visit, intermediate service, established patient, throat culture.
CHARGES: Office first visit = $40.00, Lab test for strep = $15.00

FOLLOW-UP VISIT: DOS=10/10/06 POS=Office
Antibiotics didn’t work (pain continues).
SERVICES: Office visit, intermediate service, established patient, mono screening.
CHARGES: Follow-up visit = $35.00, lab test for mono = $10.00.

TOTAL CHARGES: $100.00.
ELECTRONIC ROUTE: Billing provider (sender), to VAN to Key Insurance Company (receiver).
VAN claim identification number = 17312345600006351.
=end

require './lib/hippo'

ts = Hippo::TransactionSets::HIPAA_837::Base.new

ts.ST do |st|
  st.TransactionSetControlNumber        = '0123'
  st.ImplementationConventionReference  = '005010X222A1'
end

ts.BHT do |bht|
  bht.TransactionSetPurposeCode = '00'
  bht.Date                      = Time.now.strftime('%Y%m%d')
  bht.Time                      = Time.now.strftime('%H%M')
  bht.TransactionTypeCode       = 'CH'
end

ts.L1000A do |l1000a|
  l1000a.NM1 do |nm1|
    nm1.NameLastOrOrganizationName = 'PREMIER BILLING SERVICE'
    nm1.IdentificationCode         = 'TGJ23'
  end

  l1000a.PER do |per|
    per.Name                          = 'JERRY'
    per.CommunicationNumberQualifier  = 'TE'
    per.CommunicationNumber           = '3055552222'
  end
end

ts.L1000B do |l1000b|
  l1000b.NM1 do |nm1|
    nm1.NameLastOrOrganizationName = 'KEY INSURANCE COMPANY'
    nm1.IdentificationCode         = '66783JJT'
  end
end

ts.L2000A do |l2000a|
  l2000a.PRV do |prv|
    prv.ReferenceIdentification    = '203BF0100Y'
  end

  l2000a.L2010AA do |l2010aa|

    l2010aa.NM1 do |nm1|
      nm1.EntityTypeQualifier           = '2'
      nm1.NameLastOrOrganizationName    = 'BEN KILDARE SERVICE'
      nm1.IdentificationCode            = '9876543210'
    end

    l2010aa.N3 do |n3|
      n3.AddressInformation             = '234 SEAWAY ST'
    end

    l2010aa.N4 do |n4|
      n4.CityName                       = 'MIAMI'
      n4.StateOrProvinceCode            = 'FL'
      n4.PostalCode                     = '33111'
    end

    l2010aa.REF do |ref|
      ref.ReferenceIdentificationQualifier = 'EI'
      ref.ReferenceIdentification          = '587654321'
    end
  end

  l2000a.L2010AB do |l2010ab|
    l2010ab.NM1 do |nm1|
      nm1.EntityTypeQualifier         = '2'
    end

    l2010ab.N3 do |n3|
      n3.AddressInformation             = '2345 OCEAN BLVD'
    end

    l2010ab.N4 do |n4|
      n4.CityName                       = 'MIAMI'
      n4.StateOrProvinceCode            = 'FL'
      n4.PostalCode                     = '33111'
    end
  end
end

ts.L2000B do |l2000b|
  l2000b.SBR do |sbr|
    sbr.PayerResponsibilitySequenceNumberCode = 'P'
    sbr.ReferenceIdentification               = '2222-SJ'
    sbr.ClaimFilingIndicatorCode              = 'CI'
  end

  l2000b.L2010BA do |l2010ba|
    l2010ba.NM1 do |nm1|
      nm1.EntityTypeQualifier         = '1'
      nm1.NameLastOrOrganizationName  = 'SMITH'
      nm1.NameFirst                   = 'JANE'
      nm1.IdentificationCodeQualifier = 'MI'
      nm1.IdentificationCode          = 'JS00111223333'
    end

    l2010ba.DMG do |dmg|
      dmg.DateTimePeriod              = '19430501'
      dmg.GenderCode                  = 'F'
    end
  end

  l2000b.L2010BB do |l2010bb|
    l2010bb.NM1 do |nm1|
      nm1.EntityTypeQualifier           = '2'
      nm1.NameLastOrOrganizationName    = 'KEY INSURANCE COMPANY'
      nm1.IdentificationCodeQualifier   = 'PI'
      nm1.IdentificationCode            = '999996666'
    end

    # second ref segment in L2010BB
    l2010bb.REF_02 do |ref|
      ref.ReferenceIdentificationQualifier = 'G2'
      ref.ReferenceIdentification          = 'KA6663'
    end
  end
end

ts.L2000C do |l2000c|
  l2000c.PAT do |pat|
    pat.IndividualRelationshipCode = '19'
  end

  l2000c.L2010CA do |l2010ca|
    l2010ca.NM1 do |nm1|
      nm1.NameLastOrOrganizationName  = 'SMITH'
      nm1.NameFirst                   = 'TED'
    end

    l2010ca.N3 do |n3|
      n3.AddressInformation             = '236 W MAIN ST'
    end

    l2010ca.N4 do |n4|
      n4.CityName                       = 'MIAMI'
      n4.StateOrProvinceCode            = 'FL'
      n4.PostalCode                     = '33413'
    end

    l2010ca.DMG do |dmg|
      dmg.DateTimePeriod  = '19730501'
      dmg.GenderCode      = 'M'
    end
  end

  l2000c.L2300 do |l2300|
    l2300.CLM do |clm|
      clm.ClaimSubmitterSIdentifier     = '26463774'
      clm.MonetaryAmount                = '100'
      clm.FacilityCodeValue             = '11'
      clm.FacilityCodeQualifier         = 'B'
      clm.ClaimFrequencyTypeCode        = '1'
      clm.YesNoConditionOrResponseCode  = 'Y'
      clm.ProviderAcceptAssignmentCode  = 'A'
      clm.YesNoConditionOrResponseCode  = 'Y'
      clm.ReleaseOfInformationCode      = 'I'
    end

    l2300.REF_11 do |ref| #('Claim Identifier For Transmission Intermediaries') do |ref|
      ref.ReferenceIdentification = '17312345600006351'
    end

    l2300.HI do |hi|
      hi.CodeListQualifierCode  = 'BK'
      hi.IndustryCode           = '0340'

      hi.CodeListQualifierCode  = 'BF'
      hi.IndustryCode           = 'V7389'
    end

    l2300.L2400.build do |l2400|
      l2400.SV1 do |sv1|
        sv1.ProductServiceIdQualifier     = 'HC'
        sv1.ProductServiceId              = '99213'
        sv1.MonetaryAmount                = '40'
        sv1.UnitOrBasisForMeasurementCode = 'UN'
        sv1.Quantity                      = '1'
        sv1.DiagnosisCodePointer          = 1
      end

      l2400.DTP('Date - Service Date') do |dtp|
        dtp.DateTimePeriod = '20061003'
      end
    end

    l2300.L2400.build do |l2400|
      l2400.SV1 do |sv1|
        sv1.ProductServiceIdQualifier     = 'HC'
        sv1.ProductServiceId              = '87070'
        sv1.MonetaryAmount                = '15'
        sv1.UnitOrBasisForMeasurementCode = 'UN'
        sv1.Quantity                      = '1'
        sv1.DiagnosisCodePointer          = 1
      end

      l2400.DTP('Date - Service Date') do |dtp|
        dtp.DateTimePeriod = '20061003'
      end
    end

    l2300.L2400.build do |l2400|
      l2400.SV1 do |sv1|
        sv1.ProductServiceIdQualifier     = 'HC'
        sv1.ProductServiceId              = '99214'
        sv1.MonetaryAmount                = '35'
        sv1.UnitOrBasisForMeasurementCode = 'UN'
        sv1.Quantity                      = '1'
        sv1.DiagnosisCodePointer          = 1
      end

      l2400.DTP('Date - Service Date') do |dtp|
        dtp.DateTimePeriod = '20061010'
      end
    end

    l2300.L2400.build do |l2400|
      l2400.SV1 do |sv1|
        sv1.ProductServiceIdQualifier     = 'HC'
        sv1.ProductServiceId              = '86663'
        sv1.MonetaryAmount                = '10'
        sv1.UnitOrBasisForMeasurementCode = 'UN'
        sv1.Quantity                      = '1'
        sv1.DiagnosisCodePointer          = 2
      end

      l2400.DTP('Date - Service Date') do |dtp|
        dtp.DateTimePeriod = '20061010'
      end
    end
  end
end

ts.SE do |se|
  se.TransactionSetControlNumber = ts.ST.TransactionSetControlNumber
end

puts ts.to_s

=begin
ST*837*0021*005010X222A1~
BHT*0019*00*244579*20061015*1023*CH~
NM1*41*2*PREMIER BILLING SERVICE*****46*TGJ23~
PER*IC*JERRY*TE*3055552222*EX*231~
NM1*40*2*KEY INSURANCE COMPANY*****46*66783JJT~
HL*1**20*1~
PRV*BI*PXC*203BF0100Y~
NM1*85*2*BEN KILDARE SERVICE*****XX*9876543210~
N3*234 SEAWAY ST~
N4*MIAMI*FL*33111~
REF*EI*587654321~
NM1*87*2~
N3*2345 OCEAN BLVD~
N4*MAIMI*FL*33111~
HL*2*1*22*1~
SBR*P**2222-SJ******CI~
NM1*IL*1*SMITH*JANE****MI*JS00111223333~
DMG*D8*19430501*F~
NM1*PR*2*KEY INSURANCE COMPANY*****PI*999996666~
REF*G2*KA6663~
HL*3*2*23*0~
PAT*19~
NM1*QC*1*SMITH*TED~
N3*236 N MAIN ST~
N4*MIAMI*FL*33413~
DMG*D8*19730501*M~
CLM*26463774*100***11:B:1*Y*A*Y*I~
REF*D9*17312345600006351~
HI*BK:0340*BF:V7389~
LX*1~
SV1*HC:99213*40*UN*1***1~
DTP*472*D8*20061003~
LX*2~
SV1*HC:87070*15*UN*1***1~
DTP*472*D8*20061003~
LX*3~
SV1*HC:99214*35*UN*1***2~
DTP*472*D8*20061010~
LX*4~
SV1*HC:86663*10*UN*1***2~
DTP*472*D8*20061010~
SE*42*0021~
=end


=begin
ST*837*0123*005010X222A1~
BHT*0019*00**20110908*2326*CH~
NM1*41**PREMIER BILLING SERVICE*****46*TGJ23~
PER*IC*JERRY*TE*3055552222~
NM1*40*2*KEY INSURANCE COMPANY*****46*66783JJT~
HL***20*1~
PRV*BI*PXC*203BF0100Y~
NM1*85*2*BEN KILDARE SERVICE*****XX*9876543210~
N3*234 SEAWAY ST~
N4*MIAMI*FL*33111~
REF*EI*587654321~
NM1*87*2~
N3*2345 OCEAN BLVD~
N4*MIAMI*FL*33111~
HL***22~
SBR*P*18*2222-SJ******CI~
NM1*IL*1*SMITH*JANE****MI*JS00111223333~
DMG*D8*19430501*F~
NM1*PR*2*KEY INSURANCE COMPANY*****PI*999996666~
REF*G2*KA6663~
HL***23*0~
PAT*19****D8**01**Y~
NM1*QC*1*SMITH*TED~
N3*236 Wf MAIN ST~
N4*MIAMI*FL*33413~
DMG*D8*19730501*M~
CLM**********P~
REF*4N
~HI~
SV1*HC:99213*40*UN*1***1**Y**Y*Y***0~
DTP*472**20061003~
SV1*HC:87070*15*UN*1***1**Y**Y*Y***0~
DTP*472**20061003~
SV1*HC:99214*35*UN*1***1**Y**Y*Y*UN**0~
DTP*472**20061010~
SV1*HC:86663*10*UN*1***2**Y**Y*Y***0~
DTP*472**20061010~
SE**0123~

* not printing LX segments for each service line
* HL parent/child references wrong
* HL total segments counts should only be counting direct children
* default field values should only be set for the fields that are required
=end
