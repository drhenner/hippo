module Hippo::Segments
  class IK5 < Hippo::Segments::Base

    segment_identifier 'IK5'

    field :name                 => 'TransactionSetAcknowledgmentCode'
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 717

    field :name                 => 'ImplementationTransactionSetSyntaxErrorCode'
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 618

    field :name                 => 'ImplementationTransactionSetSyntaxErrorCode'
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 618

    field :name                 => 'ImplementationTransactionSetSyntaxErrorCode'
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 618

    field :name                 => 'ImplementationTransactionSetSyntaxErrorCode'
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 618

    field :name                 => 'ImplementationTransactionSetSyntaxErrorCode'
          :sequence             => 06,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 618

  end
end
