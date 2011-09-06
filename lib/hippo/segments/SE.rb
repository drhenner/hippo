module Hippo::Segments
  class SE < Hippo::Segments::Base

    segment_identifier 'SE'

    field :name                 => 'NumberOfIncludedSegments',
          :sequence             => 1,
          :datatype             => :numeric,
          :decimal              => 0,
          :minimum              => 1,
          :maximum              => 10,
          :required             => true,
          :data_element_number  => 96

    field :name                 => 'TransactionSetControlNumber',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 4,
          :maximum              => 9,
          :required             => true,
          :data_element_number  => 329

  end
end
