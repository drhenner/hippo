module Hippo::Segments
  class N2 < Hippo::Segments::Base

    segment_identifier 'N2'

    field :name                 => 'Name',
          :sequence             => 1,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 60,
          :required             => true,
          :data_element_number  => 93

    field :name                 => 'Name',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 60,
          :required             => false,
          :data_element_number  => 93

  end
end
