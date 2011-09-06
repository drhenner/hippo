module Hippo::Segments
  class STC < Hippo::Segments::Base

    segment_identifier 'STC'

    composite_field 'HealthCareClaimStatus' do

      field :name                 => 'IndustryCode',
            :sequence             => 1,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'IndustryCode',
            :sequence             => 2,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'EntityIdentifierCode',
            :sequence             => 3,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 98

      field :name                 => 'CodeListQualifierCode',
            :sequence             => 4,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1270

    end

    field :name                 => 'Date',
          :sequence             => 2,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'ActionCode',
          :sequence             => 3,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => false,
          :data_element_number  => 306

    field :name                 => 'MonetaryAmount',
          :sequence             => 4,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'MonetaryAmount',
          :sequence             => 5,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'Date',
          :sequence             => 6,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'PaymentMethodCode',
          :sequence             => 7,
          :datatype             => :list,
          :minimum              => 3,
          :maximum              => 3,
          :required             => false,
          :data_element_number  => 591

    field :name                 => 'Date',
          :sequence             => 8,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => false,
          :data_element_number  => 373

    field :name                 => 'CheckNumber',
          :sequence             => 9,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 16,
          :required             => false,
          :data_element_number  => 429

    composite_field 'HealthCareClaimStatus' do

      field :name                 => 'IndustryCode',
            :sequence             => 1,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'IndustryCode',
            :sequence             => 2,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'EntityIdentifierCode',
            :sequence             => 3,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 98

      field :name                 => 'CodeListQualifierCode',
            :sequence             => 4,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1270

    end

    composite_field 'HealthCareClaimStatus' do

      field :name                 => 'IndustryCode',
            :sequence             => 1,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'IndustryCode',
            :sequence             => 2,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'EntityIdentifierCode',
            :sequence             => 3,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 98

      field :name                 => 'CodeListQualifierCode',
            :sequence             => 4,
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
