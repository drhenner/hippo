module Hippo::Segments
  class MIA < Base

    segment_identifier  'MIA'

    field   :name     => 'Quantity1',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => true

    field   :name     => 'MonetaryAmount1',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'Quantity2',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'MonetaryAmount2',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'ReferenceIdentification1',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => false

    field   :name     => 'MonetaryAmount3',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount4',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount5',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount6',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount7',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount8',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount9',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount10',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount11',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'Quantity3',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'MonetaryAmount12',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount13',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount14',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount15',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'ReferenceIdentification2',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => false

    field   :name     => 'ReferenceIdentification3',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => false

    field   :name     => 'ReferenceIdentification4',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => false

    field   :name     => 'ReferenceIdentification5',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => false

    field   :name     => 'MonetaryAmount16',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

  end
end
