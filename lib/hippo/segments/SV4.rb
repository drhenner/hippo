module Hippo::Segments
  class SV4 < Base

    segment_identifier  'SV4'

    field   :name     => 'ReferenceIdentification1',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => true

    field   :name     => 'CompositeMedicalProcedureIdentifier',
            :datatype => :alpha_numeric,
            :minimum  => 0,
            :maximum  => inf,
            :required => false

    field   :name     => 'ReferenceIdentification2',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => false

    field   :name     => 'YesNoConditionOrResponseCode1',
            :datatype => :list,
            :list     => [ 'N','U','W','Y']
            :required => false

    field   :name     => 'DispenseAsWrittenCode',
            :datatype => :list,
            :list     => [ '0','1','2','3','4','5','6','7','8','9']
            :required => false

    field   :name     => 'LevelOfServiceCode',
            :datatype => :list,
            :list     => [ 'I','L','R','U','00','01','02','03','04','05','06','09','10','11','F1','F2','NBC']
            :required => false

    field   :name     => 'PrescriptionOriginCode',
            :datatype => :list,
            :list     => [ '0','1','2','3']
            :required => false

    field   :name     => 'Description',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 80,
            :required => false

    field   :name     => 'YesNoConditionOrResponseCode2',
            :datatype => :list,
            :list     => [ 'N','U','W','Y']
            :required => false

    field   :name     => 'YesNoConditionOrResponseCode3',
            :datatype => :list,
            :list     => [ 'N','U','W','Y']
            :required => false

    field   :name     => 'UnitDoseCode',
            :datatype => :list,
            :list     => [ '0','1','2','3','4','5','6','7','8','Z']
            :required => false

    field   :name     => 'BasisOfCostDeterminationCode',
            :datatype => :list,
            :list     => [ '0','1','2','3','4','5','6','7','8','9']
            :required => false

    field   :name     => 'BasisOfDaysSupplyDeterminationCode',
            :datatype => :list,
            :list     => [ '0','1','2','3']
            :required => false

    field   :name     => 'DosageFormCode',
            :datatype => :list,
            :list     => [ '01','02','03','04','05','06','07','10','11','12','13','14','15','16','20','21','22','23','24','25','30','31','32','33','34','40','41','42','43','50','51','52','53','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96','97','98','99']
            :required => false

    field   :name     => 'CopayStatusCode',
            :datatype => :list,
            :list     => [ '0','1','2','3']
            :required => false

    field   :name     => 'PatientLocationCode',
            :datatype => :list,
            :list     => [ 'A','B','C','D','E','F','G','H','L','M','O','P','R','S','T']
            :required => false

    field   :name     => 'LevelOfCareCode',
            :datatype => :list,
            :list     => [ '1','2','3','4','5','6','7','8']
            :required => false

    field   :name     => 'PriorAuthorizationTypeCode',
            :datatype => :list,
            :list     => [ '0','1','2','3','4','5','6','7']
            :required => false

  end
end
