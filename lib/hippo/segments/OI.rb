module Hippo::Segments
  class OI < Base

    segment_identifier  'OI'

    field   :name     => 'ClaimFilingIndicatorCode',
            :datatype => :list,
            :list     => [ '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','31','32','33','AM','BL','CH','CI','CN','DS','FI','HM','LI','LM','MA','MB','MC','MH','OF','SA','TV','VA','WB','WC','WD','WE','ZZ'],
            :required => false

    field   :name     => 'ClaimSubmissionReasonCode',
            :datatype => :list,
            :list     => [ '00','01','02','03','05','07','08','09','15','16','17','18','20','22','27','28','29','PB'],
            :required => false

    field   :name     => 'YesNoConditionOrResponseCode',
            :datatype => :list,
            :list     => [ 'N','U','W','Y'],
            :required => false

    field   :name     => 'PatientSignatureSourceCode',
            :datatype => :list,
            :list     => [ 'B','C','M','P','S'],
            :required => false

    field   :name     => 'ProviderAgreementCode',
            :datatype => :list,
            :list     => [ 'D','E','H','I','N','P','Y'],
            :required => false

    field   :name     => 'ReleaseOfInformationCode',
            :datatype => :list,
            :list     => [ 'A','I','M','N','O','Y'],
            :required => false

  end
end
