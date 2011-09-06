module Hippo::Segments
  class SBR < Hippo::Segments::Base

    segment_identifier 'SBR'

    field :name                 => 'PayerResponsibilitySequenceNumberCode',
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1138

    field :name                 => 'IndividualRelationshipCode',
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1069

    field :name                 => 'ReferenceIdentification',
          :sequence             => 03,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'Name',
          :sequence             => 04,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 60,
          :required             => false,
          :data_element_number  => 93

    field :name                 => 'InsuranceTypeCode',
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1336

    field :name                 => 'CoordinationOfBenefitsCode',
          :sequence             => 06,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1143

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 07,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'EmploymentStatusCode',
          :sequence             => 08,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 584

    field :name                 => 'ClaimFilingIndicatorCode',
          :sequence             => 09,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1032

  end
end
