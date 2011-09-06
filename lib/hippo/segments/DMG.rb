module Hippo::Segments
  class DMG < Hippo::Segments::Base

    segment_identifier 'DMG'

    field :name                 => 'DateTimePeriodFormatQualifier',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1250

    field :name                 => 'DateTimePeriod',
          :sequence             => 2,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 35,
          :required             => false,
          :data_element_number  => 1251

    field :name                 => 'GenderCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1068

    field :name                 => 'MaritalStatusCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 1067

    composite_field 'CompositeRaceOrEthnicityInformation' do

      field :name                 => 'RaceOrEthnicityCode',
            :sequence             => 1,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1109

      field :name                 => 'CodeListQualifierCode',
            :sequence             => 2,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode',
            :sequence             => 3,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

    end

    field :name                 => 'CitizenshipStatusCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 1066

    field :name                 => 'CountryCode',
          :sequence             => 7,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 26

    field :name                 => 'BasisOfVerificationCode',
          :sequence             => 8,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 659

    field :name                 => 'Quantity',
          :sequence             => 9,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'CodeListQualifierCode',
          :sequence             => 10,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1270

    field :name                 => 'IndustryCode',
          :sequence             => 11,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 30,
          :required             => false,
          :data_element_number  => 1271

  end
end
