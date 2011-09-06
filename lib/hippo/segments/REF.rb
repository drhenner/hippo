module Hippo::Segments
  class REF < Hippo::Segments::Base

    segment_identifier 'REF'

    field :name                 => 'ReferenceIdentificationQualifier',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 128

    field :name                 => 'ReferenceIdentification',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'Description',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => false,
          :data_element_number  => 352

    composite_field 'ReferenceIdentifier' do

      field :name                 => 'ReferenceIdentificationQualifier',
            :sequence             => 1,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 128

      field :name                 => 'ReferenceIdentification',
            :sequence             => 2,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => true,
            :data_element_number  => 127

      field :name                 => 'ReferenceIdentificationQualifier',
            :sequence             => 3,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 128

      field :name                 => 'ReferenceIdentification',
            :sequence             => 4,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

      field :name                 => 'ReferenceIdentificationQualifier',
            :sequence             => 5,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 128

      field :name                 => 'ReferenceIdentification',
            :sequence             => 6,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

  end
end
