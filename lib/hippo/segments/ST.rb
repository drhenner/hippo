module Hippo
  class ST
   include Hippo::Segment 
    
   IDENTIFIER = 'ST'
   FIELDS = [
      { :name     => 'Transaction Set Identifier Code', 
        :datatype => :list, 
        :options  => ['835']
      }, 
      {
        :name => 'Transaction Set Control Number', 
        :datatype => :alpha_numeric  
      }
   ]
  end
end

