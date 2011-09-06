module Hippo::Segments
  class REF < Hippo::Segments::Base

    segment_identifier 'REF'

    field :name                 => 'ReferenceIdentificationQualifier',
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 128

    field :name                 => 'ReferenceIdentification',
          :sequence             => 02,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'Description',
          :sequence             => 03,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

    composite_field 'ReferenceIdentifier' do

      field :name                 => 'ReferenceIdentificationQualifier',
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 128

      field :name                 => 'ReferenceIdentification',
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => true,
            :data_element_number  => 127

      field :name                 => 'ReferenceIdentificationQualifier',
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 128

      field :name                 => 'ReferenceIdentification',
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

      field :name                 => 'ReferenceIdentificationQualifier',
            :sequence             => 05,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 128

      field :name                 => 'ReferenceIdentification',
            :sequence             => 06,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

  end
end
