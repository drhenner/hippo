module Hippo::Segments
  class CR5 < Base

    segment_identifier  'CR5'

    field   :name     => 'CertificationTypeCode',
            :datatype => :list,
            :list     => [ '1','2','3','4','5','6','A','B','C','D','E','I','R','S']
            :required => false

    field   :name     => 'Quantity1',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'OxygenEquipmentTypeCode1',
            :datatype => :list,
            :list     => [ 'A','B','C','D','E','O']
            :required => false

    field   :name     => 'OxygenEquipmentTypeCode2',
            :datatype => :list,
            :list     => [ 'A','B','C','D','E','O']
            :required => false

    field   :name     => 'Description1',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 80,
            :required => false

    field   :name     => 'Quantity2',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'Quantity3',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'Quantity4',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'Description2',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 80,
            :required => false

    field   :name     => 'Quantity5',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'Quantity6',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'OxygenTestConditionCode',
            :datatype => :list,
            :list     => [ 'E','N','O','R','S','W','X']
            :required => false

    field   :name     => 'OxygenTestFindingsCode1',
            :datatype => :list,
            :list     => [ '1','2','3']
            :required => false

    field   :name     => 'OxygenTestFindingsCode2',
            :datatype => :list,
            :list     => [ '1','2','3']
            :required => false

    field   :name     => 'OxygenTestFindingsCode3',
            :datatype => :list,
            :list     => [ '1','2','3']
            :required => false

    field   :name     => 'Quantity7',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'OxygenDeliverySystemCode',
            :datatype => :list,
            :list     => [ 'A','B','C','D','E']
            :required => false

    field   :name     => 'OxygenEquipmentTypeCode3',
            :datatype => :list,
            :list     => [ 'A','B','C','D','E','O']
            :required => false

  end
end
