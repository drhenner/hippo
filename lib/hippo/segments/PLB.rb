module Hippo::Segments
  class PLB < Base

    segment_identifier  'PLB'

    field   :name     => 'ReferenceIdentification',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => true

    field   :name     => 'Date',
            :datatype => :alpha_numeric,
            :minimum  => 8,
            :maximum  => 8,
            :required => true

    field   :name     => 'AdjustmentIdentifier1',
            :datatype => :alpha_numeric,
            :minimum  => 0,
            :maximum  => inf,
            :required => true

    field   :name     => 'MonetaryAmount1',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => true

    field   :name     => 'AdjustmentIdentifier2',
            :datatype => :alpha_numeric,
            :minimum  => 0,
            :maximum  => inf,
            :required => false

    field   :name     => 'MonetaryAmount2',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'AdjustmentIdentifier3',
            :datatype => :alpha_numeric,
            :minimum  => 0,
            :maximum  => inf,
            :required => false

    field   :name     => 'MonetaryAmount3',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'AdjustmentIdentifier4',
            :datatype => :alpha_numeric,
            :minimum  => 0,
            :maximum  => inf,
            :required => false

    field   :name     => 'MonetaryAmount4',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'AdjustmentIdentifier5',
            :datatype => :alpha_numeric,
            :minimum  => 0,
            :maximum  => inf,
            :required => false

    field   :name     => 'MonetaryAmount5',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'AdjustmentIdentifier6',
            :datatype => :alpha_numeric,
            :minimum  => 0,
            :maximum  => inf,
            :required => false

    field   :name     => 'MonetaryAmount6',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

  end
end
