module Hippo
  autoload :Segments, 'hippo/segments'
  autoload :TransactionSets, 'hippo/transaction_sets'

  FieldSeparator = '*'
  CompositeSeparator = ':'
  SegmentSeparator = '~'
end

if __FILE__ == $0
  ts = Hippo::TransactionSets::HIPAA_835.new
  
  ts.ST.TransactionSetIdentifierCode = '835'
  ts.ST.TransactionSetControlNumber = 'RANDOM NUMBER HERE'
 
  ts.BPR.TransactionHandlingCode = 'C'
  ts.BPR.MonetaryAmount = 10000.00
  ts.BPR.CreditDebitFlagCode = 'C'
  ts.BPR.PaymentMethodCode = 'ACH'

  #st = Hippo::Segments::ST.new

  #st.TransactionSetIdentifierCode = '835'
  #st.TransactionSetControlNumber = 'RANDOM NUMBER'

  puts ts.to_s
end

