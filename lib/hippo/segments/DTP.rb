module Hippo::Segments
  class DTP < Hippo::Segments::Base

    segment_identifier 'DTP'

    field :name                 => 'DateTimeQualifier'
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 374

    field :name                 => 'DateTimePeriodFormatQualifier'
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 1250

    field :name                 => 'DateTimePeriod'
          :sequence             => 03,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => true,
          :data_element_number  => 1251

  end
end
