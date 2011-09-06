module Hippo::Segments
  class IMM < Hippo::Segments::Base

    segment_identifier 'IMM'

    field :name                 => 'IndustryCode',
          :sequence             => 1,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 30,
          :required             => true,
          :data_element_number  => 1271

    field :name                 => 'DateTimePeriodFormatQualifier',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1250

    field :name                 => 'DateTimePeriod',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 1251

    field :name                 => 'ImmunizationStatusCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1254

    field :name                 => 'ReportTypeCode',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 755

    field :name                 => 'CodeListQualifierCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 1270

  end
end
