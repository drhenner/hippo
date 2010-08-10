module Hippo
  class Hippo::ST
   include Hippo::Segment 

    identifier = 'ST'

    add_field :name => 'Transaction Set Identifier Code', 
              :datatype => :list, 
              :options => [
                            '835'
              ]
    add_field :name => 'Transaction Set Control Number', 
              :datatype => :alpha_numeric                
  
  end
end

