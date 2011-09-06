module Hippo::Segments
  class PLB < Hippo::Segments::Base

    segment_identifier 'PLB'

    field :name                 => 'ReferenceIdentification',
          :sequence             => 1,
          :datatype             => :string,
          :minimum              => 1,
          :maximum              => 50,
          :required             => true,
          :data_element_number  => 127

    field :name                 => 'Date',
          :sequence             => 2,
          :datatype             => :date,
          :minimum              => 8,
          :maximum              => 8,
          :required             => true,
          :data_element_number  => 373

    composite_field 'AdjustmentIdentifier' do

      field :name                 => 'AdjustmentReasonCode',
            :sequence             => 1,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 426

      field :name                 => 'ReferenceIdentification',
            :sequence             => 2,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

    field :name                 => 'MonetaryAmount',
          :sequence             => 4,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => true,
          :data_element_number  => 782

    composite_field 'AdjustmentIdentifier' do

      field :name                 => 'AdjustmentReasonCode',
            :sequence             => 1,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 426

      field :name                 => 'ReferenceIdentification',
            :sequence             => 2,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

    field :name                 => 'MonetaryAmount',
          :sequence             => 6,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    composite_field 'AdjustmentIdentifier' do

      field :name                 => 'AdjustmentReasonCode',
            :sequence             => 1,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 426

      field :name                 => 'ReferenceIdentification',
            :sequence             => 2,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

    field :name                 => 'MonetaryAmount',
          :sequence             => 8,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    composite_field 'AdjustmentIdentifier' do

      field :name                 => 'AdjustmentReasonCode',
            :sequence             => 1,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 426

      field :name                 => 'ReferenceIdentification',
            :sequence             => 2,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

    field :name                 => 'MonetaryAmount',
          :sequence             => 10,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    composite_field 'AdjustmentIdentifier' do

      field :name                 => 'AdjustmentReasonCode',
            :sequence             => 1,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 426

      field :name                 => 'ReferenceIdentification',
            :sequence             => 2,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

    field :name                 => 'MonetaryAmount',
          :sequence             => 12,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    composite_field 'AdjustmentIdentifier' do

      field :name                 => 'AdjustmentReasonCode',
            :sequence             => 1,
            :datatype             => :list,
            :minimum              => 2,
            :maximum              => 2,
            :required             => true,
            :data_element_number  => 426

      field :name                 => 'ReferenceIdentification',
            :sequence             => 2,
            :datatype             => :string,
            :minimum              => 1,
            :maximum              => 50,
            :required             => false,
            :data_element_number  => 127

    end

    field :name                 => 'MonetaryAmount',
          :sequence             => 14,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

  end
end
