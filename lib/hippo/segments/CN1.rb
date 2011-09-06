module Hippo::Segments
  class CN1 < Hippo::Segments::Base

    segment_identifier 'CN1'

    field :name                 => 'ContractTypeCode',
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 2,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 1166

    field :name                 => 'MonetaryAmount',
          :sequence             => 02,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'PercentDecimalFormat',
          :sequence             => 03,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 6,
          :required             => false,
          :data_element_number  => 332

    field :name                 => 'ReferenceIdentification',
          :sequence             => 04,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => false,
          :data_element_number  => 127

    field :name                 => 'TermsDiscountPercent',
          :sequence             => 05,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 6,
          :required             => false,
          :data_element_number  => 338

    field :name                 => 'VersionIdentifier',
          :sequence             => 06,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 30,
          :required             => false,
          :data_element_number  => 799

  end
end
