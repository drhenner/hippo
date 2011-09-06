module Hippo::Segments
  class LQ < Hippo::Segments::Base

    segment_identifier 'LQ'

    field :name                 => 'CodeListQualifierCode'
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1270

    field :name                 => 'IndustryCode'
          :sequence             => 02,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 30,
          :required             => false,
          :data_element_number  => 1271

  end
end
