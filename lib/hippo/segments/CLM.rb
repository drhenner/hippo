module Hippo::Segments
  class CLM < Hippo::Segments::Base

    segment_identifier 'CLM'

    field :name                 => 'ClaimSubmitterSIdentifier',
          :sequence             => 1,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 38,
          :required             => true,
          :data_element_number  => 1028

    field :name                 => 'MonetaryAmount',
          :sequence             => 2,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'ClaimFilingIndicatorCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1032

    field :name                 => 'NonInstitutionalClaimTypeCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1343

    composite_field 'HealthCareServiceLocationInformation' do

      field :name                 => 'FacilityCodeValue',
            :sequence             => 1,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 1331

      field :name                 => 'FacilityCodeQualifier',
            :sequence             => 2,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 1332

      field :name                 => 'ClaimFrequencyTypeCode',
            :sequence             => 3,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1325

    end

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'ProviderAcceptAssignmentCode',
          :sequence             => 7,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1359

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 8,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'ReleaseOfInformationCode',
          :sequence             => 9,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1363

    field :name                 => 'PatientSignatureSourceCode',
          :sequence             => 10,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1351

    composite_field 'RelatedCausesInformation' do

      field :name                 => 'RelatedCausesCode',
            :sequence             => 1,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1362

      field :name                 => 'RelatedCausesCode',
            :sequence             => 2,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1362

      field :name                 => 'RelatedCausesCode',
            :sequence             => 3,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1362

      field :name                 => 'StateOrProvinceCode',
            :sequence             => 4,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 156

      field :name                 => 'CountryCode',
            :sequence             => 5,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 26

    end

    field :name                 => 'SpecialProgramCode',
          :sequence             => 12,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1366

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 13,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'LevelOfServiceCode',
          :sequence             => 14,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1338

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 15,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'ProviderAgreementCode',
          :sequence             => 16,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1360

    field :name                 => 'ClaimStatusCode',
          :sequence             => 17,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1029

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 18,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'ClaimSubmissionReasonCode',
          :sequence             => 19,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1383

    field :name                 => 'DelayReasonCode',
          :sequence             => 20,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1514

  end
end
