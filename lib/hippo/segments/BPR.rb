module Hippo::Segments
  class BPR
    include Hippo::Segments::Base 

    def self.identifier
      'BPR'
    end

    def self.fields
      [
        { :sequence => 1,
          :name     => 'Transaction Handling Code', 
          :datatype => :list, 
          :options  => ['C','D','H','I','P','U','X']}, 
        { :sequence => 2,
          :name     => 'Monetary Amount', 
          :datatype => :numeric},
        { :sequence => 3,
          :name     => 'Credit/Debit Flag Code',
          :datatype => :list,
          :options  => ['C','D']},
        { :sequence => 4,
          :name     => 'Payment Method Code',
          :datatype => :list,
          :options  => ['ACH','BOP','CHK','FWT','NON']}
      ]
    end
  end
end
