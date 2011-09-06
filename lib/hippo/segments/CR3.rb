module Hippo::Segments
  class CR3 < Hippo::Segments::Base

    segment_identifier 'CR3'

    field :name                 => 'CertificationTypeCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1322

    field :name                 => 'UnitOrBasisForMeasurementCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 355

    field :name                 => 'Quantity',
          :sequence             => 3,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'InsulinDependentCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1335

    field :name                 => 'Description',
          :sequence             => 5,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

  end
end
