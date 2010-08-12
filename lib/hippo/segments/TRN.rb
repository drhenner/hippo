module Hippo::Segments
  class TRN < Base

    segment_identifier  'TRN'

    field   :name     => 'TraceTypeCode',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 2,
            :required => true

    field   :name     => 'ReferenceIdentification1',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => true

    field   :name     => 'OriginatingCompanyIdentifier',
            :datatype => :alpha_numeric,
            :minimum  => 10,
            :maximum  => 10,
            :required => false

    field   :name     => 'ReferenceIdentification2',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => false

  end
end
