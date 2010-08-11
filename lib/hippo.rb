#require 'hippo/field'
require 'hippo/segments'
#require 'hippo/loop'
#require 'hippo/transaction_set'

module Hippo
  FieldSeparator = '*'
  CompositeSeparator = ':'
  SegmentSeparator = '~'
end

if __FILE__ == $0
  st = Hippo::Segments::ST.new

  st.set_value('Transaction Set Identifier Code', '835')
  st.set_value('002', 'abalalkalakj')

  puts st.to_s
end

