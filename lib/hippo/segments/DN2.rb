module Hippo::Segments
  class DN2 < Hippo::Segments::Base

    segment_identifier 'DN2'

    field :name                 => 'ReferenceIdentification',
          :sequence             => 01,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => true,
          :data_element_number  => 127

    field :name                 => 'ToothStatusCode',
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1368

    field :name                 => 'Quantity',
          :sequence             => 03,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'DateTimePeriodFormatQualifier',
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1250

    field :name                 => 'DateTimePeriod',
          :sequence             => 05,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 1251

    field :name                 => 'CodeListQualifierCode',
          :sequence             => 06,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 1270

  end
end
