module Hippo::Segments
  class K3 < Base

    segment_identifier  'K3'

    field   :name     => 'FixedFormatInformation',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 80,
            :required => true

    field   :name     => 'RecordFormatCode',
            :datatype => :list,
            :list     => [ 'C','D','E','F','P','S'],
            :required => false

    field   :name     => 'CompositeUnitOfMeasure',
            :datatype => :alpha_numeric,
            :minimum  => 0,
            :maximum  => nil,
            :required => false

  end
end
