module Hippo::Segments
  class PER < Base

    segment_identifier  'PER'

    field   :name     => 'ContactFunctionCode',
            :datatype => :list,
            :list     => [ '1A','1B','1C','1D','1E','1F','1G','1H','1I','3A','A1','A2','A3','A4','A5','A6','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AL','AM','AN','AP','AR','AS','AT','AU','AV','AW','AX','BA','BB','BC','BD','BI','BJ','BK','BL','BM','BP','BS','BU','C1','C2','CA','CB','CC','CD','CE','CF','CG','CH','CI','CJ','CK','CL','CM','CN','CO','CP','CR','CS','CT','CU','CV','CW','CX','CY','CZ','DA','DC','DD','DE','DF','DI','DM','DN','DV','E1','E2','EA','EB','EC','ED','EF','EG','EM','EN','EO','EP','ES','EV','EX','FA','FB','FC','FD','FF','FL','FM','FN','FO','FP','FQ','FR','GA','GB','GC','GE','GR','HM','HR','IC','IO','IP','IS','KA','KB','KC','KP','KT','LD','LG','MA','MB','MC','MD','ME','MG','MK','ML','MM','NA','NC','NP','NT','OA','OC','OD','OS','OW','PA','PB','PC','PD','PE','PF','PG','PH','PI','PJ','PK','PL','PM','PN','PO','PP','PQ','PR','PS','PT','PU','PV','PW','PX','PY','PZ','QA','QC','QI','QM','QP','QR','QY','RA','RB','RC','RD','RE','RF','RG','RP','RQ','RS','RZ','SA','SB','SC','SD','SE','SF','SG','SH','SI','SJ','SK','SL','SM','SN','SO','SP','SQ','SR','SS','ST','SU','SV','SW','SY','TA','TB','TC','TD','TE','TH','TM','TN','TP','TR','TY','UG','UP','UQ','UR','VM','VP','WH','WI','WR','WV','ZZ'],
            :required => true

    field   :name     => 'Name',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 60,
            :required => false

    field   :name     => 'CommunicationNumberQualifier1',
            :datatype => :list,
            :list     => [ 'AA','AB','AC','AD','AE','AP','AS','AU','BN','BT','CA','CP','DN','EA','ED','EM','EX','FT','FU','FX','HF','HP','IT','MN','NP','OF','OT','PA','PC','PP','PS','SP','TE','TL','TM','TN','TX','UR','VM','WC','WF','WP'],
            :required => false

    field   :name     => 'CommunicationNumber1',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 256,
            :required => false

    field   :name     => 'CommunicationNumberQualifier2',
            :datatype => :list,
            :list     => [ 'AA','AB','AC','AD','AE','AP','AS','AU','BN','BT','CA','CP','DN','EA','ED','EM','EX','FT','FU','FX','HF','HP','IT','MN','NP','OF','OT','PA','PC','PP','PS','SP','TE','TL','TM','TN','TX','UR','VM','WC','WF','WP'],
            :required => false

    field   :name     => 'CommunicationNumber2',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 256,
            :required => false

    field   :name     => 'CommunicationNumberQualifier3',
            :datatype => :list,
            :list     => [ 'AA','AB','AC','AD','AE','AP','AS','AU','BN','BT','CA','CP','DN','EA','ED','EM','EX','FT','FU','FX','HF','HP','IT','MN','NP','OF','OT','PA','PC','PP','PS','SP','TE','TL','TM','TN','TX','UR','VM','WC','WF','WP'],
            :required => false

    field   :name     => 'CommunicationNumber3',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 256,
            :required => false

    field   :name     => 'ContactInquiryReference',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 20,
            :required => false

  end
end
