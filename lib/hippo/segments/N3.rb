module Hippo::Segments
  class N3 < Base

    segment_identifier  'N3'

    field   :name     => 'AddressInformation1',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 55,
            :required => true

    field   :name     => 'AddressInformation2',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 55,
            :required => false

  end
end
