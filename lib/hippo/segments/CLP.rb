module Hippo::Segments
  class CLP < Base

    segment_identifier  'CLP'

    field   :name     => 'ClaimSubmittersIdentifier',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 38,
            :required => true

    field   :name     => 'ClaimStatusCode',
            :datatype => :list,
            :list     => [ '1','2','3','4','5','6','7','8','9','I','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','AD','AP','CC','CL','CP','RA','RB','RC','RD','RO']
            :required => true

    field   :name     => 'MonetaryAmount1',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => true

    field   :name     => 'MonetaryAmount2',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => true

    field   :name     => 'MonetaryAmount3',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'ClaimFilingIndicatorCode',
            :datatype => :list,
            :list     => [ '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','31','32','33','AM','BL','CH','CI','CN','DS','FI','HM','LI','LM','MA','MB','MC','MH','OF','SA','TV','VA','WB','WC','WD','WE','ZZ']
            :required => false

    field   :name     => 'ReferenceIdentification',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => false

    field   :name     => 'FacilityCodeValue',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 2,
            :required => false

    field   :name     => 'ClaimFrequencyTypeCode',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 1,
            :required => false

    field   :name     => 'PatientStatusCode',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 2,
            :required => false

    field   :name     => 'DiagnosisRelatedGroup',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 4,
            :required => false

    field   :name     => 'Quantity',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'Percent',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 10,
            :required => false

    field   :name     => 'YesNoConditionOrResponseCode',
            :datatype => :list,
            :list     => [ 'N','U','W','Y']
            :required => false

  end
end
