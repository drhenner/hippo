module Hippo::Segments
  class III < Base

    segment_identifier  'III'

    field   :name     => 'CodeListQualifierCode',
            :datatype => :list,
            :list     => %w{BF BK ZZ},
            :required => true

    field   :name     => 'IndustryCode',
            :datatype => :alpha_numeric,
            :required => true
            
  end
end
