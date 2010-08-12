module Hippo::Segments
  class IEA < Base

    segment_identifier  'IEA'

    field   :name     => 'NumberOfIncludedFunctionalGroups',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 5,
            :required => false

    field   :name     => 'InterchangeControlNumber',
            :datatype => :alpha_numeric,
            :minimum  => 9,
            :maximum  => 9,
            :required => false

  end
end
