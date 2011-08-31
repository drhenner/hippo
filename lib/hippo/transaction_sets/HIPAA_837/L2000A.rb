module Hippo::TransactionSets
  module HIPAA_837

    class L2000A < Hippo::TransactionSets::Base
      loop_name 'L2000A'    #Billing Provider Hierarchical Level

      segment Hippo::Segments::HL,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 4

      segment Hippo::Segments::PRV,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 5

      segment Hippo::Segments::CUR,
                :minimum        => 0,
                :maximum        => 1,
                :position       => 6

      #Billing Provider Name
      loop    Hippo::TransactionSets::HIPAA_837::L2010AA,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '85'},
                :minimum        => 1,
                :maximum        => 1,
                :position       => 7

      #Pay-to Address Name
      loop    Hippo::TransactionSets::HIPAA_837::L2010AB,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '87'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 8

      #Pay-to Plan Name
      loop    Hippo::TransactionSets::HIPAA_837::L2010AC,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'PE'},
                :minimum        => 0,
                :maximum        => 1,
                :position       => 9

    end
  end
end
