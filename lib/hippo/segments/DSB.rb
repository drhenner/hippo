module Hippo::Segments
  class DSB < Hippo::Segments::Base

    segment_identifier 'DSB'

    field :name                 => 'DisabilityTypeCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1146

    field :name                 => 'Quantity',
          :sequence             => 2,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'OccupationCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 4,
          :maximum              => 6,
          :required             => false,
          :data_element_number  => 1149

    field :name                 => 'WorkIntensityCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1154

    field :name                 => 'ProductOptionCode',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1161

    field :name                 => 'MonetaryAmount',
          :sequence             => 6,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 7,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'MedicalCodeValue',
          :sequence             => 8,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 1137

  end
end
