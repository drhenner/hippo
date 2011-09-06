module Hippo::Segments
  class SV5 < Hippo::Segments::Base

    segment_identifier 'SV5'

    composite_field 'CompositeMedicalProcedureIdentifier' do

      field :name                 => 'ProductServiceIdQualifier',
            :sequence             => 1,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 235

      field :name                 => 'ProductServiceId',
            :sequence             => 2,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 48,
            :required             => true,
            :data_element_number  => 234

      field :name                 => 'ProcedureModifier',
            :sequence             => 3,
            :datatype             => :string,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 1339

      field :name                 => 'ProcedureModifier',
            :sequence             => 4,
            :datatype             => :string,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 1339

      field :name                 => 'ProcedureModifier',
            :sequence             => 5,
            :datatype             => :string,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 1339

      field :name                 => 'ProcedureModifier',
            :sequence             => 6,
            :datatype             => :string,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 1339

      field :name                 => 'Description',
            :sequence             => 7,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 80,
            :required             => false,
            :data_element_number  => 352

      field :name                 => 'ProductServiceId',
            :sequence             => 8,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 48,
            :required             => false,
            :data_element_number  => 234

    end

    field :name                 => 'UnitOrBasisForMeasurementCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 355

    field :name                 => 'Quantity',
          :sequence             => 3,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => true,
          :data_element_number  => 380

    field :name                 => 'MonetaryAmount',
          :sequence             => 4,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'MonetaryAmount',
          :sequence             => 5,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'FrequencyCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 594

    field :name                 => 'PrognosisCode',
          :sequence             => 7,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 923

  end
end
