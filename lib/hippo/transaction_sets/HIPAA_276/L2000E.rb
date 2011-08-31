module Hippo::TransactionSets
  module HIPAA_276

    class L2000E < Hippo::TransactionSets::Base
      loop_name 'L2000E'    #Dependent Level

      segment Hippo::Segments::DMG,
                :position       => 6

      #Dependent Name
      loop    Hippo::TransactionSets::HIPAA_837::L2100E,
                :identified_by  => {'NM1.EntityIdentifierCode1' => 'QC'},
                :position       => 7

      #Claim Status Tracking Number
      loop    Hippo::TransactionSets::HIPAA_837::L2200E,
                :identified_by  => {'CLM' => '*'},
                :position       => 8

    end
  end
end
