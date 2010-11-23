module Hippo::Segments
  class BHT < Base

    segment_identifier  'BHT'

    field   :name     => 'HierarchicalStructureCode',
            :datatype => :list,
            :list     => [ '0001','0002','0003','0004','0005','0006','0010','0011','0012','0013','0014','0015','0016','0017','0018','0019','0020','0021','0022','0023','0024','0025','0026','0027','0028','0029','0035','0036','0055','0056','0057','0058','0059','0060','0061','0062','0063','0064','0065','0066','0067','0068','0069','0070','0071','0072','0073','0074','0075','0076','0077','0078','0079','0080','0081','0082','0083','0084','0085','0200','0201','0202','0203','0204','0205','0206','0207','0208','0209','0210','0211','0212','0213','0214','0400','0401','0402','0403','0407','ZZZZ'],
            :required => true

    field   :name     => 'TransactionSetPurposeCode',
            :datatype => :list,
            :list     => [ '00','01','02','03','04','05','06','07','08','10','11','12','13','14','15','16','17','18','19','20','21','22','24','25','26','27','28','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','5C','77','CN','CO','EX','GR','PR','RH','RV','SU','ZZ'],
            :required => true

    field   :name     => 'ReferenceIdentification',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
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

    field   :name     => 'TransactionTypeCode',
            :datatype => :list,
            :list     => [ '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','33','34','35','36','37','38','39','3M','40','41','42','43','44','45','46','47','48','49','50','51','52','54','55','56','57','58','60','62','63','64','65','66','67','68','69','6A','6C','6N','6R','6S','70','71','72','73','74','75','76','77','78','79','80','81','82','83','85','87','88','89','91','94','95','97','98','99','A0','A1','A3','A4','A5','A6','A7','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN','AP','AQ','AR','AS','AT','AV','AW','AZ','BA','BB','BD','BF','BG','BH','BJ','BK','BL','BM','BN','BO','BP','BR','BS','BT','BU','BV','BW','BX','BZ','C0','C1','C2','C3','C4','C5','C6','C7','CA','CB','CC','CD','CE','CF','CG','CH','CI','CJ','CK','CL','CM','CN','CO','CP','CR','CS','CT','CU','CV','CW','CX','CY','CZ','D1','D4','DA','DB','DC','DD','DE','DF','DG','DH','DI','DK','DL','DN','DO','DP','DQ','DR','DS','DT','DU','E1','EA','EB','EC','ED','EF','EI','EM','EP','ER','EX','F1','F6','F7','FA','FB','FC','FD','FE','FF','FG','FI','FL','FM','FN','FP','FR','FS','FT','G1','G2','G3','GA','GI','GR','GS','GT','GU','GV','GW','GX','GY','HA','HB','HC','HD','HE','HF','HG','HP','I1','IA','IB','IC','ID','IE','IF','II','IM','IN','IO','IR','IU','IW','IX','IZ','JM','JO','JR','JS','JU','JX','KB','KC','KD','KE','KF','KG','KH','KI','KJ','KK','KL','KM','KN','KS','KT','LC','LD','LE','LF','LN','LO','LP','LR','LV','M1','MA','MB','MC','MD','ME','MF','MI','ML','MM','MP','MR','MS','MU','N1','N2','N3','N4','N5','N6','N7','N8','NA','NB','NC','ND','NE','NF','NG','NH','NI','NJ','NK','NL','NM','NO','NP','NQ','NR','NS','NT','NU','OC','OF','OP','OR','P1','PA','PB','PC','PD','PE','PF','PG','PH','PI','PL','PM','PO','PP','PR','PS','PT','PU','PV','PW','PX','PZ','Q1','Q2','QA','QB','QC','QD','QE','QF','QG','QH','QJ','QK','QL','QP','QR','R1','R2','R3','R4','R5','R6','R7','R8','RA','RB','RC','RD','RE','RF','RG','RH','RI','RJ','RK','RM','RP','RQ','RS','RT','RU','RZ','S1','S2','S3','S4','SA','SB','SC','SD','SE','SF','SG','SH','SL','SM','SO','SP','SQ','SR','SS','ST','SU','SV','T1','T2','T3','T4','T5','T6','T7','T8','T9','TD','TF','TG','TH','TI','TJ','TK','TL','TP','TR','TS','TT','TX','U1','U2','U4','U5','U9','UA','UC','UD','UF','UI','UM','UO','UP','UR','UT','V1','V2','V3','V4','VH','VJ','VL','VM','VN','VO','VP','VQ','VR','W1','W4','W5','WA','WC','WD','WH','WO','WS','WT','X1','XA','XB','XC','XD','XX','XY','XZ','YI','YR','Z1','Z2','Z3','Z4','ZA','ZB','ZC','ZD','ZE','ZF','ZG','ZH','ZI','ZJ','ZK','ZL','ZM','ZN','ZO','ZP','ZQ','ZR','ZS','ZT','ZU','ZV','ZW','ZX','ZY','ZZ'],
            :required => false

  end
end
