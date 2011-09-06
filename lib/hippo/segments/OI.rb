module Hippo::Segments
  class OI < Hippo::Segments::Base

    segment_identifier 'OI'

    field :name                 => 'ClaimFilingIndicatorCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1032

    field :name                 => 'ClaimSubmissionReasonCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1383

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'PatientSignatureSourceCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1351

    field :name                 => 'ProviderAgreementCode',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1360

    field :name                 => 'ReleaseOfInformationCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1363

  end
end
