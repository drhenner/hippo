module Hippo::Segments
  class CTX < Hippo::Segments::Base

    segment_identifier 'CTX'

    composite_field 'ContextIdentification' do

      field :name                 => 'ContextName',
            :sequence             => 1,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => true,
            :data_element_number  => 9999

      field :name                 => 'ContextReference',
            :sequence             => 2,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => false,
            :data_element_number  => 9998

    end

    field :name                 => 'SegmentIdCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 721

    field :name                 => 'SegmentPositionInTransactionSet',
          :sequence             => 3,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 10,
          :required             => false,
          :data_element_number  => 719

    field :name                 => 'LoopIdentifierCode',
          :sequence             => 4,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 4,
          :required             => false,
          :data_element_number  => 447

    composite_field 'PositionInSegment' do

      field :name                 => 'ElementPositionInSegment',
            :sequence             => 1,
            :datatype             => :numeric,
            :decimal              => 0,
            :minimum              => 1,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 722

      field :name                 => 'ComponentDataElementPositionInComposite',
            :sequence             => 2,
            :datatype             => :numeric,
            :decimal              => 0,
            :minimum              => 1,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 1528

      field :name                 => 'RepeatingDataElementPosition',
            :sequence             => 3,
            :datatype             => :numeric,
            :decimal              => 0,
            :minimum              => 1,
            :maximum              => 4,
            :required             => false,
            :data_element_number  => 1686

    end

    composite_field 'ReferenceInSegment' do

      field :name                 => 'DataElementReferenceNumber',
            :sequence             => 1,
            :datatype             => :numeric,
            :decimal              => 0,
            :minimum              => 1,
            :maximum              => 4,
            :required             => true,
            :data_element_number  => 725

      field :name                 => 'DataElementReferenceNumber',
            :sequence             => 2,
            :datatype             => :numeric,
            :decimal              => 0,
            :minimum              => 1,
            :maximum              => 4,
            :required             => false,
            :data_element_number  => 725

    end

  end
end
