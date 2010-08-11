module Hippo
  autoload :Segments, 'hippo/segments'
  autoload :TransactionSets, 'hippo/transaction_sets'

  FieldSeparator = '*'
  CompositeSeparator = ':'
  SegmentSeparator = '~'
end

if __FILE__ == $0
  ts = Hippo::TransactionSets::HIPAA835.new

  ts.ST.TransactionSetIdentifierCode = '835'
  ts.ST.set_value('002','RANDOM NUMBER HERE')
  
  ts.segments[1].set_value(1,'C')
  ts.segments[1].set_value(2,1000.00)
  ts.segments[1].set_value(3,'C')

  #st = Hippo::Segments::ST.new

  #st.TransactionSetIdentifierCode = '835'
  #st.TransactionSetControlNumber = 'RANDOM NUMBER'

  puts ts.to_s
end

