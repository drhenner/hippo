module Hippo::Segments
  class DMG < Hippo::Segments::Base

    segment_identifier 'DMG'

    field :name                 => 'DateTimePeriodFormatQualifier'
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1250

    field :name                 => 'DateTimePeriod'
          :sequence             => 02,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 1251

    field :name                 => 'GenderCode'
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1068

    field :name                 => 'MaritalStatusCode'
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1067

    composite_field 'CompositeRaceOrEthnicityInformation' do

      field :name                 => 'RaceOrEthnicityCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1109

      field :name                 => 'CodeListQualifierCode'
            :sequence             => 02,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode'
            :sequence             => 03,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

    end

    field :name                 => 'CitizenshipStatusCode'
          :sequence             => 06,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1066

    field :name                 => 'CountryCode'
          :sequence             => 07,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 26

    field :name                 => 'BasisOfVerificationCode'
          :sequence             => 08,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 659

    field :name                 => 'Quantity'
          :sequence             => 09,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'CodeListQualifierCode'
          :sequence             => 10,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1270

    field :name                 => 'IndustryCode'
          :sequence             => 11,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 30,
          :required             => false,
          :data_element_number  => 1271

  end
end
