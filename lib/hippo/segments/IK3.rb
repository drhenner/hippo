module Hippo::Segments
  class IK3 < Hippo::Segments::Base

    segment_identifier 'IK3'

    field :name                 => 'SegmentIdCode'
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 721

    field :name                 => 'SegmentPositionInTransactionSet'
          :sequence             => 02,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 10,
          :required             => true,
          :data_element_number  => 719

    field :name                 => 'LoopIdentifierCode'
          :sequence             => 03,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 4,
          :required             => false,
          :data_element_number  => 447

    field :name                 => 'ImplementationSegmentSyntaxErrorCode'
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 620

  end
end
