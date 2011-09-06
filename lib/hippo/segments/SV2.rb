module Hippo::Segments
  class SV2 < Hippo::Segments::Base

    segment_identifier 'SV2'

    field :name                 => 'ProductServiceId'
          :sequence             => 01,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    composite_field 'CompositeMedicalProcedureIdentifier' do

      field :name                 => 'ProductServiceIdQualifier'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 235

      field :name                 => 'ProductServiceId'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 48,
            :required             => true,
            :data_element_number  => 234

      field :name                 => 'ProcedureModifier'
            :sequence             => 03,
            :datatype             => :string,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 1339

      field :name                 => 'ProcedureModifier'
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 1339

      field :name                 => 'ProcedureModifier'
            :sequence             => 05,
            :datatype             => :string,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 1339

      field :name                 => 'ProcedureModifier'
            :sequence             => 06,
            :datatype             => :string,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 1339

      field :name                 => 'Description'
            :sequence             => 07,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 80,
            :required             => false,
            :data_element_number  => 352

      field :name                 => 'ProductServiceId'
            :sequence             => 08,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 48,
            :required             => false,
            :data_element_number  => 234

    end

    field :name                 => 'MonetaryAmount'
          :sequence             => 03,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'UnitOrBasisForMeasurementCode'
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 355

    field :name                 => 'Quantity'
          :sequence             => 05,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'UnitRate'
          :sequence             => 06,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 1371

    field :name                 => 'MonetaryAmount'
          :sequence             => 07,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'YesNoConditionOrResponseCode'
          :sequence             => 08,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'NursingHomeResidentialStatusCode'
          :sequence             => 09,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1345

    field :name                 => 'LevelOfCareCode'
          :sequence             => 10,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1337

  end
end
