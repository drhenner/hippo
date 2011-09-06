module Hippo::Segments
  class CLP < Hippo::Segments::Base

    segment_identifier 'CLP'

    field :name                 => 'ClaimSubmitterSIdentifier',
          :sequence             => 01,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 38,
          :required             => true,
          :data_element_number  => 1028

    field :name                 => 'ClaimStatusCode',
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 1029

    field :name                 => 'MonetaryAmount',
          :sequence             => 03,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => true,
          :data_element_number  => 782

    field :name                 => 'MonetaryAmount',
          :sequence             => 04,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => true,
          :data_element_number  => 782

    field :name                 => 'MonetaryAmount',
          :sequence             => 05,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'ClaimFilingIndicatorCode',
          :sequence             => 06,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1032

    field :name                 => 'ReferenceIdentification',
          :sequence             => 07,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'FacilityCodeValue',
          :sequence             => 08,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1331

    field :name                 => 'ClaimFrequencyTypeCode',
          :sequence             => 09,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1325

    field :name                 => 'PatientStatusCode',
          :sequence             => 10,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1352

    field :name                 => 'DiagnosisRelatedGroupDrgCode',
          :sequence             => 11,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 4,
          :required             => false,
          :data_element_number  => 1354

    field :name                 => 'Quantity',
          :sequence             => 12,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'PercentageAsDecimal',
          :sequence             => 13,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 954

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 14,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

  end
end
