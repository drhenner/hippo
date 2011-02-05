libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

module Hippo
  autoload :Segments,         'hippo/segments'
  autoload :TransactionSets,  'hippo/transaction_sets'
  autoload :Field,            'hippo/field'
  autoload :CompositeField,   'hippo/composite_field'
  autoload :Parser,           'hippo/parser'

  FieldSeparator = '*'
  CompositeSeparator = ':'
  SegmentSeparator = '~'
end
