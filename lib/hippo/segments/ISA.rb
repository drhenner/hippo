module Hippo::Segments
  class ISA < Base

    segment_identifier  'ISA'

    field   :name     => 'AuthorizationInformationQualifier',
            :datatype => :list,
            :list     => [ '00','01','02','03','04','05','06']
            :required => false

    field   :name     => 'AuthorizationInformation',
            :datatype => :alpha_numeric,
            :minimum  => 10,
            :maximum  => 10,
            :required => false

    field   :name     => 'SecurityInformationQualifier',
            :datatype => :list,
            :list     => [ '00','01']
            :required => false

    field   :name     => 'SecurityInformation',
            :datatype => :alpha_numeric,
            :minimum  => 10,
            :maximum  => 10,
            :required => false

    field   :name     => 'InterchangeIdQualifier1',
            :datatype => :list,
            :list     => [ '01','02','03','04','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','AM','NR','SN','ZZ']
            :required => false

    field   :name     => 'InterchangeSenderId',
            :datatype => :alpha_numeric,
            :minimum  => 15,
            :maximum  => 15,
            :required => false

    field   :name     => 'InterchangeIdQualifier2',
            :datatype => :alpha_numeric,
            :minimum  => 2,
            :maximum  => 2,
            :required => false

    field   :name     => 'InterchangeReceiverId',
            :datatype => :alpha_numeric,
            :minimum  => 15,
            :maximum  => 15,
            :required => false

    field   :name     => 'InterchangeDate',
            :datatype => :alpha_numeric,
            :minimum  => 6,
            :maximum  => 6,
            :required => false

    field   :name     => 'InterchangeTime',
            :datatype => :alpha_numeric,
            :minimum  => 4,
            :maximum  => 4,
            :required => false

    field   :name     => 'InterchangeControlStandardsIdentifier',
            :datatype => :list,
            :list     => [ 'U']
            :required => false

    field   :name     => 'InterchangeControlVersionNumber',
            :datatype => :list,
            :list     => [ '00200','00201','00204','00300','00301','00302','00303','00304','00305','00306','00307','00400','00401','00402']
            :required => false

    field   :name     => 'InterchangeControlNumber',
            :datatype => :alpha_numeric,
            :minimum  => 9,
            :maximum  => 9,
            :required => false

    field   :name     => 'AcknowledgmentRuested',
            :datatype => :list,
            :list     => [ '0','1']
            :required => false

    field   :name     => 'UsageIndicator',
            :datatype => :list,
            :list     => [ 'I','P','T']
            :required => false

    field   :name     => 'ComponentElementSeparator',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 1,
            :required => false

  end
end
