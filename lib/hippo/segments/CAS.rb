module Hippo::Segments
  class CAS < Hippo::Segments::Base

    segment_identifier 'CAS'

    field :name                 => 'ClaimAdjustmentGroupCode',
          :sequence             => 1,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 2,
          :required             => true,
          :data_element_number  => 1033

    field :name                 => 'ClaimAdjustmentReasonCode',
          :sequence             => 2,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 5,
          :required             => true,
          :data_element_number  => 1034

    field :name                 => 'MonetaryAmount',
          :sequence             => 3,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => true,
          :data_element_number  => 782

    field :name                 => 'Quantity',
          :sequence             => 4,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'ClaimAdjustmentReasonCode',
          :sequence             => 5,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 5,
          :required             => false,
          :data_element_number  => 1034

    field :name                 => 'MonetaryAmount',
          :sequence             => 6,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'Quantity',
          :sequence             => 7,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'ClaimAdjustmentReasonCode',
          :sequence             => 8,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 5,
          :required             => false,
          :data_element_number  => 1034

    field :name                 => 'MonetaryAmount',
          :sequence             => 9,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'Quantity',
          :sequence             => 10,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'ClaimAdjustmentReasonCode',
          :sequence             => 11,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 5,
          :required             => false,
          :data_element_number  => 1034

    field :name                 => 'MonetaryAmount',
          :sequence             => 12,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'Quantity',
          :sequence             => 13,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'ClaimAdjustmentReasonCode',
          :sequence             => 14,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 5,
          :required             => false,
          :data_element_number  => 1034

    field :name                 => 'MonetaryAmount',
          :sequence             => 15,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'Quantity',
          :sequence             => 16,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

    field :name                 => 'ClaimAdjustmentReasonCode',
          :sequence             => 17,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 5,
          :required             => false,
          :data_element_number  => 1034

    field :name                 => 'MonetaryAmount',
          :sequence             => 18,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => false,
          :data_element_number  => 782

    field :name                 => 'Quantity',
          :sequence             => 19,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 15,
          :required             => false,
          :data_element_number  => 380

  end
end
