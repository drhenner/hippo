module Hippo::Segments
  class N1 < Hippo::Segments::Base

    segment_identifier 'N1'

    field :name                 => 'EntityIdentifierCode'
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 98

    field :name                 => 'Name'
          :sequence             => 02,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 60,
          :required             => false,
          :data_element_number  => 93

    field :name                 => 'IdentificationCodeQualifier'
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 66

    field :name                 => 'IdentificationCode'
          :sequence             => 04,
          :datatype             => :string,
          :minimum              => 2,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 67

    field :name                 => 'EntityRelationshipCode'
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 706

    field :name                 => 'EntityIdentifierCode'
          :sequence             => 06,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 98

  end
end
