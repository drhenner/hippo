module Hippo::Segments
  class N4 < Hippo::Segments::Base

    segment_identifier 'N4'

    field :name                 => 'CityName',
          :sequence             => 1,
          :datatype             => :string,
          :minimum              => 2,
          :maximum              => 30,
          :required             => false,
          :data_element_number  => 19

    field :name                 => 'StateOrProvinceCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 156

    field :name                 => 'PostalCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 116

    field :name                 => 'CountryCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 26

    field :name                 => 'LocationQualifier',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 309

    field :name                 => 'LocationIdentifier',
          :sequence             => 6,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 30,
          :required             => false,
          :data_element_number  => 310

    field :name                 => 'CountrySubdivisionCode',
          :sequence             => 7,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1715

  end
end
