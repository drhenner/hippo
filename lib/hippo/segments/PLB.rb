module Hippo::Segments
  class PLB < Hippo::Segments::Base

    segment_identifier 'PLB'

    field :name                 => 'ReferenceIdentification'
          :sequence             => 01,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => true,
          :data_element_number  => 127

    field :name                 => 'Date'
          :sequence             => 02,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => true,
          :data_element_number  => 373

    composite_field 'AdjustmentIdentifier' do

      field :name                 => 'AdjustmentReasonCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 426

      field :name                 => 'ReferenceIdentification'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

    field :name                 => 'MonetaryAmount'
          :sequence             => 04,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => true,
          :data_element_number  => 782

    composite_field 'AdjustmentIdentifier' do

      field :name                 => 'AdjustmentReasonCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 426

      field :name                 => 'ReferenceIdentification'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

    field :name                 => 'MonetaryAmount'
          :sequence             => 06,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    composite_field 'AdjustmentIdentifier' do

      field :name                 => 'AdjustmentReasonCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 426

      field :name                 => 'ReferenceIdentification'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

    field :name                 => 'MonetaryAmount'
          :sequence             => 08,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    composite_field 'AdjustmentIdentifier' do

      field :name                 => 'AdjustmentReasonCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 426

      field :name                 => 'ReferenceIdentification'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

    field :name                 => 'MonetaryAmount'
          :sequence             => 10,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    composite_field 'AdjustmentIdentifier' do

      field :name                 => 'AdjustmentReasonCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 426

      field :name                 => 'ReferenceIdentification'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

    field :name                 => 'MonetaryAmount'
          :sequence             => 12,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    composite_field 'AdjustmentIdentifier' do

      field :name                 => 'AdjustmentReasonCode'
            :sequence             => 01,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 426

      field :name                 => 'ReferenceIdentification'
            :sequence             => 02,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

    field :name                 => 'MonetaryAmount'
          :sequence             => 14,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

  end
end
