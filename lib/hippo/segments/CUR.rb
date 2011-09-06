module Hippo::Segments
  class CUR < Hippo::Segments::Base

    segment_identifier 'CUR'

    field :name                 => 'EntityIdentifierCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 98

    field :name                 => 'CurrencyCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 100

    field :name                 => 'ExchangeRate',
          :sequence             => 3,
          :datatype             => :numeric,
          :minimum              => 4,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 280

    field :name                 => 'EntityIdentifierCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 98

    field :name                 => 'CurrencyCode',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 100

    field :name                 => 'CurrencyMarketExchangeCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 669

    field :name                 => 'DateTimeQualifier',
          :sequence             => 7,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 374

    field :name                 => 'Date',
          :sequence             => 8,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'Time',
          :sequence             => 9,
          :datatype             => :time,
          :minimum              => 4,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 337

    field :name                 => 'DateTimeQualifier',
          :sequence             => 10,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 374

    field :name                 => 'Date',
          :sequence             => 11,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'Time',
          :sequence             => 12,
          :datatype             => :time,
          :minimum              => 4,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 337

    field :name                 => 'DateTimeQualifier',
          :sequence             => 13,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 374

    field :name                 => 'Date',
          :sequence             => 14,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'Time',
          :sequence             => 15,
          :datatype             => :time,
          :minimum              => 4,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 337

    field :name                 => 'DateTimeQualifier',
          :sequence             => 16,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 374

    field :name                 => 'Date',
          :sequence             => 17,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'Time',
          :sequence             => 18,
          :datatype             => :time,
          :minimum              => 4,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 337

    field :name                 => 'DateTimeQualifier',
          :sequence             => 19,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 374

    field :name                 => 'Date',
          :sequence             => 20,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'Time',
          :sequence             => 21,
          :datatype             => :time,
          :minimum              => 4,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 337

  end
end
