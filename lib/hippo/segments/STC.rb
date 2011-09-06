module Hippo::Segments
  class STC < Hippo::Segments::Base

    segment_identifier 'STC'

    composite_field 'HealthCareClaimStatus' do

      field :name                 => 'IndustryCode',
            :sequence             => 01,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'IndustryCode',
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'EntityIdentifierCode',
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 98

      field :name                 => 'CodeListQualifierCode',
            :sequence             => 04,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1270

    end

    field :name                 => 'Date',
          :sequence             => 02,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'ActionCode',
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 306

    field :name                 => 'MonetaryAmount',
          :sequence             => 04,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'MonetaryAmount',
          :sequence             => 05,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'Date',
          :sequence             => 06,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'PaymentMethodCode',
          :sequence             => 07,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 591

    field :name                 => 'Date',
          :sequence             => 08,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'CheckNumber',
          :sequence             => 09,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 16,
          :required             => false,
          :data_element_number  => 429

    composite_field 'HealthCareClaimStatus' do

      field :name                 => 'IndustryCode',
            :sequence             => 01,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'IndustryCode',
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'EntityIdentifierCode',
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 98

      field :name                 => 'CodeListQualifierCode',
            :sequence             => 04,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1270

    end

    composite_field 'HealthCareClaimStatus' do

      field :name                 => 'IndustryCode',
            :sequence             => 01,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'IndustryCode',
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'EntityIdentifierCode',
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 98

      field :name                 => 'CodeListQualifierCode',
            :sequence             => 04,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1270

    end

    field :name                 => 'FreeFormMessageText',
          :sequence             => 12,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 264,
          :required             => false,
          :data_element_number  => 933

  end
end
