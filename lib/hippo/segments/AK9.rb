module Hippo::Segments
  class AK9 < Hippo::Segments::Base

    segment_identifier 'AK9'

    field :name                 => 'FunctionalGroupAcknowledgeCode',
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 715

    field :name                 => 'NumberOfTransactionSetsIncluded',
          :sequence             => 02,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 6,
          :required             => true,
          :data_element_number  => 97

    field :name                 => 'NumberOfReceivedTransactionSets',
          :sequence             => 03,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 6,
          :required             => true,
          :data_element_number  => 123

    field :name                 => 'NumberOfAcceptedTransactionSets',
          :sequence             => 04,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 6,
          :required             => true,
          :data_element_number  => 2

    field :name                 => 'FunctionalGroupSyntaxErrorCode',
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 716

    field :name                 => 'FunctionalGroupSyntaxErrorCode',
          :sequence             => 06,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 716

    field :name                 => 'FunctionalGroupSyntaxErrorCode',
          :sequence             => 07,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 716

    field :name                 => 'FunctionalGroupSyntaxErrorCode',
          :sequence             => 08,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 716

    field :name                 => 'FunctionalGroupSyntaxErrorCode',
          :sequence             => 09,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 716

  end
end
