module Hippo::Segments
  class ST < Base

    segment_identifier  'ST'

    field   :name     => 'TransactionSetIdentifierCode', 
            :datatype => :list, 
            :options  => ['835']

    field   :name => 'TransactionSetControlNumber', 
            :datatype => :alpha_numeric
    
  end
end
