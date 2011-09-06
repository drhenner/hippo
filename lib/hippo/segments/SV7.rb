module Hippo::Segments
  class SV7 < Hippo::Segments::Base

    segment_identifier 'SV7'

    field :name                 => 'ReferenceIdentification',
          :sequence             => 1,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'ReferenceIdentification',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'PrescriptionDenialOverrideCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1355

    field :name                 => 'CoverageLevelCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 1207

    field :name                 => 'ProductProcessCharacteristicCode',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 750

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1073

  end
end
