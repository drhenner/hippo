module Hippo::Segments
  class INS < Base

    segment_identifier  'INS'

    field   :name     => 'YesNoConditionOrResponseCode',
            :datatype => :alpha_numeric,
            :required => true

    field   :name     => 'IndividualRelationshipCode',
            :datatype => :list,
            :list     => %w{01 19 34},
            :required => true
            
  end
end
