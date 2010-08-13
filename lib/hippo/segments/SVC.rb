module Hippo::Segments
  class SVC < Base

    segment_identifier  'SVC'

    field   :name      => 'ProductServiceIDQualifier',
            :datatype  => :alpha_numeric,
            :minimum   => 2,
            :maximum   => 2,
            :required  => true,
            :separator => Hippo::CompositeSeparator
    
    field   :name      => 'ProductServiceID',
            :datatype  => :alpha_numeric,
            :minimum   => 1,
            :maximum   => 48,
            :require   => true,
            :separator => Hippo::CompositeSeparator

    field   :name      => 'ProcedureModifier1',
            :datatype  => :alpha_numeric,
            :minimum   => 2,
            :maximum   => 2,
            :require   => false,
            :separator => Hippo::CompositeSeparator

    field   :name      => 'ProcedureModifier2',
            :datatype  => :alpha_numeric,
            :minimum   => 2,
            :maximum   => 2,
            :require   => false,
            :separator => Hippo::CompositeSeparator
    
    field   :name      => 'ProcedureModifier3',
            :datatype  => :alpha_numeric,
            :minimum   => 2,
            :maximum   => 2,
            :require   => false,
            :separator => Hippo::CompositeSeparator
    
    field   :name      => 'ProcedureModifier4',
            :datatype  => :alpha_numeric,
            :minimum   => 2,
            :maximum   => 2,
            :require   => false,
            :separator => Hippo::CompositeSeparator

    field   :name      => 'Description',
            :datatype  => :alpha_numeric,
            :minimum   => 1,
            :maximum   => 80,
            :require   => false,
            :separator => Hippo::CompositeSeparator

    field   :name      => 'MonetaryAmount1',
            :datatype  => :numeric,
            :minimum   => 1,
            :maximum   => 18,
            :required  => true

    field   :name      => 'MonetaryAmount2',
            :datatype  => :numeric,
            :minimum   => 1,
            :maximum   => 18,
            :required  => false

    field   :name      => 'ProductServiceId',
            :datatype  => :alpha_numeric,
            :minimum   => 1,
            :maximum   => 48,
            :required  => false

    field   :name      => 'Quantity1',
            :datatype  => :numeric,
            :minimum   => 1,
            :maximum   => 15,
            :required  => false

    field   :name      => 'OriginalProductServiceIDQualifier',
            :datatype  => :alpha_numeric,
            :minimum   => 2,
            :maximum   => 2,
            :required  => false,
            :separator => Hippo::CompositeSeparator
    
    field   :name      => 'OriginalProductServiceID',
            :datatype  => :alpha_numeric,
            :minimum   => 1,
            :maximum   => 48,
            :require   => false,
            :separator => Hippo::CompositeSeparator

    field   :name      => 'OriginalProcedureModifier1',
            :datatype  => :alpha_numeric,
            :minimum   => 2,
            :maximum   => 2,
            :require   => false,
            :separator => Hippo::CompositeSeparator

    field   :name      => 'OriginalProcedureModifier2',
            :datatype  => :alpha_numeric,
            :minimum   => 2,
            :maximum   => 2,
            :require   => false,
            :separator => Hippo::CompositeSeparator
    
    field   :name      => 'OriginalProcedureModifier3',
            :datatype  => :alpha_numeric,
            :minimum   => 2,
            :maximum   => 2,
            :require   => false,
            :separator => Hippo::CompositeSeparator
    
    field   :name      => 'OriginalProcedureModifier4',
            :datatype  => :alpha_numeric,
            :minimum   => 2,
            :maximum   => 2,
            :require   => false,
            :separator => Hippo::CompositeSeparator

    field   :name      => 'OriginalDescription',
            :datatype  => :alpha_numeric,
            :minimum   => 1,
            :maximum   => 80,
            :require   => false,
            :separator => Hippo::CompositeSeparator

    field   :name      => 'Quantity2',
            :datatype  => :numeric,
            :minimum   => 1,
            :maximum   => 15,
            :required  => false

  end
end
