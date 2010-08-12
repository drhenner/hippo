module Hippo::Segments
  class SE < Base

    segment_identifier  'SE'

    field   :name     => 'NumberOfIncludedSegments',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 10,
            :required => false

    field   :name     => 'TransactionSetControlNumber',
            :datatype => :alpha_numeric,
            :minimum  => 4,
            :maximum  => 9,
            :required => false

  end
end
