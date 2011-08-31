module Hippo::Segments
  class FRM < Base

    segment_identifier  'FRM'

    field   :name     => 'AssignedIdentification',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 20,
            :required => true

    field   :name     => 'YesNoConditionOrResponseCode',
            :datatype => :list,
            :list     => [ 'N','U','W','Y'],
            :required => false

    field   :name     => 'ReferenceIdentification',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => false

    field   :name     => 'Date',
            :datatype => :alpha_numeric,
            :minimum  => 8,
            :maximum  => 8,
            :required => false

    field   :name     => 'Percent',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 6,
            :required => false

  end
end
