module Hippo::Segments
  class ST < Hippo::Segments::Base

    segment_identifier 'ST'

    field :name                 => 'TransactionSetIdentifierCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 143

    field :name                 => 'TransactionSetControlNumber',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 4,
          :maximum              => 9,
          :required             => true,
          :data_element_number  => 329

    field :name                 => 'ImplementationConventionReference',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 1705

  end
end
