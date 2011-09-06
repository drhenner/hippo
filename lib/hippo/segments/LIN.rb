module Hippo::Segments
  class LIN < Hippo::Segments::Base

    segment_identifier 'LIN'

    field :name                 => 'AssignedIdentification',
          :sequence             => 01,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 20,
          :required             => false,
          :data_element_number  => 350

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 03,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => true,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 05,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 06,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 07,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 08,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 09,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 10,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 11,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 12,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 13,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 14,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 15,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 16,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 17,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 18,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 19,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 20,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 21,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 22,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 23,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 24,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 25,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 26,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 27,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 28,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 29,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

    field :name                 => 'ProductServiceIdQualifier',
          :sequence             => 30,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 235

    field :name                 => 'ProductServiceId',
          :sequence             => 31,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 48,
          :required             => false,
          :data_element_number  => 234

  end
end
