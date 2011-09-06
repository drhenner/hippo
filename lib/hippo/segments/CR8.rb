module Hippo::Segments
  class CR8 < Hippo::Segments::Base

    segment_identifier 'CR8'

    field :name                 => 'ImplantTypeCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1403

    field :name                 => 'ImplantStatusCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1404

    field :name                 => 'Date',
          :sequence             => 3,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => true,
          :data_element_number  => 373

    field :name                 => 'Date',
          :sequence             => 4,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => true,
          :data_element_number  => 373

    field :name                 => 'ReferenceIdentification',
          :sequence             => 5,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => true,
          :data_element_number  => 127

    field :name                 => 'ReferenceIdentification',
          :sequence             => 6,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => true,
          :data_element_number  => 127

    field :name                 => 'ReferenceIdentification',
          :sequence             => 7,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => true,
          :data_element_number  => 127

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 8,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1073

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 9,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1073

  end
end
