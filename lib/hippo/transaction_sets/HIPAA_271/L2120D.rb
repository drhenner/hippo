module Hippo::TransactionSets
  module HIPAA_271

    class L2120D < Hippo::TransactionSets::Base
      loop_name 'L2120D'    #Dependent Benefit Related Entity Name

      segment Hippo::Segments::NM1,
                :position       => 25

      segment Hippo::Segments::N3,
                :position       => 26

      segment Hippo::Segments::N4,
                :position       => 27

      segment Hippo::Segments::PER,
                :position       => 28

      segment Hippo::Segments::PRV,
                :position       => 29

    end
  end
end
