module Hippo::Segments
  class HCP < Hippo::Segments::Base

    segment_identifier 'HCP'

    field :name                 => 'PricingMethodology',
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1473

    field :name                 => 'MonetaryAmount',
          :sequence             => 02,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'MonetaryAmount',
          :sequence             => 03,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'ReferenceIdentification',
          :sequence             => 04,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'Rate',
          :sequence             => 05,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 9,
          :required             => false,
          :data_element_number  => 118

    field :name                 => 'ReferenceIdentification',
          :sequence             => 06,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'MonetaryAmount',
          :sequence             => 07,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'ProductServiceId',
          :sequence             => 08,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 09,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 10,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'UnitOrBasisForMeasurementCode',
          :sequence             => 11,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 355

    field :name                 => 'Quantity',
          :sequence             => 12,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'RejectReasonCode',
          :sequence             => 13,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 901

    field :name                 => 'PolicyComplianceCode',
          :sequence             => 14,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1526

    field :name                 => 'ExceptionCode',
          :sequence             => 15,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1527

  end
end
