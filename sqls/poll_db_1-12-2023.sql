
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS parts;
DROP TABLE IF EXISTS page_access;
DROP TABLE IF EXISTS ticket_escalation;
DROP TABLE IF EXISTS lookup;
DROP TABLE IF EXISTS parties;
DROP TABLE IF EXISTS mandals;
DROP TABLE IF EXISTS divisions;
DROP TABLE IF EXISTS districts;
DROP TABLE IF EXISTS constituencies;
DROP TABLE IF EXISTS sachivalayam;
DROP TABLE IF EXISTS booths;
DROP TABLE IF EXISTS villages;
DROP TABLE IF EXISTS voters;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS accesss_permissions;
DROP TABLE IF EXISTS designation;
DROP TABLE IF EXISTS navaratnalu;
DROP TABLE IF EXISTS states;
DROP TABLE IF EXISTS divisions;
DROP TABLE IF EXISTS sachivalayam;
DROP TABLE IF EXISTS ticket_master;
DROP TABLE IF EXISTS ticket_attachments;
DROP TABLE IF EXISTS poll_survey;
SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE lookup (
    lookup_pk INT AUTO_INCREMENT PRIMARY KEY,
    lookup_name VARCHAR(50) NOT NULL,
    lookup_valuename VARCHAR(50) NOT NULL
);

INSERT INTO lookup (lookup_name, lookup_valuename)
VALUES 
 
    ('ticketstatuslist', 'open'),
    ('ticketstatuslist', 'resolved'),
    ('ticketstatuslist', 'cancelled'),
    ('ticketstatuslist', 'escalated'),
    ('designationlist', 'SUPERADMIN'),
    ('designationlist', 'CM'),
    ('designationlist', 'STATE_LEADER'),
    ('designationlist', 'MLA'),
    ('designationlist', 'MANDAL_CONVENER'),
    ('designationlist', 'BOOTH_INCHARGE'),
    ('designationlist', 'VOLUNTEER'),
    ('designationlist', 'GRUHASARATHI'),
    ('genderlist', 'MALE'),
    ('genderlist', 'FEMALE'),
    ('genderlist', 'OTHERS'),
    ('guardianlist', 'FATHER'),
    ('guardianlist', 'MOTHER'),
    ('guardianlist', 'HUSBAND'),
    ('attachementtype', 'PDF'),
    ('attachementtype', 'DOC'),
    ('attachementtype', 'IMAGE'),
    ('party_list', 'NEUTRAL'),
    ('party_list', 'YSCRP'),
    ('party_list', 'TDP'),
    ('party_list', 'CONGRESS'),
    ('party_list', 'BJP'),
    ('party_list', 'JANASENA');



-- Create Parties Table
CREATE TABLE parties (
    party_pk INT AUTO_INCREMENT PRIMARY KEY,
    party_name INT NOT NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (party_name) REFERENCES lookup(lookup_pk)
);

-- Create Designation Table
CREATE TABLE designation (
    designation_pk INT AUTO_INCREMENT PRIMARY KEY,
    designation_name INT NOT NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (designation_name) REFERENCES lookup(lookup_pk)
);

-- Create Navaratnalu Table
CREATE TABLE navaratnalu (
    navaratnalu_pk INT AUTO_INCREMENT PRIMARY KEY,
    navaratnalu_name VARCHAR(100) NOT NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL
);

-- Create States Table
CREATE TABLE states (
    state_pk INT AUTO_INCREMENT PRIMARY KEY,
    state_name VARCHAR(100) NOT NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL
);

-- Create Districts Table
CREATE TABLE districts (
    district_pk INT AUTO_INCREMENT PRIMARY KEY,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    state_id INT,
    district_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(state_pk)
);

-- Create Constituencies Table
CREATE TABLE constituencies (
    consistency_pk INT AUTO_INCREMENT PRIMARY KEY,
    consistency_id INT NOT NULL,
    district_pk INT NOT NULL,
    consistency_name VARCHAR(100) NOT NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (district_pk) REFERENCES districts(district_pk)
);

-- Create Mandals Table
CREATE TABLE mandals (
    mandal_pk INT AUTO_INCREMENT PRIMARY KEY,
    consistency_id INT NOT NULL,
    mandal_name VARCHAR(100) NOT NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (consistency_id) REFERENCES constituencies(consistency_pk)
);

-- Create Divisions Table
CREATE TABLE divisions (
    division_pk INT AUTO_INCREMENT PRIMARY KEY,
    mandal_id INT NOT NULL,
    division_name VARCHAR(100) NOT NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (mandal_id) REFERENCES mandals(mandal_pk)
);

-- Create Sachivalayam Table
CREATE TABLE sachivalayam (
    sachivalayam_pk INT AUTO_INCREMENT PRIMARY KEY,
    division_pk INT NOT NULL,
    sachivalayam_name VARCHAR(100) NOT NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (division_pk) REFERENCES divisions(division_pk)
);

--###################################################################

-- Create Parts Table
CREATE TABLE parts (
    part_pk INT AUTO_INCREMENT PRIMARY KEY,
    part_no INT NOT NULL,
    male_votes INT NOT NULL,
    female_votes INT NOT NULL,
    other_votes INT NOT NULL,
    sachivalayam_id INT NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (state_id) REFERENCES states(state_pk),
    FOREIGN KEY (consistency_id) REFERENCES constituencies(consistency_pk),
    FOREIGN KEY (mandal_id) REFERENCES mandals(mandal_pk),
    FOREIGN KEY (division_id) REFERENCES divisions(division_pk),
    FOREIGN KEY (sachivalayam_id) REFERENCES sachivalayam(sachivalayam_pk),
    FOREIGN KEY (booth_id) REFERENCES booths(booth_pk),
    FOREIGN KEY (village_id) REFERENCES villages(village_pk)
);




-- Create Villages Table
CREATE TABLE villages (
    village_pk INT AUTO_INCREMENT PRIMARY KEY,
    booth_pk INT NOT NULL,
    village_name VARCHAR(100) NOT NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (booth_pk) REFERENCES booths(booth_pk)
);

-- Create Users Table
CREATE TABLE users (
    user_pk INT AUTO_INCREMENT PRIMARY KEY,
    user_displayname VARCHAR(100) NOT NULL,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(1000) NOT NULL,
    phone_no VARCHAR(10) NOT NULL,
    office_phone_no VARCHAR(100) DEFAULT NULL,
    age INT DEFAULT NULL,
    email VARCHAR(100) DEFAULT NULL,
    designation_id NULL,
    reporting_manager NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    approvedby INT DEFAULT NULL,
    state_id INT DEFAULT NULL,
    consistency_id INT NOT NULL,
    mandal_id INT NOT NULL,
    division_id INT NOT NULL,
    sachivalayam_id INT NOT NULL,
    booth_id INT NOT NULL,
    village_id INT DEFAULT NULL,
    is_first_login BOOLEAN DEFAULT true,
    otp INT DEFAULT NULL,
    FOREIGN KEY (reporting_manager) REFERENCES users(user_pk),
    FOREIGN KEY (designation_id) REFERENCES designation(designation_pk),
    FOREIGN KEY (state_id) REFERENCES states(state_pk),
    FOREIGN KEY (consistency_id) REFERENCES constituencies(consistency_pk),
    FOREIGN KEY (mandal_id) REFERENCES mandals(mandal_pk),
    FOREIGN KEY (division_id) REFERENCES divisions(division_pk),
    FOREIGN KEY (sachivalayam_id) REFERENCES sachivalayam(sachivalayam_pk),
    FOREIGN KEY (booth_id) REFERENCES booths(booth_pk),
    FOREIGN KEY (village_id) REFERENCES villages(village_pk)
);
--####################################################


-- Create Voters Table
CREATE TABLE voters (
    voter_pk INT AUTO_INCREMENT PRIMARY KEY,
    part_no INT NOT NULL,
    part_slno INT NOT NULL,
    voter_name VARCHAR(100) NOT NULL,
    voter_id VARCHAR(10) NOT NULL,
    guardian INT NOT NULL,
    guardian_name VARCHAR(100) NOT NULL,
    gender INT NOT NULL,
    age INT NOT NULL,
    volunteer_id INT  NULL,
    gruhasaradhi_id INT NULL,
    phone_no VARCHAR(10) NOT NULL,
    permenent_address VARCHAR(500) NOT NULL,
    current_address VARCHAR(500) NOT NULL,
    is_resident BOOLEAN DEFAULT true,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    approvedby INT DEFAULT NULL,
    state_id INT NOT NULL,
    consistency_id INT NOT NULL,
    mandal_id INT NOT NULL,
    division_id INT NOT NULL,
    sachivalayam_id INT NOT NULL,
    booth_id INT NOT NULL,
    village_id INT NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(state_pk),
    FOREIGN KEY (consistency_id) REFERENCES constituencies(consistency_pk),
    FOREIGN KEY (mandal_id) REFERENCES mandals(mandal_pk),
    FOREIGN KEY (division_id) REFERENCES divisions(division_pk),
    FOREIGN KEY (sachivalayam_id) REFERENCES sachivalayam(sachivalayam_pk),
    FOREIGN KEY (booth_id) REFERENCES booths(booth_pk),
    FOREIGN KEY (village_id) REFERENCES villages(village_pk),
    FOREIGN KEY (guardian) REFERENCES lookup(lookup_pk),
    FOREIGN KEY (gender) REFERENCES lookup(lookup_pk),

    FOREIGN KEY (volunteer_id) REFERENCES users(user_pk),
    FOREIGN KEY (gruhasaradhi_id) REFERENCES users(user_pk)
    
    
);



/*
--FOREIGN KEY (part_no) REFERENCES parts(part_no),
--FOREIGN KEY (part_slno) REFERENCES parts(part_slno)
*/



-- Create Access Permissions Table
CREATE TABLE accesss_permissions (
    accesss_permissions_pk INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    add_perm BOOLEAN DEFAULT false,
    edit_perm BOOLEAN DEFAULT false,
    view_perm BOOLEAN DEFAULT true,
    delete_perm BOOLEAN DEFAULT false,
    FOREIGN KEY (user_id) REFERENCES users(user_pk)
);


-- Create Poll Survey Table
CREATE TABLE poll_survey (
    poll_survey_pk INT AUTO_INCREMENT PRIMARY KEY,
    volunteer_id INT NOT NULL,
    voter_pk INT NOT NULL,
    intrested_party INT  NULL,
    voted_party INT  NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (volunteer_id) REFERENCES users(user_pk),
    FOREIGN KEY (voter_pk) REFERENCES voters(voter_pk),
    FOREIGN KEY (intrested_party) REFERENCES parties(party_pk),
    FOREIGN KEY (voted_party) REFERENCES parties(party_pk)
);

-- Create Ticket Master Table
CREATE TABLE ticket_master (
    ticket_master_pk INT AUTO_INCREMENT PRIMARY KEY,
    voter_pk INT DEFAULT NULL,
    volunteer_id INT NOT NULL,
    navaratnalu_id INT NOT NULL,
    reason VARCHAR(5000) NOT NULL,
    is_open BOOLEAN DEFAULT true,
    status_id INT NOT NULL default 1,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (voter_pk) REFERENCES voters(voter_pk),
    FOREIGN KEY (volunteer_id) REFERENCES users(user_pk),
    FOREIGN KEY (navaratnalu_id) REFERENCES navaratnalu(navaratnalu_pk),
    FOREIGN KEY (status_id) REFERENCES lookup(lookup_pk)
);


-- Create Ticket Escalation Table
CREATE TABLE ticket_escalation (
    ticket_escalation_pk INT AUTO_INCREMENT PRIMARY KEY,
    ticket_escalatedon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    escalatedby INT,
    ticket_master_id INT NOT NULL,
    FOREIGN KEY (ticket_master_id) REFERENCES ticket_master(ticket_master_pk)
);


-- Create Ticket Attachments Table
CREATE TABLE ticket_attachments (
    ticket_attachment_pk INT AUTO_INCREMENT PRIMARY KEY,
    ticket_master_id INT NOT NULL,
    attachment_name VARCHAR(250) NOT NULL,
    attachment_type VARCHAR(10) NOT NULL,
    attachments_discription VARCHAR(5000) NOT NULL,
    attachments_url VARCHAR(250) DEFAULT NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (ticket_master_id) REFERENCES ticket_master(ticket_master_pk)
);


-- Create Page_Access Table
CREATE TABLE page_access (
    page_access_pk INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    pagename VARCHAR(100) NOT NULL,
    access BOOLEAN DEFAULT FALSE,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP NULL,
    deletedon TIMESTAMP NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_pk)
);


-- Create notifications Table
CREATE TABLE notifications (
    notifications_pk INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    notification_name VARCHAR(50) NOT NULL,
    notification_description VARCHAR(200) NOT NULL,
    is_seen BOOLEAN DEFAULT false,
    seen_on TIMESTAMP NULL,

    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP NULL,
    deletedon TIMESTAMP NULL,
    createdby INT  NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_pk)
);


CREATE TABLE user_mapping (
    user_mapping_pk INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    part_no INT NOT NULL,
    is_active BOOLEAN DEFAULT true,
    createdon TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedon TIMESTAMP DEFAULT NULL,
    deletedon TIMESTAMP DEFAULT NULL,
    createdby INT NOT NULL,
    updatedby INT DEFAULT NULL,
    deletedby INT DEFAULT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_pk),
    FOREIGN KEY (part_no) REFERENCES parts(part_no)
);




