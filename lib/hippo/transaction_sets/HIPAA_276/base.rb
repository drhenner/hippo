module Hippo::TransactionSets
  module HIPAA_276

    class Base < Hippo::TransactionSets::Base

      segment Hippo::Segments::BHT,
                :position       => 0

      segment Hippo::Segments::REF,
                :position       => 1

      #Information Source Level
      loop    Hippo::TransactionSets::HIPAA_837::L2000A,
                :identified_by  => {'HL.HierarchicalLevelCode' => '20'},
                :maximum        => nil,
                :position       => 2

      #Information Receiver Level
      loop    Hippo::TransactionSets::HIPAA_837::L2000B,
                :identified_by  => {'HL.HierarchicalLevelCode' => '21'},
                :maximum        => nil,
                :position       => 3

      #Service Provider Level
      loop    Hippo::TransactionSets::HIPAA_837::L2000C,
                :identified_by  => {'HL.HierarchicalLevelCode' => '19'},
                :maximum        => nil,
                :position       => 4

      #Subscriber Level
      loop    Hippo::TransactionSets::HIPAA_837::L2000D,
                :identified_by  => {'HL.HierarchicalLevelCode' => '22'},
                :maximum        => nil,
                :position       => 5

      #Dependent Level
      loop    Hippo::TransactionSets::HIPAA_837::L2000E,
                :identified_by  => {'HL.HierarchicalLevelCode' => '23'},
                :maximum        => nil,
                :position       => 6

    end
  end
end
