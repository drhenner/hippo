module Hippo::Segments
  class SBR < Hippo::Segments::Base

    segment_identifier 'SBR'

    field :name                 => 'PayerResponsibilitySequenceNumberCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1138

    field :name                 => 'IndividualRelationshipCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1069

    field :name                 => 'ReferenceIdentification',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'Name',
          :sequence             => 4,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 60,
          :required             => false,
          :data_element_number  => 93

    field :name                 => 'InsuranceTypeCode',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1336

    field :name                 => 'CoordinationOfBenefitsCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1143

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 7,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'EmploymentStatusCode',
          :sequence             => 8,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 584

    field :name                 => 'ClaimFilingIndicatorCode',
          :sequence             => 9,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1032

  end
end
