module Hippo::Segments
  class DSB < Hippo::Segments::Base

    segment_identifier 'DSB'

    field :name                 => 'DisabilityTypeCode',
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1146

    field :name                 => 'Quantity',
          :sequence             => 02,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'OccupationCode',
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 4,
          :maximum              => 6,
          :required             => false,
          :data_element_number  => 1149

    field :name                 => 'WorkIntensityCode',
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1154

    field :name                 => 'ProductOptionCode',
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1161

    field :name                 => 'MonetaryAmount',
          :sequence             => 06,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 07,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'MedicalCodeValue',
          :sequence             => 08,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 1137

  end
end
