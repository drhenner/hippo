module Hippo::Segments
  class PRV < Hippo::Segments::Base

    segment_identifier 'PRV'

    field :name                 => 'ProviderCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 1221

    field :name                 => 'ReferenceIdentificationQualifier',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 128

    field :name                 => 'ReferenceIdentification',
          :sequence             => 3,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'StateOrProvinceCode',
          :sequence             => 4,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 156

    composite_field 'ProviderSpecialtyInformation' do

      field :name                 => 'ProviderSpecialtyCode',
            :sequence             => 1,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1222

      field :name                 => 'AgencyQualifierCode',
            :sequence             => 2,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => false,
            :data_element_number  => 559

      field :name                 => 'YesNoConditionOrResponseCode',
            :sequence             => 3,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

    field :name                 => 'ProviderOrganizationCode',
          :sequence             => 6,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 1223

  end
end
