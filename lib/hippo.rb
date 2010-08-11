#require 'hippo/field'
require 'hippo/segment'
#require 'hippo/loop'
#require 'hippo/transaction_set'

module Hippo
  FIELD_SEPARATOR = '*'
  COMPOSITE_SEPARATOR = ':'
  SEGMENT_SEPARATOR = '~'
end

if __FILE__ == $0
  st = Hippo::ST.new

  st.set_value('Transaction Set Identifier Code', '835')
  st.set_value('002', 'abalalkalakj')

  puts st.to_s
end

