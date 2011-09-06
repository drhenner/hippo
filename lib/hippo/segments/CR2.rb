module Hippo::Segments
  class CR2 < Hippo::Segments::Base

    segment_identifier 'CR2'

    field :name                 => 'Count',
          :sequence             => 1,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 9,
          :required             => false,
          :data_element_number  => 609

    field :name                 => 'Quantity',
          :sequence             => 2,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'SubluxationLevelCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1367

    field :name                 => 'SubluxationLevelCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1367

    field :name                 => 'UnitOrBasisForMeasurementCode',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 355

    field :name                 => 'Quantity',
          :sequence             => 6,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'Quantity',
          :sequence             => 7,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'NatureOfConditionCode',
          :sequence             => 8,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1342

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 9,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'Description',
          :sequence             => 10,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

    field :name                 => 'Description',
          :sequence             => 11,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 12,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

  end
end
