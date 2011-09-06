module Hippo::Segments
  class PER < Hippo::Segments::Base

    segment_identifier 'PER'

    field :name                 => 'ContactFunctionCode'
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 366

    field :name                 => 'Name'
          :sequence             => 02,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 60,
          :required             => false,
          :data_element_number  => 93

    field :name                 => 'CommunicationNumberQualifier'
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 365

    field :name                 => 'CommunicationNumber'
          :sequence             => 04,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 256,
          :required             => false,
          :data_element_number  => 364

    field :name                 => 'CommunicationNumberQualifier'
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 365

    field :name                 => 'CommunicationNumber'
          :sequence             => 06,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 256,
          :required             => false,
          :data_element_number  => 364

    field :name                 => 'CommunicationNumberQualifier'
          :sequence             => 07,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 365

    field :name                 => 'CommunicationNumber'
          :sequence             => 08,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 256,
          :required             => false,
          :data_element_number  => 364

    field :name                 => 'ContactInquiryReference'
          :sequence             => 09,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 20,
          :required             => false,
          :data_element_number  => 443

  end
end
