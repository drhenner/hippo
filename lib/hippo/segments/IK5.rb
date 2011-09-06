module Hippo::Segments
  class IK5 < Hippo::Segments::Base

    segment_identifier 'IK5'

    field :name                 => 'TransactionSetAcknowledgmentCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 717

    field :name                 => 'ImplementationTransactionSetSyntaxErrorCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 618

    field :name                 => 'ImplementationTransactionSetSyntaxErrorCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 618

    field :name                 => 'ImplementationTransactionSetSyntaxErrorCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 618

    field :name                 => 'ImplementationTransactionSetSyntaxErrorCode',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 618

    field :name                 => 'ImplementationTransactionSetSyntaxErrorCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 618

  end
end
