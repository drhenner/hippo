module Hippo::Segments
  class SV7 < Hippo::Segments::Base

    segment_identifier 'SV7'

    field :name                 => 'ReferenceIdentification'
          :sequence             => 01,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'ReferenceIdentification'
          :sequence             => 02,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'PrescriptionDenialOverrideCode'
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1355

    field :name                 => 'CoverageLevelCode'
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 1207

    field :name                 => 'ProductProcessCharacteristicCode'
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 750

    field :name                 => 'YesNoConditionOrResponseCode'
          :sequence             => 06,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

  end
end
