module Hippo::Segments
  class NM1 < Hippo::Segments::Base

    segment_identifier 'NM1'

    field :name                 => 'EntityIdentifierCode',
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 98

    field :name                 => 'EntityTypeQualifier',
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1065

    field :name                 => 'NameLastOrOrganizationName',
          :sequence             => 03,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 60,
          :required             => false,
          :data_element_number  => 1035

    field :name                 => 'NameFirst',
          :sequence             => 04,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 1036

    field :name                 => 'NameMiddle',
          :sequence             => 05,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 25,
          :required             => false,
          :data_element_number  => 1037

    field :name                 => 'NamePrefix',
          :sequence             => 06,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 1038

    field :name                 => 'NameSuffix',
          :sequence             => 07,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 1039

    field :name                 => 'IdentificationCodeQualifier',
          :sequence             => 08,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 66

    field :name                 => 'IdentificationCode',
          :sequence             => 09,
          :datatype             => :string,
          :minimum              => 2,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 67

    field :name                 => 'EntityRelationshipCode',
          :sequence             => 10,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 706

    field :name                 => 'EntityIdentifierCode',
          :sequence             => 11,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 98

    field :name                 => 'NameLastOrOrganizationName',
          :sequence             => 12,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 60,
          :required             => false,
          :data_element_number  => 1035

  end
end
