module Hippo
  autoload :Segments,         'hippo/segments'
  autoload :TransactionSets,  'hippo/transaction_sets'
  autoload :Field,            'hippo/field'
  autoload :CompositeField,   'hippo/composite_field'

  FieldSeparator = '*'
  CompositeSeparator = ':'
  SegmentSeparator = '~'
end

def random_chars(count = 5)
  chars = ("a".."z").to_a + ("1".."9").to_a + ("A".."Z").to_a 
  Array.new(count, '').collect{chars[rand(chars.size)]}.join
end

if __FILE__ == $0
  ts = Hippo::TransactionSets::HIPAA_835::Base.new
  
  #ts.ST.TransactionSetIdentifierCode = '835'
  ts.ST do |seg|
    seg.TransactionSetControlNumber = 'RANDOM NUMBER HERE'
  end

  ts.BPR do |seg|
    seg.TransactionHandlingCode = 'C'
    seg.MonetaryAmount = 10000.00
    seg.CreditDebitFlagCode = 'C'
    seg.PaymentMethodCode = 'ACH'
  end

  10.times do |i|
    ts.L2000 do |loop|
      loop.LX do |seg|
        seg.AssignedNumber = i
      end
    end
  end
  #st = Hippo::Segments::ST.new

  #st.TransactionSetIdentifierCode = '835'
  #st.TransactionSetControlNumber = 'RANDOM NUMBER'

  puts ts.to_s
  
  #svc = Hippo::Segments::SVC.new

  #svc.class.fields.each do |f|
  #  svc.send((f.name + '=').to_sym, f.name)
  #end

  #puts svc
end

