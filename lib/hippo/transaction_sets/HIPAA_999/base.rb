module Hippo::TransactionSets
  module HIPAA_999

    class Base < Hippo::TransactionSets::Base

      #Transaction Set Header
      segment Hippo::Segments::ST,
                :name           => 'Transaction Set Header',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 100

      #Functional Group Response Header
      segment Hippo::Segments::AK1,
                :name           => 'Functional Group Response Header',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 200

      #Transaction Set Response Header
      loop    Hippo::TransactionSets::HIPAA_837::L2000AK2,
                :name           => 'Transaction Set Response Header',
                :minimum        => 0,
                :maximum        => nil,
                :position       => 300

      #Functional Group Response Trailer
      segment Hippo::Segments::AK9,
                :name           => 'Functional Group Response Trailer',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 900

      #Transaction Set Trailer
      segment Hippo::Segments::SE,
                :name           => 'Transaction Set Trailer',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 1000

    end
  end
end
