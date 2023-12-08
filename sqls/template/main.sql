CREATE TABLE `registration` (
  `app_no` varchar(250) NOT NULL DEFAULT 'Na',
  `app_dt` date NOT NULL DEFAULT '0000-00-00',
  `ht_no` varchar(100) NOT NULL DEFAULT 'Na',
  `reg_dt` date NOT NULL DEFAULT '0000-00-00',
  `cer_valid` date NOT NULL DEFAULT '0000-00-00',
  `s_name` varchar(250) NOT NULL DEFAULT 'Na',
  `gender` varchar(100) NOT NULL DEFAULT 'Na',
  `s_dob` date NOT NULL DEFAULT '0000-00-00',
  `f_name` varchar(250) NOT NULL DEFAULT 'Na',
  `m_name` varchar(250) NOT NULL DEFAULT 'Na',
  `ss` varchar(100) NOT NULL DEFAULT 'Na',
  `mob_number` varchar(100) NOT NULL DEFAULT 'Na',
  `add1` varchar(100) NOT NULL DEFAULT 'Na',
  `add2` varchar(100) NOT NULL DEFAULT 'Na',
  `add3` varchar(100) NOT NULL DEFAULT 'Na',
  `add_state` varchar(100) NOT NULL DEFAULT 'Na',
  `add_dist` varchar(100) NOT NULL DEFAULT 'Na',
  `course_name` varchar(250) NOT NULL DEFAULT 'Na',
  `ex_month` varchar(100) NOT NULL DEFAULT 'Na',
  `ex_year` bigint(20) NOT NULL DEFAULT 0,
  `inst_name` varchar(250) NOT NULL DEFAULT 'Na',
  `inst_rem` varchar(250) NOT NULL DEFAULT 'Na',
  `praser` varchar(250) NOT NULL DEFAULT 'Na',
  `ref_year` bigint(20) NOT NULL DEFAULT 0,
  `ref_cen_code` varchar(250) NOT NULL DEFAULT 'Na',
  `ref_course_code` varchar(250) NOT NULL DEFAULT 'Na',
  `ref_no_full` varchar(250) NOT NULL DEFAULT 'Na',
  `ref_no_auto` bigint(20) NOT NULL DEFAULT 0,
  `app_amo` bigint(20) NOT NULL DEFAULT 0,
  `amount_dt` date NOT NULL DEFAULT '0000-00-00',
  `bankid` varchar(100) NOT NULL DEFAULT 'Na',
  `amount_rem` varchar(100) NOT NULL DEFAULT 'Na',
  `photo` mediumblob DEFAULT NULL,
  `logged_uname` varchar(100) NOT NULL DEFAULT 'Na',
  `reg_ren` varchar(100) NOT NULL DEFAULT 'Na',
  `inst_dist` varchar(100) NOT NULL DEFAULT 'Na',
  `centre_code` varchar(100) NOT NULL DEFAULT 'Na',
  `boardtype` varchar(100) NOT NULL DEFAULT 'Na',
  `affiliated` varchar(150) NOT NULL DEFAULT 'na',
  `tra_from` date NOT NULL DEFAULT '0000-00-00',
  `tra_to` date NOT NULL DEFAULT '0000-00-00',
  `country` varchar(100) NOT NULL DEFAULT 'Na',
  `state` varchar(200) NOT NULL DEFAULT 'Na',
  `aadhar_no` varchar(50) NOT NULL DEFAULT '000000000000',
  `job_details` varchar(200) NOT NULL DEFAULT 'Na',
  `log_ip` varchar(70) NOT NULL DEFAULT 'Na',
  `sys_dt` date NOT NULL DEFAULT '0000-00-00',
  `ts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `slno` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ref_year`,`ref_no_auto`),
  UNIQUE KEY `slno` (`slno`)
) ENGINE=InnoDB AUTO_INCREMENT=20335 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci


CREATE TABLE `registration_log` (
  `app_no` varchar(250) NOT NULL DEFAULT 'Na',
  `app_dt` date NOT NULL DEFAULT '0000-00-00',
  `ht_no` varchar(100) NOT NULL DEFAULT 'Na',
  `reg_dt` date NOT NULL DEFAULT '0000-00-00',
  `cer_valid` date NOT NULL DEFAULT '0000-00-00',
  `s_name` varchar(250) NOT NULL DEFAULT 'Na',
  `gender` varchar(100) NOT NULL DEFAULT 'Na',
  `s_dob` date NOT NULL DEFAULT '0000-00-00',
  `f_name` varchar(250) NOT NULL DEFAULT 'Na',
  `m_name` varchar(250) NOT NULL DEFAULT 'Na',
  `ss` varchar(100) NOT NULL DEFAULT 'Na',
  `mob_number` varchar(100) NOT NULL DEFAULT 'Na',
  `add1` varchar(100) NOT NULL DEFAULT 'Na',
  `add2` varchar(100) NOT NULL DEFAULT 'Na',
  `add3` varchar(100) NOT NULL DEFAULT 'Na',
  `add_state` varchar(100) NOT NULL DEFAULT 'Na',
  `add_dist` varchar(100) NOT NULL DEFAULT 'Na',
  `course_name` varchar(250) NOT NULL DEFAULT 'Na',
  `ex_month` varchar(100) NOT NULL DEFAULT 'Na',
  `ex_year` bigint(20) NOT NULL DEFAULT 0,
  `inst_name` varchar(250) NOT NULL DEFAULT 'Na',
  `inst_rem` varchar(250) NOT NULL DEFAULT 'Na',
  `praser` varchar(250) NOT NULL DEFAULT 'Na',
  `ref_year` bigint(20) NOT NULL DEFAULT 0,
  `ref_cen_code` varchar(250) NOT NULL DEFAULT 'Na',
  `ref_course_code` varchar(250) NOT NULL DEFAULT 'Na',
  `ref_no_full` varchar(250) NOT NULL DEFAULT 'Na',
  `ref_no_auto` bigint(20) NOT NULL DEFAULT 0,
  `app_amo` bigint(20) NOT NULL DEFAULT 0,
  `amount_dt` date NOT NULL DEFAULT '0000-00-00',
  `bankid` varchar(100) NOT NULL DEFAULT 'Na',
  `amount_rem` varchar(100) NOT NULL DEFAULT 'Na',
  `photo` mediumblob DEFAULT NULL,
  `logged_uname` varchar(100) NOT NULL DEFAULT 'Na',
  `reg_ren` varchar(100) NOT NULL DEFAULT 'Na',
  `inst_dist` varchar(100) NOT NULL DEFAULT 'Na',
  `centre_code` varchar(100) NOT NULL DEFAULT 'Na',
  `boardtype` varchar(100) NOT NULL DEFAULT 'Na',
  `affiliated` varchar(150) NOT NULL DEFAULT 'na',
  `tra_from` date NOT NULL DEFAULT '0000-00-00',
  `tra_to` date NOT NULL DEFAULT '0000-00-00',
  `country` varchar(100) NOT NULL DEFAULT 'Na',
  `state` varchar(200) NOT NULL DEFAULT 'Na',
  `aadhar_no` varchar(50) NOT NULL DEFAULT '000000000000',
  `job_details` varchar(200) NOT NULL DEFAULT 'Na',
  `log_ip` varchar(70) NOT NULL DEFAULT 'Na',
  `sys_dt` date NOT NULL DEFAULT '0000-00-00',
  `ts` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `slno` bigint(20) DEFAULT 0,
  `slno_log` bigint(20) NOT NULL AUTO_INCREMENT,
  `ts_log` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`slno_log`),
  UNIQUE KEY `slno_log` (`slno_log`)
) ENGINE=InnoDB AUTO_INCREMENT=979 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci



CREATE TABLE `country` (
  `countryid` bigint(255) NOT NULL auto_increment,
  `countryname` varchar(255) default NULL,
  `state_name` varchar(100) NOT NULL default 'No',
  PRIMARY KEY  (`countryid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

#
# Data for table "country"
#

INSERT INTO `country` VALUES (2,'Anantapur','Andhra Pradesh'),(3,'Chittoor','Andhra Pradesh'),(4,'Kadapa','Andhra Pradesh'),(5,'East Godavari','Andhra Pradesh'),(6,'Guntur','Andhra Pradesh'),(10,'Krishna','Andhra Pradesh'),(11,'Kurnool','Andhra Pradesh'),(15,'Nellore','Andhra Pradesh'),(17,'Prakasam','Andhra Pradesh'),(20,'Srikakulam','Andhra Pradesh'),(21,'Visakhapatnam','Andhra Pradesh'),(22,'Vizianagaram','Andhra Pradesh'),(24,'West Godavari','Andhra Pradesh'),(25,'Chennai','Chennai'),(26,'-','-'),(27,'Bhadradri Kothagudem','Telangana'),(28,'Karimnagar','Telangana'),(29,'Mahaboob Nagar','Telangana');

#
# Structure for table "course"
#

CREATE TABLE `course` (
  `course_name` varchar(150) NOT NULL default '',
  `course_code` varchar(50) NOT NULL default '',
  `course_code2` varchar(250) NOT NULL default 'na',
  `boardtype` varchar(100) NOT NULL default '',
  `course_code_db` varchar(100) NOT NULL default 'na',
  `flag1` varchar(250) NOT NULL default 'yes',
  `slno` bigint(20) NOT NULL auto_increment,
  PRIMARY KEY  (`course_code`),
  UNIQUE KEY `slno` (`slno`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;

#
# Data for table "course"
#

INSERT INTO `course` VALUES ('Certificate in Medical Laboratory Technician (One Year) Course','0026','na','na','na','yes',20),('M.Sc. (MLT)','0027','na','na','na','yes',21),('Certificate in Laboratory Technician Course (In-service Candidate)','0028','na','na','na','yes',22),('Diploma in Laboratory Attendant Course','0029','na','na','na','yes',23),('Intermediate Vocational - Medical LabTechnician Course','0030','na','na','na','yes',24),('Bachelor in Medical Laboratory Technology (BMLT)','0031','na','na','na','yes',25),('P.G. Diploma in Medical Laboratory Technology','0032','na','na','na','yes',26),('B.Sc (MLT)','0033','na','na','na','yes',27),('P.G. Diploma in Emergency Medical Care','0034','na','na','na','yes',28),('P.G. Diploma in Clinical Bio Chemistry','0035','na','na','na','yes',29),('Master of Science in Medical Bio Chemistry','0036','na','na','na','yes',30),('Master of Science in Clinical Micro Biology','0037','na','na','na','yes',31),('Master of Science in  Micro Biology','0038','na','na','na','yes',32),('Master of Science in Bio Chemistry','0039','na','na','na','yes',33),('Clinical Assistance (VOC)','0040','na','na','na','yes',34),('P.G Diploma in Radiology & Imaging Technology','0041','na','na','na','yes',35),('Diploma in Nuclear Medicine Technology','0042','na','na','na','yes',36),('X-Ray Technician (XRT) (VOC)','0043','na','na','na','yes',37),('Diploma in Medical Radio-Isotopes Technique Course','0044','na','na','na','yes',38),('P.G. Diploma in Radiography & Imaging Technology','0045','na','na','na','yes',39),('Bachelor of Science in Medical Imaging Technology','0046','na','na','na','yes',40),('Bachelor of Radiology &  Imaging Technology','0047','na','na','na','yes',41),('Certificate in Rural Ultra Sonography Technologist Course','0048','na','na','na','yes',42),('P.G. Diploma in Anaesthesia Technology','0049','na','na','na','yes',43),('Diploma in Physiotherapy','0051','na','na','na','yes',45),('Bachelor of Physiotherapy (Condensed Course)','0052','na','na','na','yes',46),('Bachelor of Physiotherapy','0053','na','na','na','yes',47),('Master of Physiotherapy (Sports Medicine)','0054','na','na','na','yes',48),('Master of Physiotherapy','0055','na','na','na','yes',49),('Physiotherapy (Voc)','0056','na','na','na','yes',50),('Master of Physiotherapy (Orthopaedics)','0057','na','na','na','yes',51),('Master of Physiotherapy (Neurology)','0058','na','na','na','yes',52),('Bachelor of Occupational Therapy','0059','na','na','na','yes',53),('Diploma in Transfusion Medicine Technician Course','0060','na','na','na','yes',54),('P.G. Diploma in Transfusion Technology','0061','na','na','na','yes',55),('P.G. Diploma in Medical records Science','0062','na','na','na','yes',56),('Tranfusion Medicine Technician (One Year) Course','0063','na','na','na','yes',57),('P.G. Diploma in Hospital Sterilization Management & Operation \nTheatre Technology','0064','na','na','na','yes',58),('P.G. Diploma in Medical Informatics','0065','na','na','na','yes',59),('Certificate in Telemedicine Technologist Course','0066','na','na','na','yes',60),('Bachelor of Health Education','0067','na','na','na','yes',61),('Master of Social Work (Medical Social Work)','0068','na','na','na','yes',62),('Certificate in Sanitary Inspector (One Year) Course conducted by Medical Colleges','0069','na','na','na','yes',63),('National Trade Certificate in Health Sanitary Inspector Course','0070','na','na','na','yes',64),('One Year Diploma Course in Public Health & Sanitation Technology','0071','na','na','na','yes',65),('Sanitary Inspectors Diploma (One Year) Course','0072','na','na','na','yes',66),('One Year Diploma  in Public Health & Sanitation Technology','0073','na','na','na','yes',67),('One Year Certificate of Public Health & Sanitation Technology','0074','na','na','na','yes',68),('P.G. Diploma in Health Sciences in Public Health','0075','na','na','na','yes',69),('P.G. Diploma in Physician Assistanti','0076','na','na','na','yes',70),('Certificate in Multi Purpose Health Worker (Male) Course','0077','na','na','na','yes',71),('Certificate in Multi Purpose Health Worker (Male) Course (In-service Candidate)','0078','na','na','na','yes',72),('Certificate in Multi Purpose Health Worker (Female) Course','0079','na','na','na','yes',73),('Multi Purpose Health Worker (Female) (Vocational) Course','0080','na','na','na','yes',74),('Multi Purpose Health Worker (Male) (Vocational) Course','0081','na','na','na','yes',75),('Certificate in Emergency Paramedic Technlogist Course','0082','na','na','na','yes',76),('Diploma in Vascular Surgery Technician (One Year) Course','0083','na','na','na','yes',77),('P.G Diploma in Cardiac Pulmonary Perfusion Technology','0084','na','na','na','yes',78),('P. G. Diploma in Cardiovascular  Technology','0085','na','na','na','yes',79),('P.G Diploma in Cardiac Medical Lab  Technology','0086','na','na','na','yes',80),('P.G. Diploma in Neurophysiology (EEG& ENMG) Technology','0087','na','na','na','yes',81),('P.G Diploma in Neurotechnology','0088','na','na','na','yes',82),('Ophthalmic Technician (Voc)','0090','na','na','na','yes',84),('Bachelor of Science in Optometry','0091','na','na','na','yes',85),('Dental Hygienist (Voc)','0092','na','na','na','yes',86),('Dental Technician (Voc)','0093','na','na','na','yes',87),('P.G. Diploma in Dialysis Technology','0094','na','na','na','yes',88),('P.G. Diploma in Nutritional Therapy','0095','na','na','na','yes',89),('Master of Science in Home Science (Clinical Nutrition & Dietetics)','0096','na','na','na','yes',90),('Bachelor of Science in Appl Nutrition&Public Health','0097','na','na','na','yes',91),('P.G. Diploma in Cancer Care Rehabilitation','0098','na','na','na','yes',92),('Certificate in Radiographic Assistant (One Year) Course','0099','na','na','na','yes',93),('Diploma in Medical Lab Technician (Two Years) Course','01','DMLT','APPMB','dmlt','yes',1),('Certificate in E.C.G.Technician (One Year) Course','0100','na','na','na','yes',94),('Certificate in Anesthesia Technician (One Year) Course','0101','na','na','na','yes',95),('Certificate in Blood Banking Technician (One Year) Course','0103','na','na','na','yes',97),('P.G. Diploma in Emergency Medical Care (Advance - 2 years)','0104','na','na','na','yes',98),('Certificate in Cardiology Technician (One Year)  Course','0105','na','na','na','yes',99),('Master of Physiotherapy in Cardiovascular & Pulmonolgy\r\n','0106','na','na','na','yes',100),('Master of Physiotherapy (Nero Sciences) ','0107','na','na','na','yes',101),('Certificate in Cath Lab Technician (One Year)  Course','0108','na','na','na','yes',102),('Bachelor of Science in Anaesthesia Technology','0109','na','na','na','yes',103),('Certificate in Dark Room Assistant (One Year) Course','0110','na','na','na','yes',105),('Diploma in Blood Bank Technician  (Two Years) Course','0111','DBBT','na','na','yes',18),('Diploma in Dental Technician  (Two Years) Course','0112','DDT','na','na','yes',10),('Diploma in Hospitality Food Service Management Technician (Two Years) Course ','0113','DHFSM','na','na','yes',104),('Certificate in Laboratory Attendant (One Year) Course','0114','na','na','na','yes',106),('Bachelor of Science in Urology Technology','0115','na','na','na','yes',107),('Bachelor of Science in Neurophysiology (EEG & ENMG) Technology','0116','na','na','na','yes',108),('Bachelor of Science in ECG & Cardiovascular Technology','0117','na','na','na','yes',109),('\r\nBethesda Institute of Health Sciences , Visakhapatnam, A.P.\r\nDiploma in Multipurpose Health Assistant (Male) (Two Years) Course\r\n','0118','na','na','na','yes',110),('Certificate in Laboratory Attendant Course (One Year) for In-Service Candidates','0119','na','na','na','yes',111),('Bachelar of Science in Urology Technology','0120','na','na','na','yes',112),('P.G Diploma in ECG & Cardiovascular Technology','0121','na','na','na','yes',113),('P.G Diploma in Medical Microbiology Laboratory Technology','0122','na','na','na','yes',114),('P.G Diploma in Radiography & Imaging Technology','0123','na','na','na','yes',115),('Certificate in Radiographic Assistant Course (One year) for In-Service Candidates','0124','na','na','na','yes',117),('Bachelor of Science in Nuclear Medicine Technology','0125','na','na','na','yes',118),('Certificate in Perfusion Technician (One Year) Course','0126','na','na','na','yes',119),('Bachelor of Optometry','0127','na','na','na','yes',120),('Diploma in Medical Lab Technician Course(One Year)','0128','na','na','na','yes',121),('Diploma in Medical Laboratory Attendant Course(LA)','0129','na','na','na','yes',122),('Bachelor of Science','0130','na','na','na','yes',123),('Bachelor of Science in Cardiac Pulmonary Perfusion Technology','0131','na','na','na','yes',124),('Bachelor of Science Radiography','0132','na','na','na','yes',125),('P.G Diploma in Respiratory Therapy Technology','0133','na','na','na','yes',126),('P.G Diploma in Perfusion Technology','0134','na','na','na','yes',127),('Advanced P.G Diploma in Dialysis Technology','0135','na','na','na','yes',128),('Maddi Pattabhi Rama Reddy Degree College','0136','na','na','na','yes',129),('Bachelor of Science In Dialysis Technology','0137','na','na','na','yes',130),('Diploma in Operation Theatre Assistant Two Years) Course','0138','na','na','na','yes',131),('P.G. Diploma in Diaiysis Management','0139','na','na','na','yes',132),('P.G. Diploma in Cathlab Technology','0140','na','na','na','yes',133),('P.G. Diploma in Radiation Therapy Technology','0141','na','na','na','yes',134),('P G Diploma in Medical Imaging Techology','0142','na','na','na','yes',135),('Bachelor of Science (Cardiac Care Technology)','0143','na','na','na','yes',136),('Diploma in Multipurpose Health Assistant-Male (One Year) Course','0144','na','na','na','yes',137),('Advanced P G Diploma In Medical Imaging Technology','0145','na','na','na','yes',138),('Multi Purpose Health Worker(Female) (Vocational) Nursing Course','0146','na','na','na','yes',139),('P G Diploma in Medical Records Training','0147','na','na','na','yes',140),('B.Sc Emergency Medical Services Technology.','0148','na','na','na','yes',141),('P G Diploma in Dialysis Management','0149','na','na','na','yes',142),('Advanced P G Diploma in Cardiac Technology','0150','na','na','na','yes',143),('Diploma in Medical X-Ray Technology Training (Two Years) Course','0151','na','na','na','yes',144),('Advanced P G Diploma in Emergency Care','0152','na','na','na','yes',145),('Certificate of Laboratory Technicians Course','0153','na','na','na','yes',146),('National Trade Certificate in Health Sanitary Inspector Course Conducted By the Emp& Trg Dept., Govt. of A.P','0154','na','na','na','yes',147),('Advanced P G Diploma in Physician Assistant','0155','na','na','na','yes',148),('P.G Dipolma in Operation Theater Technician','0156','na','na','na','yes',149),('Dipolma in Operation Theater Assistant One Year Course','0157','na','na','na','yes',150),('Dipolma in Medical Lab Technician Course','0158','na','na','na','yes',151),('Bachelor of Science in Neurophysiology Technology','0159','na','na','na','yes',152),('Master of  Science in Perfusion Technology','0160','na','na','na','yes',153),('Advanced PG Dipolma in Anaesthesia Technology','0161','na','na','na','yes',154),('B.Sc Anesthesiology Technology & Operation Technology','0162','na','na','na','yes',155),('B.Sc Perfusion Technology','0163','na','na','na','yes',156),('B.Sc Imaging Technology','0164','na','na','na','yes',157),('B.Sc Cardiac Care Technology & Cardio Vascular Technology','0165','na','na','na','yes',158),('B.Sc Emergency Medical Technology','0166','na','na','na','yes',159),('B.Sc Optometry Technology','0167','na','na','na','yes',160),('B.Sc Respiratory Therapy Technology','0168','na','na','na','yes',161),('B.Sc Renal Dialysis Technology','0170','na','na','na','yes',163),('Bachelor of Science in Physician Assistant','0171','na','na','na','yes',164),('Bachelor of Science in Radiography and Imagaing Technology','0172','na','na','na','yes',165),('Diploma in Optometry Technician (Two Years) Course','02','DOM','APPMB','dom','yes',8),('Diploma in Multipurpose Health Assistant (Male) (Two Years) Course','03','DMPHA(Male)','APPMB','dmpha_m','yes',17),('Diploma in Opthalmic Assistant  (Two Years) Course','04','DOA','APPMB','doa','yes',3),('Diploma in Audiometry Technician  (Two Years) Course','05','DAM','APPMB','dam','yes',19),('Diploma in Radiotherapy Technician  (Two Years) Course','06','DRTT','APPMB','drtt','yes',9),('Diploma in Perfusion Technician (Two Years) Course','07','DPERFU','APPMB','dperfu','yes',7),('Diploma in Dialysis Technician  (Two Years) Course','08','DDIALY','APPMB','ddialy','yes',4),('Diploma in Medical Imaging Technician  (Two Years) Course','09','DMIT','APPMB','dmit','yes',2),('Diploma in Respiratory Therapy Technician  (Two Years) Course','10','DREST','APPMB','drest','yes',5),('Diploma in Medical Sterilization & Operation Theatre Technician (Two Years) Course','11','DMST','APPMB','dmst','yes',6),('Diploma in Anesthesia Technician (Two Years) Course','12','DANS','APPMB','dans','yes',16),('Diploma in Cath Lab Technician (Two Years) Course','13','DCLT','APPMB','dclt','yes',14),('Diploma in Cardiology Technician (Two Years) Course','14','DCARDIO','APPMB','dcardio','yes',13),('Diploma in Radiographic Assistant (Two Years) Course','15','DRGA','APPMB','drga','yes',11),('Diploma in Dark Room Assistant (Two Years) Course','16','DDRA','APPMB','ddra','yes',12),('Diploma in ECG Technician (Two Years) Course','17','DECG','APPMB','decg','yes',15),('Diploma in Hospital Food Service Management (Two Years) Course','18','DHFSM','APPMB','dhfsm','yes',116);

