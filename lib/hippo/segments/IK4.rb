module Hippo::Segments
  class IK4 < Hippo::Segments::Base

    segment_identifier 'IK4'

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

    field :name                 => 'DataElementReferenceNumber',
          :sequence             => 2,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 4,
          :required             => false,
          :data_element_number  => 725

    field :name                 => 'ImplementationDataElementSyntaxErrorCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 621

    field :name                 => 'CopyOfBadDataElement',
          :sequence             => 4,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 99,
          :required             => false,
          :data_element_number  => 724

  end
end
