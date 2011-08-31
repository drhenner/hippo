module Hippo::Segments
  class CLM < Base

    segment_identifier  'CLM'

    field   :name     => 'ClaimSubmittersIdentifier',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 38,
            :required => true

    field   :name     => 'MonetaryAmount',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'ClaimFilingIndicatorCode',
            :datatype => :list,
            :list     => [ '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','31','32','33','AM','BL','CH','CI','CN','DS','FI','HM','LI','LM','MA','MB','MC','MH','OF','SA','TV','VA','WB','WC','WD','WE','ZZ'],
            :required => false

    field   :name     => 'NonInstitutionalClaimTypeCode',
            :datatype => :list,
            :list     => [ 'A','L','O','P','S','T','V','AA','AM','AN','CF','CH','CS','DA','DD','DM','DN','ER','HH','HS','IF','IL','LT','MD','MF','MH','MI','MO','MS','NM','NP','NS','OC','OP','OT','OX','PA','PD','PE','PF','PS','PT','RX','SC','SN','ST','TX'],
            :required => false

    field   :name     => 'HealthCareServiceLocationInformation',
            :datatype => :alpha_numeric,
            :minimum  => 0,
            :maximum  =>nil,
            :required => false

    field   :name     => 'YesNoConditionOrResponseCode1',
            :datatype => :list,
            :list     => [ 'N','U','W','Y'],
            :required => false

    field   :name     => 'ProviderAcceptAssignmentCode',
            :datatype => :list,
            :list     => [ 'A','B','C','P'],
            :required => false

    field   :name     => 'YesNoConditionOrResponseCode2',
            :datatype => :list,
            :list     => [ 'N','U','W','Y'],
            :required => false

    field   :name     => 'ReleaseOfInformationCode',
            :datatype => :list,
            :list     => [ 'A','I','M','N','O','Y'],
            :required => false

    field   :name     => 'PatientSignatureSourceCode',
            :datatype => :list,
            :list     => [ 'B','C','M','P','S'],
            :required => false

    field   :name     => 'RelatedCausesInformation',
            :datatype => :alpha_numeric,
            :minimum  => 0,
            :maximum  =>nil,
            :required => false

    field   :name     => 'SpecialProgramCode',
            :datatype => :list,
            :list     => [ '01','02','03','04','05','06','07','08','09','10'],
            :required => false

    field   :name     => 'YesNoConditionOrResponseCode3',
            :datatype => :list,
            :list     => [ 'N','U','W','Y'],
            :required => false

    field   :name     => 'LevelOfServiceCode',
            :datatype => :list,
            :list     => [ 'I','L','R','U','00','01','02','03','04','05','06','09','10','11','F1','F2','NBC'],
            :required => false

    field   :name     => 'YesNoConditionOrResponseCode4',
            :datatype => :list,
            :list     => [ 'N','U','W','Y'],
            :required => false

    field   :name     => 'ProviderAgreementCode',
            :datatype => :list,
            :list     => [ 'D','E','H','I','N','P','Y'],
            :required => false

    field   :name     => 'ClaimStatusCode',
            :datatype => :list,
            :list     => [ '1','2','3','4','5','6','7','8','9','I','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','AD','AP','CC','CL','CP','RA','RB','RC','RD','RO'],
            :required => false

    field   :name     => 'YesNoConditionOrResponseCode5',
            :datatype => :list,
            :list     => [ 'N','U','W','Y'],
            :required => false

    field   :name     => 'ClaimSubmissionReasonCode',
            :datatype => :list,
            :list     => [ '00','01','02','03','05','07','08','09','15','16','17','18','20','22','27','28','29','PB'],
            :required => false

    field   :name     => 'DelayReasonCode',
            :datatype => :list,
            :list     => [ '1','2','3','4','5','6','7','8','9','10','11','15','16','17'],
            :required => false

  end
end
