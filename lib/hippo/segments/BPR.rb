module Hippo::Segments
  class BPR < Base

    segment_identifier  'BPR'

    field   :name     => 'TransactionHandlingCode',
            :datatype => :list,
            :list     => [ 'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','X','Z']
            :required => true

    field   :name     => 'MonetaryAmount',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => true

    field   :name     => 'CreditDebitFlagCode',
            :datatype => :list,
            :list     => [ 'C','D']
            :required => true

    field   :name     => 'PaymentMethodCode',
            :datatype => :list,
            :list     => [ 'ACH','BKW','BOP','CAS','CCC','CCF','CCH','CDA','CHK','CLH','CPC','CWT','DCC','DCD','DDP','DEB','DLC','DLD','DXC','DXD','DYC','DYD','DZC','DZD','EBX','EXC','FEW','FWT','FXP','IWT','NON','PAC','PBD','PDC','PDD','PDE','PRO','QDR','QIR','REV','SCC','SCD','SDC','SDD','SWT','SXC','SXD','SYC','SZC','SZD','TRA','VIS','X12','ZZZ']
            :required => true

    field   :name     => 'PaymentFormatCode',
            :datatype => :list,
            :list     => [ 'BPT','CBC','CCD','CCP','CIE','CIP','CTX','PBC','PPD','PPP','PRD']
            :required => false

    field   :name     => 'DFIIdNumberQualifier1',
            :datatype => :list,
            :list     => [ '01','02','03','04','ZZ']
            :required => false

    field   :name     => 'DFIIdentificationNumber1',
            :datatype => :alpha_numeric,
            :minimum  => 3,
            :maximum  => 12,
            :required => false

    field   :name     => 'AccountNumberQualifier1',
            :datatype => :list,
            :list     => [ '1','2','3','4','5','6','7','8','9','Z','01','03','05','06','07','08','10','11','12','13','14','AG','AP','BA','CB','CC','CM','DA','DC','EC','RD','RS','SG','ALC','ANN','CDM','CDS','CRU','EPC','LTD','MUT','PRI','REL','SKA','ZB1','ZB2']
            :required => false

    field   :name     => 'AccountNumber1',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 35,
            :required => false

    field   :name     => 'OriginatingCompanyIdentifier',
            :datatype => :alpha_numeric,
            :minimum  => 10,
            :maximum  => 10,
            :required => false

    field   :name     => 'OriginatingCompanySupplementalCode',
            :datatype => :alpha_numeric,
            :minimum  => 9,
            :maximum  => 9,
            :required => false

    field   :name     => 'DFIIdNumberQualifier2',
            :datatype => :list,
            :list     => [ '01','02','03','04','ZZ']
            :required => false

    field   :name     => 'DFIIdentificationNumber2',
            :datatype => :alpha_numeric,
            :minimum  => 3,
            :maximum  => 12,
            :required => false

    field   :name     => 'AccountNumberQualifier2',
            :datatype => :list,
            :list     => [ '1','2','3','4','5','6','7','8','9','Z','01','03','05','06','07','08','10','11','12','13','14','AG','AP','BA','CB','CC','CM','DA','DC','EC','RD','RS','SG','ALC','ANN','CDM','CDS','CRU','EPC','LTD','MUT','PRI','REL','SKA','ZB1','ZB2']
            :required => false

    field   :name     => 'AccountNumber2',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 35,
            :required => false

    field   :name     => 'Date',
            :datatype => :alpha_numeric,
            :minimum  => 8,
            :maximum  => 8,
            :required => false

    field   :name     => 'BusinessFunctionCode',
            :datatype => :list,
            :list     => [ 'COL','CON','DBT','PCS','PEN','PRL','RYL','TAX','VEN']
            :required => false

    field   :name     => 'DFIIdNumberQualifier3',
            :datatype => :list,
            :list     => [ '01','02','03','04','ZZ']
            :required => false

    field   :name     => 'DFIIdentificationNumber3',
            :datatype => :alpha_numeric,
            :minimum  => 3,
            :maximum  => 12,
            :required => false

    field   :name     => 'AccountNumberQualifier3',
            :datatype => :list,
            :list     => [ '1','2','3','4','5','6','7','8','9','Z','01','03','05','06','07','08','10','11','12','13','14','AG','AP','BA','CB','CC','CM','DA','DC','EC','RD','RS','SG','ALC','ANN','CDM','CDS','CRU','EPC','LTD','MUT','PRI','REL','SKA','ZB1','ZB2']
            :required => false

    field   :name     => 'AccountNumber3',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 35,
            :required => false

  end
end
