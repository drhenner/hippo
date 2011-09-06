module Hippo::Segments
  class CRC < Hippo::Segments::Base

    segment_identifier 'CRC'

    field :name                 => 'CodeCategory',
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 1136

    field :name                 => 'YesNoConditionOrResponseCode',
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1073

    field :name                 => 'ConditionIndicator',
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 1321

    field :name                 => 'ConditionIndicator',
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1321

    field :name                 => 'ConditionIndicator',
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1321

    field :name                 => 'ConditionIndicator',
          :sequence             => 06,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1321

    field :name                 => 'ConditionIndicator',
          :sequence             => 07,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1321

  end
end
