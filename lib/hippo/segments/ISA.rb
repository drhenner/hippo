module Hippo::Segments
  class ISA < Base

    segment_identifier  'ISA'
    segment_fixed_width

    field   :name     => 'AuthorizationInformationQualifier',
            :datatype => :list,
            :list     => [ '00','01','02','03','04','05','06'],
            :maximum  => 2,
            :required => false

    field   :name     => 'AuthorizationInformation',
            :datatype => :alpha_numeric,
            :maximum  => 10,
            :required => false

    field   :name     => 'SecurityInformationQualifier',
            :datatype => :list,
            :list     => [ '00','01'],
            :maximum  => 2,
            :required => false

    field   :name     => 'SecurityInformation',
            :datatype => :alpha_numeric,
            :maximum  => 10,
            :required => false

    field   :name     => 'InterchangeIdQualifier1',
            :datatype => :list,
            :list     => [ '01','02','03','04','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','AM','NR','SN','ZZ'],
            :maximum  => 2,
            :required => false

    field   :name     => 'InterchangeSenderId',
            :datatype => :alpha_numeric,
            :maximum  => 15,
            :required => false

    field   :name     => 'InterchangeIdQualifier2',
            :datatype => :alpha_numeric,
            :maximum  => 2,
            :required => false

    field   :name     => 'InterchangeReceiverId',
            :datatype => :alpha_numeric,
            :maximum  => 15,
            :required => false

    field   :name     => 'InterchangeDate',
            :datatype => :alpha_numeric,
            :maximum  => 6,
            :required => false

    field   :name     => 'InterchangeTime',
            :datatype => :alpha_numeric,
            :maximum  => 4,
            :required => false

    field   :name     => 'InterchangeControlStandardsIdentifier',
            :datatype => :list,
            :list     => [ 'U'],
            :maximum  => 1,
            :required => false

    field   :name     => 'InterchangeControlVersionNumber',
            :datatype => :list,
            :list     => [ '00200','00201','00204','00300','00301','00302','00303','00304','00305','00306','00307','00400','00401','00402'],
            :maximum  => 5,
            :required => false

    field   :name     => 'InterchangeControlNumber',
            :datatype => :alpha_numeric,
            :maximum  => 9,
            :required => false

    field   :name     => 'AcknowledgmentRequested',
            :datatype => :list,
            :list     => [ '0','1'],
            :maximum  => 1,
            :required => false

    field   :name     => 'UsageIndicator',
            :datatype => :list,
            :list     => [ 'I','P','T'],
            :maximum  => 1,
            :required => false

    field   :name     => 'ComponentElementSeparator',
            :datatype => :alpha_numeric,
            :maximum  => 1,
            :required => false

  end
end
