module Hippo::Segments
  class SVD < Base

    segment_identifier  'SVD'

    field   :name     => 'IdentificationCode',
            :datatype => :alpha_numeric,
            :minimum  => 2,
            :maximum  => 80,
            :required => true

    field   :name     => 'MonetaryAmount',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => true

    field   :name     => 'CompositeMedicalProcedureIdentifier',
            :datatype => :alpha_numeric,
            :minimum  => 0,
            :maximum  => nil,
            :required => false

    field   :name     => 'ProductServiceId',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 48,
            :required => false

    field   :name     => 'Quantity',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'AssignedNumber',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 6,
            :required => false

  end
end
