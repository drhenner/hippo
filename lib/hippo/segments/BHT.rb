module Hippo::Segments
  class BHT < Hippo::Segments::Base

    segment_identifier 'BHT'

    field :name                 => 'HierarchicalStructureCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 4,
          :maximum              => 4,
          :required             => true,
          :data_element_number  => 1005

    field :name                 => 'TransactionSetPurposeCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 353

    field :name                 => 'ReferenceIdentification',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'Date',
          :sequence             => 4,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'Time',
          :sequence             => 5,
          :datatype             => :time,
          :minimum              => 4,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 337

    field :name                 => 'TransactionTypeCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 640

  end
end
