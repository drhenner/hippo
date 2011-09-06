module Hippo::Segments
  class K3 < Hippo::Segments::Base

    segment_identifier 'K3'

    field :name                 => 'FixedFormatInformation',
          :sequence             => 1,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => true,
          :data_element_number  => 449

    field :name                 => 'RecordFormatCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1333

    composite_field 'CompositeUnitOfMeasure' do

      field :name                 => 'UnitOrBasisForMeasurementCode',
            :sequence             => 1,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 355

      field :name                 => 'Exponent',
            :sequence             => 2,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 1018

      field :name                 => 'Multiplier',
            :sequence             => 3,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 10,
            :required             => false,
            :data_element_number  => 649

      field :name                 => 'UnitOrBasisForMeasurementCode',
            :sequence             => 4,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 355

      field :name                 => 'Exponent',
            :sequence             => 5,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 1018

      field :name                 => 'Multiplier',
            :sequence             => 6,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 10,
            :required             => false,
            :data_element_number  => 649

      field :name                 => 'UnitOrBasisForMeasurementCode',
            :sequence             => 7,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 355

      field :name                 => 'Exponent',
            :sequence             => 8,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 1018

      field :name                 => 'Multiplier',
            :sequence             => 9,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 10,
            :required             => false,
            :data_element_number  => 649

      field :name                 => 'UnitOrBasisForMeasurementCode',
            :sequence             => 10,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 355

      field :name                 => 'Exponent',
            :sequence             => 11,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 1018

      field :name                 => 'Multiplier',
            :sequence             => 12,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 10,
            :required             => false,
            :data_element_number  => 649

      field :name                 => 'UnitOrBasisForMeasurementCode',
            :sequence             => 13,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 355

      field :name                 => 'Exponent',
            :sequence             => 14,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 1018

      field :name                 => 'Multiplier',
            :sequence             => 15,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 10,
            :required             => false,
            :data_element_number  => 649

    end

  end
end
