module Hippo::Segments
  class HI < Hippo::Segments::Base

    segment_identifier 'HI'

    composite_field 'HealthCareCodeInformation' do

      field :name                 => 'CodeListQualifierCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'DateTimePeriodFormatQualifier'
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1250

      field :name                 => 'DateTimePeriod'
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => false,
            :data_element_number  => 1251

      field :name                 => 'MonetaryAmount'
            :sequence             => 05,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 18,
            :required             => false,
            :data_element_number  => 782

      field :name                 => 'Quantity'
            :sequence             => 06,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

      field :name                 => 'VersionIdentifier'
            :sequence             => 07,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 799

      field :name                 => 'IndustryCode'
            :sequence             => 08,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

      field :name                 => 'YesNoConditionOrResponseCode'
            :sequence             => 09,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

    composite_field 'HealthCareCodeInformation' do

      field :name                 => 'CodeListQualifierCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'DateTimePeriodFormatQualifier'
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1250

      field :name                 => 'DateTimePeriod'
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => false,
            :data_element_number  => 1251

      field :name                 => 'MonetaryAmount'
            :sequence             => 05,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 18,
            :required             => false,
            :data_element_number  => 782

      field :name                 => 'Quantity'
            :sequence             => 06,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

      field :name                 => 'VersionIdentifier'
            :sequence             => 07,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 799

      field :name                 => 'IndustryCode'
            :sequence             => 08,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

      field :name                 => 'YesNoConditionOrResponseCode'
            :sequence             => 09,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

    composite_field 'HealthCareCodeInformation' do

      field :name                 => 'CodeListQualifierCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'DateTimePeriodFormatQualifier'
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1250

      field :name                 => 'DateTimePeriod'
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => false,
            :data_element_number  => 1251

      field :name                 => 'MonetaryAmount'
            :sequence             => 05,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 18,
            :required             => false,
            :data_element_number  => 782

      field :name                 => 'Quantity'
            :sequence             => 06,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

      field :name                 => 'VersionIdentifier'
            :sequence             => 07,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 799

      field :name                 => 'IndustryCode'
            :sequence             => 08,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

      field :name                 => 'YesNoConditionOrResponseCode'
            :sequence             => 09,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

    composite_field 'HealthCareCodeInformation' do

      field :name                 => 'CodeListQualifierCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'DateTimePeriodFormatQualifier'
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1250

      field :name                 => 'DateTimePeriod'
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => false,
            :data_element_number  => 1251

      field :name                 => 'MonetaryAmount'
            :sequence             => 05,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 18,
            :required             => false,
            :data_element_number  => 782

      field :name                 => 'Quantity'
            :sequence             => 06,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

      field :name                 => 'VersionIdentifier'
            :sequence             => 07,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 799

      field :name                 => 'IndustryCode'
            :sequence             => 08,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

      field :name                 => 'YesNoConditionOrResponseCode'
            :sequence             => 09,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

    composite_field 'HealthCareCodeInformation' do

      field :name                 => 'CodeListQualifierCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'DateTimePeriodFormatQualifier'
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1250

      field :name                 => 'DateTimePeriod'
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => false,
            :data_element_number  => 1251

      field :name                 => 'MonetaryAmount'
            :sequence             => 05,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 18,
            :required             => false,
            :data_element_number  => 782

      field :name                 => 'Quantity'
            :sequence             => 06,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

      field :name                 => 'VersionIdentifier'
            :sequence             => 07,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 799

      field :name                 => 'IndustryCode'
            :sequence             => 08,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

      field :name                 => 'YesNoConditionOrResponseCode'
            :sequence             => 09,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

    composite_field 'HealthCareCodeInformation' do

      field :name                 => 'CodeListQualifierCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'DateTimePeriodFormatQualifier'
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1250

      field :name                 => 'DateTimePeriod'
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => false,
            :data_element_number  => 1251

      field :name                 => 'MonetaryAmount'
            :sequence             => 05,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 18,
            :required             => false,
            :data_element_number  => 782

      field :name                 => 'Quantity'
            :sequence             => 06,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

      field :name                 => 'VersionIdentifier'
            :sequence             => 07,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 799

      field :name                 => 'IndustryCode'
            :sequence             => 08,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

      field :name                 => 'YesNoConditionOrResponseCode'
            :sequence             => 09,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

    composite_field 'HealthCareCodeInformation' do

      field :name                 => 'CodeListQualifierCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'DateTimePeriodFormatQualifier'
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1250

      field :name                 => 'DateTimePeriod'
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => false,
            :data_element_number  => 1251

      field :name                 => 'MonetaryAmount'
            :sequence             => 05,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 18,
            :required             => false,
            :data_element_number  => 782

      field :name                 => 'Quantity'
            :sequence             => 06,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

      field :name                 => 'VersionIdentifier'
            :sequence             => 07,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 799

      field :name                 => 'IndustryCode'
            :sequence             => 08,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

      field :name                 => 'YesNoConditionOrResponseCode'
            :sequence             => 09,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

    composite_field 'HealthCareCodeInformation' do

      field :name                 => 'CodeListQualifierCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'DateTimePeriodFormatQualifier'
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1250

      field :name                 => 'DateTimePeriod'
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => false,
            :data_element_number  => 1251

      field :name                 => 'MonetaryAmount'
            :sequence             => 05,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 18,
            :required             => false,
            :data_element_number  => 782

      field :name                 => 'Quantity'
            :sequence             => 06,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

      field :name                 => 'VersionIdentifier'
            :sequence             => 07,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 799

      field :name                 => 'IndustryCode'
            :sequence             => 08,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

      field :name                 => 'YesNoConditionOrResponseCode'
            :sequence             => 09,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

    composite_field 'HealthCareCodeInformation' do

      field :name                 => 'CodeListQualifierCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'DateTimePeriodFormatQualifier'
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1250

      field :name                 => 'DateTimePeriod'
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => false,
            :data_element_number  => 1251

      field :name                 => 'MonetaryAmount'
            :sequence             => 05,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 18,
            :required             => false,
            :data_element_number  => 782

      field :name                 => 'Quantity'
            :sequence             => 06,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

      field :name                 => 'VersionIdentifier'
            :sequence             => 07,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 799

      field :name                 => 'IndustryCode'
            :sequence             => 08,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

      field :name                 => 'YesNoConditionOrResponseCode'
            :sequence             => 09,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

    composite_field 'HealthCareCodeInformation' do

      field :name                 => 'CodeListQualifierCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'DateTimePeriodFormatQualifier'
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1250

      field :name                 => 'DateTimePeriod'
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => false,
            :data_element_number  => 1251

      field :name                 => 'MonetaryAmount'
            :sequence             => 05,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 18,
            :required             => false,
            :data_element_number  => 782

      field :name                 => 'Quantity'
            :sequence             => 06,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

      field :name                 => 'VersionIdentifier'
            :sequence             => 07,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 799

      field :name                 => 'IndustryCode'
            :sequence             => 08,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

      field :name                 => 'YesNoConditionOrResponseCode'
            :sequence             => 09,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

    composite_field 'HealthCareCodeInformation' do

      field :name                 => 'CodeListQualifierCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'DateTimePeriodFormatQualifier'
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1250

      field :name                 => 'DateTimePeriod'
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => false,
            :data_element_number  => 1251

      field :name                 => 'MonetaryAmount'
            :sequence             => 05,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 18,
            :required             => false,
            :data_element_number  => 782

      field :name                 => 'Quantity'
            :sequence             => 06,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

      field :name                 => 'VersionIdentifier'
            :sequence             => 07,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 799

      field :name                 => 'IndustryCode'
            :sequence             => 08,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

      field :name                 => 'YesNoConditionOrResponseCode'
            :sequence             => 09,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

    composite_field 'HealthCareCodeInformation' do

      field :name                 => 'CodeListQualifierCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 3,
            :required             => true,
            :data_element_number  => 1270

      field :name                 => 'IndustryCode'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => true,
            :data_element_number  => 1271

      field :name                 => 'DateTimePeriodFormatQualifier'
            :sequence             => 03,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 3,
            :required             => false,
            :data_element_number  => 1250

      field :name                 => 'DateTimePeriod'
            :sequence             => 04,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 35,
            :required             => false,
            :data_element_number  => 1251

      field :name                 => 'MonetaryAmount'
            :sequence             => 05,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 18,
            :required             => false,
            :data_element_number  => 782

      field :name                 => 'Quantity'
            :sequence             => 06,
            :datatype             => :numeric,
            :minimum              => 1,
            :maximum              => 15,
            :required             => false,
            :data_element_number  => 380

      field :name                 => 'VersionIdentifier'
            :sequence             => 07,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 799

      field :name                 => 'IndustryCode'
            :sequence             => 08,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 30,
            :required             => false,
            :data_element_number  => 1271

      field :name                 => 'YesNoConditionOrResponseCode'
            :sequence             => 09,
            :datatype             => :list,
            :minimum              => 1,
            :maximum              => 1,
            :required             => false,
            :data_element_number  => 1073

    end

  end
end
