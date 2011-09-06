module Hippo::Segments
  class IMM < Hippo::Segments::Base

    segment_identifier 'IMM'

    field :name                 => 'IndustryCode'
          :sequence             => 01,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 30,
          :required             => true,
          :data_element_number  => 1271

    field :name                 => 'DateTimePeriodFormatQualifier'
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1250

    field :name                 => 'DateTimePeriod'
          :sequence             => 03,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 1251

    field :name                 => 'ImmunizationStatusCode'
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1254

    field :name                 => 'ReportTypeCode'
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 755

    field :name                 => 'CodeListQualifierCode'
          :sequence             => 06,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 1270

  end
end
