module Hippo::Segments
  class UR < Hippo::Segments::Base

    segment_identifier 'UR'

    field :name                 => 'ApprovalCode',
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => true,
          :data_element_number  => 1318

    field :name                 => 'Quantity',
          :sequence             => 02,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

  end
end
