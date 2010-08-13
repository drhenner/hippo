module Hippo::TransactionSets
  module HIPAA_835
    class Base < Hippo::TransactionSets::Base

      segment Hippo::Segments::ST,
                'TransactionSetIdentifierCode' => '835'
      segment Hippo::Segments::BPR
      segment Hippo::Segments::TRN,
                'TraceTypeCode' => '1'
      segment Hippo::Segments::CUR
      segment Hippo::Segments::REF
      segment Hippo::Segments::REF
      segment Hippo::Segments::DTM,
                'DateTimeQualifier' => '405'
      
      loop    L1000A,
              :identified_by => {'N1.EntityIdentifierCode' => 'PR'},
              :minimum => 1,
              :maximum => 1

      loop    L1000B,
              :identified_by => {'N1.EntityIdentifierCode' => 'PE'},
              :minimum => 1,
              :maximum => 1

      loop    L2000,
              :minimum => 1,
              :maximum => nil

    end

    class L1000A < Hippo::TransactionSets::Base
      segment Hippo::Segments::N1,
              'EntityIdentifierCode' => 'PR'

      segment Hippo::Segments::N3
      segment Hippo::Segments::N4
      segment Hippo::Segments::REF
      segment Hippo::Segments::PER
    end

    class L1000B < Hippo::TransactionSets::Base
      segment Hippo::Segments::N1,
              'EntityIdentifierCode' => 'PE'

      segment Hippo::Segments::N3
      segment Hippo::Segments::N4
      segment Hippo::Segments::REF
      segment Hippo::Segments::PER
    end

    class L2000 < Hippo::TransactionSets::Base
      segment Hippo::Segments::LX
      segment Hippo::Segments::TS3
      segment Hippo::Segments::TS2

      loop    L2100, 
              :idenitied_by => {'CLP.ClaimSubmittersIdentifier' => '!=nil'}
              :minimum => 1
              :maximum => nil
    end

    class L2100 < Hippo::TransactionSets::Base
      segment Hippo::Segments::CLP
      segment Hippo::Segments::CAS
    end
  end
end
