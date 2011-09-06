module Hippo::Segments
  class PRV < Hippo::Segments::Base

    segment_identifier 'PRV'

    field :name                 => 'ProviderCode',
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 1221

    field :name                 => 'ReferenceIdentificationQualifier',
          :sequence             => 02,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 128

    field :name                 => 'ReferenceIdentification',
          :sequence             => 03,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'StateOrProvinceCode',
          :sequence             => 04,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 156

    composite_field 'ProviderSpecialtyInformation' do

      field :name                 => 'ProviderSpecialtyCode',
            :sequence             => 01,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1222

      field :name                 => 'AgencyQualifierCode',
            :sequence             => 02,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 559

      field :name                 => 'YesNoConditionOrResponseCode',
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

    field :name                 => 'ProviderOrganizationCode',
          :sequence             => 06,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1223

  end
end
