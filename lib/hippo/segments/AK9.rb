module Hippo::Segments
  class AK9 < Hippo::Segments::Base

    segment_identifier 'AK9'

    field :name                 => 'FunctionalGroupAcknowledgeCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 715

    field :name                 => 'NumberOfTransactionSetsIncluded',
          :sequence             => 2,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 6,
          :required             => true,
          :data_element_number  => 97

    field :name                 => 'NumberOfReceivedTransactionSets',
          :sequence             => 3,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 6,
          :required             => true,
          :data_element_number  => 123

    field :name                 => 'NumberOfAcceptedTransactionSets',
          :sequence             => 4,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 6,
          :required             => true,
          :data_element_number  => 2

    field :name                 => 'FunctionalGroupSyntaxErrorCode',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 716

    field :name                 => 'FunctionalGroupSyntaxErrorCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 716

    field :name                 => 'FunctionalGroupSyntaxErrorCode',
          :sequence             => 7,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 716

    field :name                 => 'FunctionalGroupSyntaxErrorCode',
          :sequence             => 8,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 716

    field :name                 => 'FunctionalGroupSyntaxErrorCode',
          :sequence             => 9,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 716

  end
end
