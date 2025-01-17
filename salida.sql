-- Lock Database
UPDATE ADMIN.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'MGLDCRUZ (172.29.48.1)', LOCKGRANTED = SYSTIMESTAMP WHERE ID = 1 AND LOCKED = 0;

-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: changelog.xml
-- Ran at: 4/07/24, 14:49
-- Against: ADMIN@jdbc:oracle:thin:@oracle-db.cdo8ebvqfs7g.us-east-1.rds.amazonaws.com:1521:ORCL
-- Liquibase version: 4.28.0
-- *********************************************************************

-- Changeset changelogs/addColumnPhone.yaml::add-column-phone::diego
ALTER TABLE ADMIN.cliente2 ADD telefono VARCHAR2(20);

INSERT INTO ADMIN.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-column-phone', 'diego', 'changelogs/addColumnPhone.yaml', SYSTIMESTAMP, 11, '9:7872bd88cff3519fb4e98af628cba1bb', 'addColumn tableName=cliente2', '', 'EXECUTED', NULL, NULL, '4.28.0', '0122571515');

-- Release Database Lock
UPDATE ADMIN.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

