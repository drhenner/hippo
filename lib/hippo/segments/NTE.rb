module Hippo::Segments
  class NTE < Hippo::Segments::Base

    segment_identifier 'NTE'

    field :name                 => 'NoteReferenceCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 363

    field :name                 => 'Description',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 80,
          :required             => true,
          :data_element_number  => 352

  end
end
