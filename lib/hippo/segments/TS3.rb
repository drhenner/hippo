module Hippo::Segments
  class TS3 < Base

    segment_identifier  'TS3'

    field   :name     => 'ReferenceIdentification',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => true

    field   :name     => 'FacilityCodeValue',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 2,
            :required => true

    field   :name     => 'Date',
            :datatype => :alpha_numeric,
            :minimum  => 8,
            :maximum  => 8,
            :required => true

    field   :name     => 'Quantity1',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
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

    field   :name     => 'MonetaryAmount16',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount17',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount18',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'Quantity2',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'MonetaryAmount19',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

  end
end
