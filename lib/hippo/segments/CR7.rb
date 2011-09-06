module Hippo::Segments
  class CR7 < Hippo::Segments::Base

    segment_identifier 'CR7'

    field :name                 => 'DisciplineTypeCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 921

    field :name                 => 'Number',
          :sequence             => 2,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 9,
          :required             => true,
          :data_element_number  => 1470

    field :name                 => 'Number',
          :sequence             => 3,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 9,
          :required             => true,
          :data_element_number  => 1470

  end
end
