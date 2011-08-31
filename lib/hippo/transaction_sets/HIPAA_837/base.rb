module Hippo::TransactionSets
  module HIPAA_837

    class Base < Hippo::TransactionSets::Base

      segment Hippo::Segments::BHT,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 0

      segment Hippo::Segments::REF,
                :minimum        => 1,
                :maximum        => 1,
                :position       => 1

      #Submitter Name
      loop    Hippo::TransactionSets::HIPAA_837::L1000A,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '41'},
                :minimum        => 1,
                :maximum        => 1,
                :position       => 2

      #Receiver Name
      loop    Hippo::TransactionSets::HIPAA_837::L1000B,
                :identified_by  => {'NM1.EntityIdentifierCode1' => '40'},
                :minimum        => 1,
                :maximum        => 1,
                :position       => 3

      #Billing Provider Hierarchical Level
      loop    Hippo::TransactionSets::HIPAA_837::L2000A,
                :identified_by  => {'HL.HierarchicalLevelCode' => '20'},
                :minimum        => 1,
                :maximum        => nil,
                :position       => 4

      #Subscriber Hierarchical Level
      loop    Hippo::TransactionSets::HIPAA_837::L2000B,
                :identified_by  => {'HL.HierarchicalLevelCode' => '22'},
                :minimum        => 1,
                :maximum        => nil,
                :position       => 5

      #Patient Hierarchical Loop
      loop    Hippo::TransactionSets::HIPAA_837::L2000C,
                :identified_by  => {'HL.HierarchicalLevelCode' => '23'},
                :minimum        => 0,
                :maximum        => nil,
                :position       => 6

    end
  end
end
