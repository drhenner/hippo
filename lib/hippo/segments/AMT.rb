module Hippo::Segments
  class AMT < Hippo::Segments::Base

    segment_identifier 'AMT'

    field :name                 => 'AmountQualifierCode',
          :sequence             => 01,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 3,
          :required             => true,
          :data_element_number  => 522

    field :name                 => 'MonetaryAmount',
          :sequence             => 02,
          :datatype             => :numeric,
          :minimum              => 1,
          :maximum              => 18,
          :required             => true,
          :data_element_number  => 782

    field :name                 => 'CreditDebitFlagCode',
          :sequence             => 03,
          :datatype             => :list,
          :minimum              => 1,
          :maximum              => 1,
          :required             => false,
          :data_element_number  => 478

  end
end
