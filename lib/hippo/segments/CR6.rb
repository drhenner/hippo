module Hippo::Segments
  class CR6 < Hippo::Segments::Base

    segment_identifier 'CR6'

    field :name                 => 'PrognosisCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 923

    field :name                 => 'Date',
          :sequence             => 2,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => true,
          :data_element_number  => 373

    field :name                 => 'DateTimePeriodFormatQualifier',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1250

    field :name                 => 'DateTimePeriod',
          :sequence             => 4,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 1251

    field :name                 => 'Date',
          :sequence             => 5,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 7,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1073

    field :name                 => 'CertificationTypeCode',
          :sequence             => 8,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1322

    field :name                 => 'Date',
          :sequence             => 9,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 10,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'MedicalCodeValue',
          :sequence             => 11,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 1137

    field :name                 => 'Date',
          :sequence             => 12,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'Date',
          :sequence             => 13,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'Date',
          :sequence             => 14,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'DateTimePeriodFormatQualifier',
          :sequence             => 15,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1250

    field :name                 => 'DateTimePeriod',
          :sequence             => 16,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 1251

    field :name                 => 'PatientLocationCode',
          :sequence             => 17,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1384

    field :name                 => 'Date',
          :sequence             => 18,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'Date',
          :sequence             => 19,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'Date',
          :sequence             => 20,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'Date',
          :sequence             => 21,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

  end
end
