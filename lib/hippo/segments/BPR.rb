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
    
    field :name     => 'PaymentFormatCode',
          :datatype => :list,
          :options  => ['CCP', 'CTX']

    field :name     => 'IdNumberQualifier',
          :datatype => :list,
          :options  => ['01', '04']
     
    field :name     => 'DfiIdenficationNumber',
          :datatype => :alpha_numeric

    field :name     => 'AccountNumberQualifier',
          :datatype => :alpha_numeric
    
    field :name     => 'AccountNumber',
          :datatype => :alpha_numeric

    field :name     => 'OriginatingCompanyIdentifier',
          :datatype => :alpha_numeric
    
    field :name     => 'OriginatingCompanySupplementalCode',
          :datatype => :alpha_numeric

    field :name     => 'DfiIdNumberQualifier',
          :datatype => :list,
          :options  => ['01', '04']
    
    field :name     => 'DfiIdentificationNumber',
          :datatype => :alpha_numeric
    
    field :name     => 'AccountNumberQualifier',
          :datatype => :list,
          :options  => ['DA', 'SG']
    
    field :name     => 'AccountNumber',
          :datatype => :alpha_numeric

    field :name     => 'Date',
          :datatype => :date
    
    field :name     => 'BusinessFunctionCode',
          :datatype => :alpha_numeric

    field :name     => 'DfiIdNumberQualifier',
          :datatype => :alpha_numeric

    field :name     => 'DfiIdentificationNumber',
          :datatype => :alpha_numeric

    field :name     => 'AccountNumberQualifier',
          :datatype => :alpha_numeric
    
    field :name     => 'AccountNumber',
          :datatype => :alpha_numeric
  end
end

