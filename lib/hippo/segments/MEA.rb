module Hippo::Segments
  class MEA < Hippo::Segments::Base

    segment_identifier 'MEA'

    field :name                 => 'MeasurementReferenceIdCode'
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 737

    field :name                 => 'MeasurementQualifier'
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 738

    field :name                 => 'MeasurementValue'
          :sequence             => 03,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 20,
          :required             => false,
          :data_element_number  => 739

    composite_field 'CompositeUnitOfMeasure' do

      field :name                 => 'UnitOrBasisForMeasurementCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 355

      field :name                 => 'Exponent'
            :sequence             => 02,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 1018

      field :name                 => 'Multiplier'
            :sequence             => 03,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 10,
            :required             => false,
            :data_element_number  => 649

      field :name                 => 'UnitOrBasisForMeasurementCode'
            :sequence             => 04,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 355

      field :name                 => 'Exponent'
            :sequence             => 05,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 1018

      field :name                 => 'Multiplier'
            :sequence             => 06,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 10,
            :required             => false,
            :data_element_number  => 649

      field :name                 => 'UnitOrBasisForMeasurementCode'
            :sequence             => 07,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 355

      field :name                 => 'Exponent'
            :sequence             => 08,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 1018

      field :name                 => 'Multiplier'
            :sequence             => 09,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 10,
            :required             => false,
            :data_element_number  => 649

      field :name                 => 'UnitOrBasisForMeasurementCode'
            :sequence             => 10,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 355

      field :name                 => 'Exponent'
            :sequence             => 11,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 1018

      field :name                 => 'Multiplier'
            :sequence             => 12,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 10,
            :required             => false,
            :data_element_number  => 649

      field :name                 => 'UnitOrBasisForMeasurementCode'
            :sequence             => 13,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 355

      field :name                 => 'Exponent'
            :sequence             => 14,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 1018

      field :name                 => 'Multiplier'
            :sequence             => 15,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 10,
            :required             => false,
            :data_element_number  => 649

    end

    field :name                 => 'RangeMinimum'
          :sequence             => 05,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 20,
          :required             => false,
          :data_element_number  => 740

    field :name                 => 'RangeMaximum'
          :sequence             => 06,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 20,
          :required             => false,
          :data_element_number  => 741

    field :name                 => 'MeasurementSignificanceCode'
          :sequence             => 07,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 935

    field :name                 => 'MeasurementAttributeCode'
          :sequence             => 08,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 936

    field :name                 => 'SurfaceLayerPositionCode'
          :sequence             => 09,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 752

    field :name                 => 'MeasurementMethodOrDevice'
          :sequence             => 10,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 4,
          :required             => false,
          :data_element_number  => 1373

    field :name                 => 'CodeListQualifierCode'
          :sequence             => 11,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1270

    field :name                 => 'IndustryCode'
          :sequence             => 12,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 30,
          :required             => false,
          :data_element_number  => 1271

  end
end
