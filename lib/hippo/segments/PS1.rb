module Hippo::Segments
  class PS1 < Base

    segment_identifier  'PS1'

    field   :name     => 'ReferenceIdentification',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => true

    field   :name     => 'MonetaryAmount',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => true

    field   :name     => 'StateOrProvinceCode',
            :datatype => :alpha_numeric,
            :minimum  => 2,
            :maximum  => 2,
            :required => false

  end
end
