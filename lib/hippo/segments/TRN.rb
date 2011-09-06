module Hippo::Segments
  class TRN < Hippo::Segments::Base

    segment_identifier 'TRN'

    field :name                 => 'TraceTypeCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 481

    field :name                 => 'ReferenceIdentification',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => true,
          :data_element_number  => 127

    field :name                 => 'OriginatingCompanyIdentifier',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 10,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 509

    field :name                 => 'ReferenceIdentification',
          :sequence             => 4,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

  end
end
