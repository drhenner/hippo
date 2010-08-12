module Hippo::Segments
  class SVC < Base

    segment_identifier  'SVC'

    field   :name     => 'CompositeMedicalProcedureIdentifier1',
            :datatype => :alpha_numeric,
            :minimum  => 0,
            :maximum  => inf,
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
            :required => false

    field   :name     => 'ProductServiceId',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 48,
            :required => false

    field   :name     => 'Quantity1',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'CompositeMedicalProcedureIdentifier2',
            :datatype => :alpha_numeric,
            :minimum  => 0,
            :maximum  => inf,
            :required => false

    field   :name     => 'Quantity2',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

  end
end
