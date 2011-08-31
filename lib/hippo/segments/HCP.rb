module Hippo::Segments
  class HCP < Base

    segment_identifier  'HCP'

    field   :name     => 'PricingMethodology',
            :datatype => :list,
            :list     => [ '00','01','02','03','04','05','06','07','08','09','10','11','12','13','14'],
            :required => false

    field   :name     => 'MonetaryAmount1',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'MonetaryAmount2',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'ReferenceIdentification1',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => false

    field   :name     => 'Rate',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 9,
            :required => false

    field   :name     => 'ReferenceIdentification2',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 50,
            :required => false

    field   :name     => 'MonetaryAmount3',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 18,
            :required => false

    field   :name     => 'ProductServiceId1',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 48,
            :required => false

    field   :name     => 'ProductServiceIdQualifier',
            :datatype => :list,
            :list     => [ '00','A1','A2','A3','A4','A5','A6','A7','A8','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ','B1','B2','B3','B4','B5','B6','B7','B8','B9','BA','BB','BC','BD','BE','BF','BG','BH','BI','BJ','BK','BL','BM','BN','BO','BP','BQ','BR','BS','BT','BU','BV','BW','BX','BY','BZ','C1','C2','C3','C4','C5','C6','C7','C8','C9','CA','CB','CC','CD','CE','CF','CG','CH','CI','CJ','CK','CL','CM','CN','CO','CP','CQ','CR','CS','CT','CU','CV','CW','CX','CY','CZ','D1','D2','D3','D4','D5','D6','D7','D8','DA','DD','DE','DF','DG','DH','DI','DL','DM','DN','DO','DP','DQ','DR','DS','DT','DU','DV','DW','DX','DY','DZ','E1','E2','E3','E4','E5','E6','EA','EB','EC','ED','EE','EF','EG','EH','EI','EJ','EK','EL','EM','EN','EO','EP','EQ','ER','ES','EU','EX','EZ','F1','F2','F3','F4','F5','F6','F7','F8','F9','FA','FB','FC','FD','FE','FF','FG','FH','FI','FJ','FK','FL','FM','FN','FP','FQ','FR','FS','FT','FU','FV','FW','GA','GC','GD','GE','GI','GK','GN','GQ','GR','GS','GU','HC','HD','HI','HN','HP','IA','IB','IC','ID','IE','IF','IG','II','IM','IN','IQ','IR','IS','IT','IV','IW','IZ','JA','JB','JC','JD','JN','JP','JS','KA','KB','KD','KE','KF','KG','KI','KJ','KK','KL','KM','KN','KP','L1','L2','L3','L4','L5','L6','LA','LB','LC','LD','LG','LM','LN','LP','LR','LS','LT','LU','MA','MB','MC','MD','ME','MF','MG','MH','MI','MJ','MK','MM','MN','MO','MP','MQ','MR','MS','MT','MU','MV','MW','MX','N1','N2','N3','N4','N5','N6','NC','ND','NE','NG','NH','NM','NR','NU','NW','NZ','O0','O7','O8','O9','OA','OB','OC','OD','OE','OF','OG','OH','OI','OL','ON','OO','OP','OR','OT','P1','P2','P3','P4','P5','P6','P7','P8','P9','PA','PB','PC','PD','PE','PF','PG','PH','PI','PJ','PK','PL','PM','PN','PO','PP','PQ','PR','PS','PT','PU','PV','PW','PX','PY','PZ','R0','R1','R2','R3','R4','R5','R6','R7','R8','R9','RA','RB','RC','RD','RE','RF','RG','RH','RI','RJ','RK','RL','RM','RN','RO','RP','RQ','RR','RS','RT','RU','RV','RW','RY','RZ','S1','S2','S3','S4','S5','S6','S7','S8','SA','SB','SC','SD','SE','SF','SG','SH','SI','SJ','SK','SL','SM','SN','SO','SP','SQ','SR','SS','ST','SU','SV','SW','SX','SY','SZ','T2','T3','TA','TB','TC','TD','TE','TF','TG','TH','TI','TJ','TK','TM','TN','TP','TR','TS','TT','TU','TV','TW','TX','TY','TZ','U2','U3','U5','U6','UA','UB','UC','UD','UE','UF','UG','UH','UI','UJ','UK','UL','UM','UN','UO','UP','UQ','UR','US','UT','UV','UX','VA','VB','VC','VE','VI','VM','VN','VO','VP','VS','VT','VU','VV','VX','W1','W2','W5','W6','W7','WA','WB','WC','WD','WE','WF','WG','WJ','WK','WL','WR','WS','XA','XC','XP','XQ','XZ','YP','ZB','ZR','ZZ'],
            :required => false

    field   :name     => 'ProductServiceId2',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 48,
            :required => false

    field   :name     => 'UnitOrBasisForMeasurementCode',
            :datatype => :list,
            :list     => [ '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','1A','1B','1C','1D','1E','1F','1G','1H','1I','1J','1K','1L','1M','1N','1O','1P','1Q','1R','1T','1X','20','21','22','23','24','25','26','27','28','29','2A','2B','2C','2D','2F','2G','2H','2I','2J','2K','2L','2M','2N','2P','2Q','2R','2U','2V','2W','2X','2Y','2Z','30','31','32','33','34','35','36','37','38','39','3B','3C','3E','3F','3G','3H','3I','40','41','43','44','45','46','47','48','4A','4B','4C','4D','4E','4F','4G','4I','4J','4K','4L','4M','4N','4O','4P','4Q','4R','4S','4T','4U','4V','4W','4X','50','51','52','53','54','56','57','58','59','5A','5B','5C','5D','5E','5F','5G','5H','5I','5J','5K','5P','5Q','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','76','77','78','79','80','81','82','83','84','85','86','87','89','8C','8D','8P','8R','8S','8U','90','91','92','93','94','95','96','97','98','99','A8','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN','AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ','B0','B1','B2','B3','B4','B5','B6','B7','B8','B9','BA','BB','BC','BD','BE','BF','BG','BH','BI','BJ','BK','BL','BM','BN','BO','BP','BQ','BR','BS','BT','BU','BV','BW','BX','BY','BZ','C0','C1','C2','C3','C4','C5','C6','C7','C8','C9','CA','CB','CC','CD','CE','CF','CG','CH','CI','CJ','CK','CL','CM','CN','CO','CP','CQ','CR','CS','CT','CU','CV','CW','CX','CY','CZ','D1','D2','D3','D5','D8','D9','DA','DB','DC','DD','DE','DF','DG','DH','DI','DJ','DK','DL','DM','DN','DO','DP','DQ','DR','DS','DT','DU','DW','DX','DY','DZ','E1','E3','E4','E5','E7','E8','E9','EA','EB','EC','ED','EE','EF','EG','EH','EJ','EM','EP','EQ','EV','EX','EY','EZ','F1','F2','F3','F4','F5','F6','F9','FA','FB','FC','FD','FE','FF','FG','FH','FJ','FK','FL','FM','FO','FP','FR','FS','FT','FZ','G2','G3','G4','G5','G6','G7','G8','G9','GA','GB','GC','GD','GE','GF','GG','GH','GI','GJ','GK','GL','GM','GN','GO','GP','GQ','GR','GS','GT','GU','GV','GW','GX','GY','GZ','H1','H2','H4','HA','HB','HC','HD','HE','HF','HG','HH','HI','HJ','HK','HL','HM','HN','HO','HP','HQ','HR','HS','HT','HU','HV','HW','HY','HZ','IA','IB','IC','IE','IF','IG','IH','II','IK','IL','IM','IN','IP','IS','IT','IU','IV','IW','J2','JA','JB','JE','JG','JK','JM','JO','JR','JU','K1','K2','K3','K4','K5','K6','K7','K9','KA','KB','KC','KD','KE','KF','KG','KH','KI','KJ','KK','KL','KM','KO','KP','KQ','KR','KT','KU','KV','KW','KX','L2','LA','LB','LC','LE','LF','LG','LH','LI','LJ','LK','LL','LM','LN','LO','LP','LQ','LR','LS','LT','LX','LY','M0','M1','M2','M3','M4','M5','M6','M7','M8','M9','MA','MB','MC','MD','ME','MF','MG','MH','MI','MJ','MK','ML','MM','MN','MO','MP','MQ','MR','MS','MT','MU','MV','MW','MX','MY','MZ','N1','N2','N3','N4','N6','N7','N9','NA','NB','NC','ND','NE','NF','NG','NH','NI','NJ','NK','NL','NM','NN','NQ','NR','NS','NT','NU','NV','NW','NX','NY','OA','OC','ON','OP','OT','OZ','P0','P1','P2','P3','P4','P5','P6','P7','P8','P9','PA','PB','PC','PD','PE','PF','PG','PH','PI','PJ','PK','PL','PM','PN','PO','PP','PQ','PR','PS','PT','PU','PV','PW','PX','PY','PZ','Q1','Q2','Q3','Q4','Q5','Q6','Q7','QA','QB','QC','QD','QE','QH','QK','QR','QS','QT','QU','R1','R2','R3','R4','R5','R6','R7','R8','R9','RA','RB','RC','RD','RE','RG','RH','RK','RL','RM','RN','RO','RP','RS','RT','RU','S1','S2','S3','S4','S5','S6','S7','S8','S9','SA','SB','SC','SD','SE','SF','SG','SH','SI','SJ','SK','SL','SM','SN','SO','SP','SQ','SR','SS','ST','SV','SW','SX','SY','SZ','T0','T1','T2','T3','T4','T5','T6','T7','T8','T9','TA','TB','TC','TD','TE','TF','TG','TH','TI','TJ','TK','TL','TM','TN','TO','TP','TQ','TR','TS','TT','TU','TV','TW','TX','TY','TZ','U1','U2','U3','U5','UA','UB','UC','UD','UE','UF','UH','UL','UM','UN','UP','UQ','UR','US','UT','UU','UV','UW','UX','UY','UZ','V1','V2','VA','VC','VI','VP','VR','VS','W2','WA','WB','WD','WE','WG','WH','WI','WK','WM','WP','WR','WW','X1','X2','X3','X4','X5','X6','X7','X8','X9','XP','Y1','Y2','Y3','Y4','YD','YL','YR','YT','Z1','Z2','Z3','Z4','Z5','Z6','Z8','ZA','ZB','ZC','ZD','ZE','ZP','ZZ'],
            :required => false

    field   :name     => 'Quantity',
            :datatype => :numeric,
            :minimum  => 1,
            :maximum  => 15,
            :required => false

    field   :name     => 'RejectReasonCode',
            :datatype => :list,
            :list     => [ '01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','95','96','97','98','AA','AB','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN','AO','AR','BA','BC','BD','BG','BL','BO','BP','BR','BS','BV','BW','CA','CB','CI','CL','CM','CN','CP','CR','CS','CT','CU','CW','DD','DG','DM','DP','DR','DS','DV','E1','E2','E3','E4','E5','E6','E7','E8','EA','ER','ET','FD','FR','GS','HB','HH','HX','IA','ID','II','IN','IP','KR','LK','LS','LW','MA','MO','NC','OG','OI','OR','OV','PF','PM','PN','RB','RD','RF','RH','RK','RL','RN','RP','RS','RT','SC','ST','SU','SW','T1','T2','T3','T4','T5','T6','TC','TD','TH','TL','TR','UC','UF','UG','WA','WK','ZZ'],
            :required => false

    field   :name     => 'PolicyComplianceCode',
            :datatype => :list,
            :list     => [ '1','2','3','4','5'],
            :required => false

    field   :name     => 'ExceptionCode',
            :datatype => :list,
            :list     => [ '1','2','3','4','5','6'],
            :required => false

  end
end
