module Hippo::Segments
  class BPR < Base
    segment_identifier 'BPR'

    field :name     => 'TransactionHandlingCode', 
          :datatype => :list, 
          :options  => ['C','D','H','I','P','U','X']

    field :name     => 'MonetaryAmount', 
          :datatype => :numeric

    field :name     => 'CreditDebitFlagCode',
          :datatype => :list,
          :options  => ['C','D']

    field :name     => 'PaymentMethodCode',
          :datatype => :list,
          :options  => ['ACH','BOP','CHK','FWT','NON']
  end
end
