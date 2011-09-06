module Hippo::Segments
  class SV2 < Hippo::Segments::Base

    segment_identifier 'SV2'

    field :name                 => 'ProductServiceId',
          :sequence             => 1,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

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

    field :name                 => 'MonetaryAmount',
          :sequence             => 3,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'UnitOrBasisForMeasurementCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 355

    field :name                 => 'Quantity',
          :sequence             => 5,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'UnitRate',
          :sequence             => 6,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 1371

    field :name                 => 'MonetaryAmount',
          :sequence             => 7,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 8,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'NursingHomeResidentialStatusCode',
          :sequence             => 9,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1345

    field :name                 => 'LevelOfCareCode',
          :sequence             => 10,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1337

  end
end
