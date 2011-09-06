module Hippo::TransactionSets
  module HIPAA_999

    class L2000 - AK2 < Hippo::TransactionSets::Base
      loop_name 'L2000 - AK2'    #Transaction Set Response Header

      #Transaction Set Response Header
      segment Hippo::Segments::AK2,
                :name           => 'Transaction Set Response Header',
                :minimum        => 0,
                :maximum        => 1,
                :position       => 300

      #Error Identification
      loop    Hippo::TransactionSets::HIPAA_837::L2100 - AK2,
                :name           => 'Error Identification',
                :minimum        => 0,
                :maximum        => nil,
                :position       => 400

      #Transaction Set Response Trailer
      segment Hippo::Segments::IK5,
                :name           => 'Transaction Set Response Trailer',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 800

    end
  end
end
