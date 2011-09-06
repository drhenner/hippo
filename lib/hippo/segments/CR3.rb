module Hippo::Segments
  class CR3 < Hippo::Segments::Base

    segment_identifier 'CR3'

    field :name                 => 'CertificationTypeCode'
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1322

    field :name                 => 'UnitOrBasisForMeasurementCode'
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 355

    field :name                 => 'Quantity'
          :sequence             => 03,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'InsulinDependentCode'
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1335

    field :name                 => 'Description'
          :sequence             => 05,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

  end
end
