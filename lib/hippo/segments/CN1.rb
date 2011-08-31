module Hippo::Segments
  class CN1 < Base

    segment_identifier  'CN1'

    field   :name     => 'ContractTypeCode',
            :datatype => :list,
            :list     => [ '01','02','03','04','05','06','09','AB','AC','AD','AE','AF','AG','AH','AI','AJ','CA','CB','CH','CP','CS','CW','CX','CY','DI','EA','ER','FA','FB','FC','FD','FE','FF','FG','FH','FI','FJ','FK','FL','FM','FR','FX','LA','LE','LH','OC','PR','SP','TM','ZZ'],
            :required => true

    field   :name     => 'MonetaryAmount',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'Percent',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 6,
            :required => false

    field   :name     => 'ReferenceIdentification',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => false

    field   :name     => 'TermsDiscountPercent',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 6,
            :required => false

    field   :name     => 'VersionIdentifier',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 30,
            :required => false

  end
end
