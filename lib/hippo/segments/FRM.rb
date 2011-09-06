module Hippo::Segments
  class FRM < Hippo::Segments::Base

    segment_identifier 'FRM'

    field :name                 => 'AssignedIdentification',
          :sequence             => 1,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 20,
          :required             => true,
          :data_element_number  => 350

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'ReferenceIdentification',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'Date',
          :sequence             => 4,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'PercentDecimalFormat',
          :sequence             => 5,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 6,
          :required             => false,
          :data_element_number  => 332

  end
end
