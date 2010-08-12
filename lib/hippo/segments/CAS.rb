module Hippo::Segments
  class CAS < Base

    segment_identifier  'CAS'

    field   :name     => 'ClaimAdjustmentGroupCode',
            :datatype => :list,
            :list     => [ 'CO','CR','DE','MA','NC','OA','PI','PR','RR']
            :required => true

    field   :name     => 'ClaimAdjustmentReasonCode1',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 5,
            :required => true

    field   :name     => 'MonetaryAmount1',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => true

    field   :name     => 'Quantity1',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'ClaimAdjustmentReasonCode2',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 5,
            :required => false

    field   :name     => 'MonetaryAmount2',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'Quantity2',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'ClaimAdjustmentReasonCode3',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 5,
            :required => false

    field   :name     => 'MonetaryAmount3',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'Quantity3',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'ClaimAdjustmentReasonCode4',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 5,
            :required => false

    field   :name     => 'MonetaryAmount4',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'Quantity4',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'ClaimAdjustmentReasonCode5',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 5,
            :required => false

    field   :name     => 'MonetaryAmount5',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'Quantity5',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'ClaimAdjustmentReasonCode6',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 5,
            :required => false

    field   :name     => 'MonetaryAmount6',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'Quantity6',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

  end
end
