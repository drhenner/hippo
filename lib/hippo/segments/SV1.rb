module Hippo::Segments
  class SV1 < Hippo::Segments::Base

    segment_identifier 'SV1'

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

    field :name                 => 'UnitOrBasisForMeasurementCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 355

    field :name                 => 'Quantity',
          :sequence             => 4,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'FacilityCodeValue',
          :sequence             => 5,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1331

    field :name                 => 'ServiceTypeCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1365

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

    field :name                 => 'MonetaryAmount',
          :sequence             => 8,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 9,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'MultipleProcedureCode',
          :sequence             => 10,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1340

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 11,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 12,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'ReviewCode',
          :sequence             => 13,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1364

    field :name                 => 'NationalOrLocalAssignedReviewValue',
          :sequence             => 14,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1341

    field :name                 => 'CopayStatusCode',
          :sequence             => 15,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1327

    field :name                 => 'HealthCareProfessionalShortageAreaCode',
          :sequence             => 16,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1334

    field :name                 => 'ReferenceIdentification',
          :sequence             => 17,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'PostalCode',
          :sequence             => 18,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 116

    field :name                 => 'MonetaryAmount',
          :sequence             => 19,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'LevelOfCareCode',
          :sequence             => 20,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1337

    field :name                 => 'ProviderAgreementCode',
          :sequence             => 21,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1360

  end
end
