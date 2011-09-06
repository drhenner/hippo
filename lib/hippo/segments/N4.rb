module Hippo::Segments
  class N4 < Hippo::Segments::Base

    segment_identifier 'N4'

    field :name                 => 'CityName'
          :sequence             => 01,
          :datatype             => :string,
          :minimum              => 2,
          :maximum              => 30,
          :required             => false,
          :data_element_number  => 19

    field :name                 => 'StateOrProvinceCode'
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 156

    field :name                 => 'PostalCode'
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 116

    field :name                 => 'CountryCode'
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 26

    field :name                 => 'LocationQualifier'
          :sequence             => 05,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 309

    field :name                 => 'LocationIdentifier'
          :sequence             => 06,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 30,
          :required             => false,
          :data_element_number  => 310

    field :name                 => 'CountrySubdivisionCode'
          :sequence             => 07,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1715

  end
end
