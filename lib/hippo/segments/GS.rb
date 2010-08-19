module Hippo::Segments
  class GS < Base

    segment_identifier  'GS'

    field   :name     => 'FunctionalIdentifierCode',
            :datatype => :list,
            :list     => [ 'AA','AB','AC','AD','AE','AF','AG','AH','AI','AK','AL','AM','AN','AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ','BA','BB','BC','BD','BE','BF','BL','BS','CA','CB','CC','CD','CE','CF','CH','CI','CJ','CK','CL','CM','CN','CO','CP','CQ','CR','CS','CT','CU','CV','CW','D3','D4','D5','DA','DD','DF','DI','DM','DS','DX','EC','ED','EI','EP','ER','ES','EV','EX','FA','FB','FC','FG','FH','FR','FT','GB','GC','GE','GF','GL','GP','GR','GT','HB','HC','HI','HN','HP','HR','HS','HU','HV','IA','IB','IC','ID','IE','IF','IG','IH','IJ','IM','IN','IO','IR','IS','JB','KM','LA','LB','LI','LN','LR','LS','LT','MA','MC','MD','ME','MF','MG','MH','MI','MJ','MK','MM','MN','MO','MP','MQ','MR','MS','MT','MV','MW','MX','MY','MZ','NC','NL','NP','NR','NT','OC','OG','OR','OW','PA','PB','PC','PD','PE','PF','PG','PH','PI','PJ','PK','PL','PN','PO','PQ','PR','PS','PT','PU','PV','PW','PY','QG','QM','QO','RA','RB','RC','RD','RE','RF','RG','RH','RI','RJ','RK','RL','RM','RN','RO','RP','RQ','RR','RS','RT','RU','RV','RW','RX','RY','RZ','SA','SB','SC','SD','SE','SG','SH','SI','SJ','SL','SM','SN','SO','SP','SQ','SR','SS','ST','SU','SV','SW','TA','TB','TD','TE','TF','TI','TM','TN','TO','TP','TR','TS','TT','TU','TX','UA','UB','UC','UD','UI','UP','UW','VA','VB','VC','VD','VE','VH','VI','VS','WA','WB','WG','WI','WL','WR','WT'],
            :required => false

    field   :name     => 'ApplicationSendersCode',
            :datatype => :alpha_numeric,
            :minimum  => 2,
            :maximum  => 15,
            :required => false

    field   :name     => 'ApplicationReceiversCode',
            :datatype => :alpha_numeric,
            :minimum  => 2,
            :maximum  => 15,
            :required => false

    field   :name     => 'Date',
            :datatype => :alpha_numeric,
            :minimum  => 8,
            :maximum  => 8,
            :required => false

    field   :name     => 'Time',
            :datatype => :alpha_numeric,
            :minimum  => 4,
            :maximum  => 8,
            :required => false

    field   :name     => 'GroupControlNumber',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 9,
            :required => false

    field   :name     => 'ResponsibleAgencyCode',
            :datatype => :list,
            :list     => [ 'T','X'],
            :required => false

    field   :name     => 'VersionReleaseIndustryIdentifierCode',
            :datatype => :list,
            :list     => [ '001000','002000','002001','002002','002003','002031','002040','002041','002042','003000','003010','003011','003012','003020','003021','003022','003030','003031','003032','003040','003041','003042','003050','003051','003052','003060','003061','003062','003070','003071','003072','004000','004010','004011','004012','004020','004021','004022','004030','004031','004032','004040','004041','004042','004050'],
            :required => false

  end
end
