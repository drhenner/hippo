module Hippo::Segments
  class HL < Hippo::Segments::Base

    segment_identifier 'HL'

    def self.increment_sequence_number
      @@sequence_number ||= 0
      @@sequence_number += 1
    end

    field :name                 => 'HierarchicalIdNumber',
          :sequence             => 1,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 12,
          :required             => true,
          :data_element_number  => 628

    field :name                 => 'HierarchicalParentIdNumber',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 12,
          :required             => false,
          :data_element_number  => 734

    field :name                 => 'HierarchicalLevelCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 735

    field :name                 => 'HierarchicalChildCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 736

  end
end
