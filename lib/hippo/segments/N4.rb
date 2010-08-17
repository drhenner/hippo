module Hippo::Segments
  class N4 < Base

    segment_identifier  'N4'

    field   :name     => 'CityName',
            :datatype => :alpha_numeric,
            :minimum  => 2,
            :maximum  => 30,
            :required => false

    field   :name     => 'StateOrProvinceCode',
            :datatype => :alpha_numeric,
            :minimum  => 2,
            :maximum  => 2,
            :required => false

    field   :name     => 'PostalCode',
            :datatype => :alpha_numeric,
            :minimum  => 3,
            :maximum  => 15,
            :required => false

    field   :name     => 'CountryCode',
            :datatype => :alpha_numeric,
            :minimum  => 2,
            :maximum  => 3,
            :required => false

    field   :name     => 'LocationQualifier',
            :datatype => :list,
            :list     => [ 'A','B','C','D','E','F','G','H','I','J','K','L','M','O','P','Q','W','10','11','12','13','14','18','19','20','21','22','27','28','29','30','31','32','33','34','35','36','38','39','40','41','42','43','44','45','46','47','48','49','50','52','53','54','55','57','58','59','60','93','94','A1','AA','AC','AP','AR','B1','BE','BL','BS','C2','CA','CB','CC','CD','CE','CG','CI','CL','CM','CO','CR','CS','CY','DC','DE','DL','DO','DP','DR','DT','EA','EB','EL','FA','FE','FF','FI','FR','FS','FT','FV','GL','IA','IB','IM','IP','IS','IT','KE','KL','KP','LO','MI','MO','MS','MZ','NS','OA','OF','OL','OP','OR','OV','PA','PB','PC','PD','PE','PF','PG','PH','PL','PM','PO','PP','PQ','PR','PS','PT','PU','RA','RC','RE','RG','RJ','RL','RS','RT','SA','SB','SC','SD','SE','SG','SH','SL','SN','SP','SS','ST','SW','TA','TC','TI','TL','TM','TN','TP','TR','TX','UN','UR','UT','VA','VI','VS','WF','WH','WI','X1','ZN','ZZ'],
            :required => false

    field   :name     => 'LocationIdentifier',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 30,
            :required => false

    field   :name     => 'CountrySubdivisionCode',
            :datatype => :alpha_numeric,
            :minimum  => 1,
            :maximum  => 3,
            :required => false

  end
end
