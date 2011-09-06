module Hippo::Segments
  class DTM < Hippo::Segments::Base

    segment_identifier 'DTM'

    field :name                 => 'DateTimeQualifier',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 374

    field :name                 => 'Date',
          :sequence             => 2,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'Time',
          :sequence             => 3,
          :datatype             => :time,
          :minimum              => 4,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 337

    field :name                 => 'TimeCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 623

    field :name                 => 'DateTimePeriodFormatQualifier',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1250

    field :name                 => 'DateTimePeriod',
          :sequence             => 6,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 1251

  end
end
