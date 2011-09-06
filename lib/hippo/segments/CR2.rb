module Hippo::Segments
  class CR2 < Hippo::Segments::Base

    segment_identifier 'CR2'

    field :name                 => 'Count'
          :sequence             => 01,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 9,
          :required             => false,
          :data_element_number  => 609

    field :name                 => 'Quantity'
          :sequence             => 02,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'SubluxationLevelCode'
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1367

    field :name                 => 'SubluxationLevelCode'
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1367

    field :name                 => 'UnitOrBasisForMeasurementCode'
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 355

    field :name                 => 'Quantity'
          :sequence             => 06,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'Quantity'
          :sequence             => 07,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'NatureOfConditionCode'
          :sequence             => 08,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1342

    field :name                 => 'YesNoConditionOrResponseCode'
          :sequence             => 09,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'Description'
          :sequence             => 10,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

    field :name                 => 'Description'
          :sequence             => 11,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

    field :name                 => 'YesNoConditionOrResponseCode'
          :sequence             => 12,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

  end
end
