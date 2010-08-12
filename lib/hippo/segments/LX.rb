module Hippo::Segments
  class LX < Base

    segment_identifier  'LX'

    field   :name     => 'AssignedNumber',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 6,
            :required => true

  end
end
