module Hippo::Segments
  class HL < Base

    segment_identifier  'HL'

    field   :name     => 'HierarchicalIdNumber',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 12,
            :required => true

    field   :name     => 'HierarchicalParentIdNumber',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 12,
            :required => false

    field   :name     => 'HierarchicalLevelCode',
            :datatype => :list,
            :list     => [ '0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','19','20','21','22','23','24','25','26','27','28','29','2A','2B','2C','2D','2E','2F','2G','2H','2I','2J','2K','2L','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AL','AM','AP','AS','AT','BD','BE','BP','CB','CC','CE','CH','CI','CL','CN','CO','CP','CT','CV','DG','DM','DP','DS','EB','EC','ED','EF','EG','EH','EI','EL','EM','EN','EV','EX','FC','FG','FI','FL','FR','GC','GP','GW','IA','IB','IC','IN','IS','IT','IV','JU','KA','KB','KC','KD','KE','KF','KG','KH','KI','KJ','KK','KL','KM','KN','KO','KP','KQ','KR','KS','KT','KV','KW','KX','LD','LN','LP','ML','NI','NS','OS','PA','PB','PC','PD','PE','PH','PI','PK','PL','PP','PR','PS','PT','PY','RA','RB','RC','RD','RE','RF','RG','RH','RL','RM','RP','S1','S2','S3','SA','SB','SC','SD','SE','SF','SG','SH','SI','SL','SP','SR','SS','ST','SY','TA','TD','TI','TS','TU','TX','UT','VI','WB','WC','WL','WP','WR','ZZ']
            :required => true

    field   :name     => 'HierarchicalChildCode',
            :datatype => :list,
            :list     => [ '0','1']
            :required => false

  end
end
