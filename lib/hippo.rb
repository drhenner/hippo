libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

module Hippo
  autoload :Segments,         'hippo/segments'
  autoload :TransactionSets,  'hippo/transaction_sets'
  autoload :Field,            'hippo/field'
  autoload :CompositeField,   'hippo/composite_field'
  autoload :Parser,           'hippo/parser'
  autoload :Demo835,          '../bin/demo_835.rb'
  autoload :Demo276,          '../bin/demo_276.rb'
  
  FieldSeparator = '*'
  CompositeSeparator = ':'
  SegmentSeparator = '~'
end

def random_chars(count = 5)
  chars = ("a".."z").to_a + ("1".."9").to_a + ("A".."Z").to_a 
  Array.new(count, '').collect{chars[rand(chars.size)]}.join
end

if __FILE__ == $0
  #Hippo::Demo835.run
  Hippo::Demo276.run
end

