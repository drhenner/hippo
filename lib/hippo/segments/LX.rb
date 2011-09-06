module Hippo::Segments
  class LX < Hippo::Segments::Base

    segment_identifier 'LX'

    field :name                 => 'AssignedNumber'
          :sequence             => 01,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 6,
          :required             => true,
          :data_element_number  => 554

  end
end
