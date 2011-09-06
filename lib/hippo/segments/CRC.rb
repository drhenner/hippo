module Hippo::Segments
  class CRC < Hippo::Segments::Base

    segment_identifier 'CRC'

    field :name                 => 'CodeCategory',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 1136

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1073

    field :name                 => 'ConditionIndicator',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 1321

    field :name                 => 'ConditionIndicator',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1321

    field :name                 => 'ConditionIndicator',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1321

    field :name                 => 'ConditionIndicator',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1321

    field :name                 => 'ConditionIndicator',
          :sequence             => 7,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1321

  end
end
