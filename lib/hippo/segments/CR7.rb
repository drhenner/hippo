module Hippo::Segments
  class CR7 < Base

    segment_identifier  'CR7'

    field   :name     => 'DisciplineTypeCode',
            :datatype => :list,
            :list     => [ 'AI','MS','OT','PT','SN','ST']
            :required => true

    field   :name     => 'Number1',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 9,
            :required => true

    field   :name     => 'Number2',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 9,
            :required => true

  end
end
