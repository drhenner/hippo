module Hippo::Segments
  class RDM < Hippo::Segments::Base

    segment_identifier 'RDM'

    field :name                 => 'ReportTransmissionCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 756

    field :name                 => 'Name',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 60,
          :required             => false,
          :data_element_number  => 93

    field :name                 => 'CommunicationNumber',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 256,
          :required             => false,
          :data_element_number  => 364

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
