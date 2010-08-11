#require 'hippo/field'
require 'hippo/segments'
require 'hippo/transaction_sets'
#require 'hippo/loop'

module Hippo
  FieldSeparator = '*'
  CompositeSeparator = ':'
  SegmentSeparator = '~'
end

if __FILE__ == $0
  ts = Hippo::TransactionSets::HIPPA_835.new

  ts.segments[0].set_value('Transaction Set Identifier Code', '835')
  ts.segments[0].set_value('002','RANDOM NUMBER HERE')
  
  ts.segments[1].set_value(1,'C')
  ts.segments[1].set_value(2,1000.00)
  ts.segments[1].set_value(3,'C')

  puts ts.to_s
end

