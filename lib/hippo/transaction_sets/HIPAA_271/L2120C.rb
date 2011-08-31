module Hippo::TransactionSets
  module HIPAA_271

    class L2120C < Hippo::TransactionSets::Base
      loop_name 'L2120C'    #Subscriber Benefit Related Entity Name

      segment Hippo::Segments::NM1,
                :position       => 24

      segment Hippo::Segments::N3,
                :position       => 25

      segment Hippo::Segments::N4,
                :position       => 26

      segment Hippo::Segments::PER,
                :position       => 27

      segment Hippo::Segments::PRV,
                :position       => 28

    end
  end
end
