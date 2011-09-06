module Hippo::Segments
  class HSD < Hippo::Segments::Base

    segment_identifier 'HSD'

    field :name                 => 'QuantityQualifier'
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 673

    field :name                 => 'Quantity'
          :sequence             => 02,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'UnitOrBasisForMeasurementCode'
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 355

    field :name                 => 'SampleSelectionModulus'
          :sequence             => 04,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 6,
          :required             => false,
          :data_element_number  => 1167

    field :name                 => 'TimePeriodQualifier'
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 615

    field :name                 => 'NumberOfPeriods'
          :sequence             => 06,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 616

    field :name                 => 'ShipDeliveryOrCalendarPatternCode'
          :sequence             => 07,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 678

    field :name                 => 'ShipDeliveryPatternTimeCode'
          :sequence             => 08,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 679

  end
end
