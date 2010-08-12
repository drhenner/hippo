module Hippo::Segments
  class GE < Base

    segment_identifier  'GE'

    field   :name     => 'NumberOfTransactionSetsIncluded',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 6,
            :required => false

    field   :name     => 'GroupControlNumber',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 9,
            :required => false

  end
end
