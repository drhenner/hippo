module Hippo::TransactionSets
  module HIPAA_270

    class Base < Hippo::TransactionSets::Base

      segment Hippo::Segments::BHT,
                :position       => 0

      #Information Source Level
      loop    Hippo::TransactionSets::HIPAA_837::L2000A,
                :identified_by  => {'HL.HierarchicalLevelCode' => '20'},
                :maximum        => nil,
                :position       => 1

      #Information Receiver Level
      loop    Hippo::TransactionSets::HIPAA_837::L2100B,
                :identified_by  => {'HL.HierarchicalLevelCode' => '21'},
                :maximum        => nil,
                :position       => 2

      #Subscriber Level
      loop    Hippo::TransactionSets::HIPAA_837::L2000C,
                :identified_by  => {'HL.HierarchicalLevelCode' => '22'},
                :maximum        => nil,
                :position       => 3

      #Dependent Level
      loop    Hippo::TransactionSets::HIPAA_837::L2000D,
                :identified_by  => {'HL.HierarchicalLevelCode' => '23'},
                :maximum        => nil,
                :position       => 4

    end
  end
end
