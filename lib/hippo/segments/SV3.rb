module Hippo::Segments
  class SV3 < Hippo::Segments::Base

    segment_identifier 'SV3'

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
          :sequence             => 2,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'FacilityCodeValue',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1331

    composite_field 'OralCavityDesignation' do

      field :name                 => 'OralCavityDesignationCode',
            :sequence             => 1,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1361

      field :name                 => 'OralCavityDesignationCode',
            :sequence             => 2,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1361

      field :name                 => 'OralCavityDesignationCode',
            :sequence             => 3,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1361

      field :name                 => 'OralCavityDesignationCode',
            :sequence             => 4,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1361

      field :name                 => 'OralCavityDesignationCode',
            :sequence             => 5,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1361

    end

    field :name                 => 'ProsthesisCrownOrInlayCode',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1358

    field :name                 => 'Quantity',
          :sequence             => 6,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'Description',
          :sequence             => 7,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

    field :name                 => 'CopayStatusCode',
          :sequence             => 8,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1327

    field :name                 => 'ProviderAgreementCode',
          :sequence             => 9,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1360

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 10,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    composite_field 'CompositeDiagnosisCodePointer' do

      field :name                 => 'DiagnosisCodePointer',
            :sequence             => 1,
            :datatype             => :numeric,
            :decimal              => 0,
            :minimum              => 1,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 1328

      field :name                 => 'DiagnosisCodePointer',
            :sequence             => 2,
            :datatype             => :numeric,
            :decimal              => 0,
            :minimum              => 1,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 1328

      field :name                 => 'DiagnosisCodePointer',
            :sequence             => 3,
            :datatype             => :numeric,
            :decimal              => 0,
            :minimum              => 1,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 1328

      field :name                 => 'DiagnosisCodePointer',
            :sequence             => 4,
            :datatype             => :numeric,
            :decimal              => 0,
            :minimum              => 1,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 1328

    end

  end
end
