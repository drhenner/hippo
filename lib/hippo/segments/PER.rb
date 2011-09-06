module Hippo::Segments
  class PER < Hippo::Segments::Base

    segment_identifier 'PER'

    field :name                 => 'ContactFunctionCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 366

    field :name                 => 'Name',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 60,
          :required             => false,
          :data_element_number  => 93

    field :name                 => 'CommunicationNumberQualifier',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 365

    field :name                 => 'CommunicationNumber',
          :sequence             => 4,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 256,
          :required             => false,
          :data_element_number  => 364

    field :name                 => 'CommunicationNumberQualifier',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 365

    field :name                 => 'CommunicationNumber',
          :sequence             => 6,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 256,
          :required             => false,
          :data_element_number  => 364

    field :name                 => 'CommunicationNumberQualifier',
          :sequence             => 7,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 365

    field :name                 => 'CommunicationNumber',
          :sequence             => 8,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 256,
          :required             => false,
          :data_element_number  => 364

    field :name                 => 'ContactInquiryReference',
          :sequence             => 9,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 20,
          :required             => false,
          :data_element_number  => 443

  end
end
