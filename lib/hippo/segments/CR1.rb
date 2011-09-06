module Hippo::Segments
  class CR1 < Hippo::Segments::Base

    segment_identifier 'CR1'

    field :name                 => 'UnitOrBasisForMeasurementCode',
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 355

    field :name                 => 'Weight',
          :sequence             => 02,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 81

    field :name                 => 'AmbulanceTransportCode',
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1316

    field :name                 => 'AmbulanceTransportReasonCode',
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1317

    field :name                 => 'UnitOrBasisForMeasurementCode',
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 355

    field :name                 => 'Quantity',
          :sequence             => 06,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'AddressInformation',
          :sequence             => 07,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 55,
          :required             => false,
          :data_element_number  => 166

    field :name                 => 'AddressInformation',
          :sequence             => 08,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 55,
          :required             => false,
          :data_element_number  => 166

    field :name                 => 'Description',
          :sequence             => 09,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

    field :name                 => 'Description',
          :sequence             => 10,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

  end
end
