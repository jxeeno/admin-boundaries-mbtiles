-- ********************************************************************************************
-- ********************************************************************************************
-- Create SQLITE tables 
-- ********************************************************************************************
-- ********************************************************************************************

CREATE TABLE ADDRESS_ALIAS (
 address_alias_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 principal_pid varchar(15) NOT NULL,
 alias_pid varchar(15) NOT NULL,
 alias_type_code varchar(10) NOT NULL,
 alias_comment varchar(200)
);

CREATE TABLE ADDRESS_ALIAS_TYPE_AUT (
 code varchar(10) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(30)
);

CREATE TABLE ADDRESS_CHANGE_TYPE_AUT (
 code varchar(50) PRIMARY KEY NOT NULL,
 name varchar(100) NOT NULL,
 description varchar(500)
);

CREATE TABLE ADDRESS_DEFAULT_GEOCODE (
 address_default_geocode_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 address_detail_pid varchar(15) NOT NULL,
 geocode_type_code varchar(4) NOT NULL,
 longitude numeric(11,8),
 latitude numeric(10,8)
);

CREATE TABLE ADDRESS_DETAIL (
 address_detail_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_last_modified date,
 date_retired date,
 building_name varchar(200),
 lot_number_prefix varchar(2),
 lot_number varchar(5),
 lot_number_suffix varchar(2),
 flat_type_code varchar(7),
 flat_number_prefix varchar(2),
 flat_number numeric(5),
 flat_number_suffix varchar(2),
 level_type_code varchar(4),
 level_number_prefix varchar(2),
 level_number numeric(3),
 level_number_suffix varchar(2),
 number_first_prefix varchar(3),
 number_first numeric(6),
 number_first_suffix varchar(2),
 number_last_prefix varchar(3),
 number_last numeric(6),
 number_last_suffix varchar(2),
 street_locality_pid varchar(15),
 location_description varchar(45),
 locality_pid varchar(15) NOT NULL,
 alias_principal char(1),
 postcode varchar(4),
 private_street varchar(75),
 legal_parcel_id varchar(20),
 confidence numeric(1),
 address_site_pid varchar(15) NOT NULL,
 level_geocoded_code numeric(2) NOT NULL,
 property_pid varchar(15),
 gnaf_property_pid varchar(15),
 primary_secondary varchar(1)
);

CREATE TABLE ADDRESS_FEATURE (
 address_feature_id varchar(16) PRIMARY KEY NOT NULL,
 address_feature_pid varchar(16) NOT NULL,
 address_detail_pid varchar(15) NOT NULL,
 date_address_detail_created date NOT NULL,
 date_address_detail_retired date,
 address_change_type_code varchar(50)
);

CREATE TABLE ADDRESS_MESH_BLOCK_2011 (
 address_mesh_block_2011_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 address_detail_pid varchar(15) NOT NULL,
 mb_match_code varchar(15) NOT NULL,
 mb_2011_pid varchar(15) NOT NULL
);

CREATE TABLE ADDRESS_MESH_BLOCK_2016 (
 address_mesh_block_2016_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 address_detail_pid varchar(15) NOT NULL,
 mb_match_code varchar(15) NOT NULL,
 mb_2016_pid varchar(15) NOT NULL
);

CREATE TABLE ADDRESS_SITE (
 address_site_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 address_type varchar(8),
 address_site_name varchar(200)
);

CREATE TABLE ADDRESS_SITE_GEOCODE (
 address_site_geocode_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 address_site_pid varchar(15),
 geocode_site_name varchar(200),
 geocode_site_description varchar(45),
 geocode_type_code varchar(4),
 reliability_code numeric(1) NOT NULL,
 boundary_extent numeric(7),
 planimetric_accuracy numeric(12),
 elevation numeric(7),
 longitude numeric(11,8),
 latitude numeric(10,8)
);

CREATE TABLE ADDRESS_TYPE_AUT (
 code varchar(8) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(30)
);

CREATE TABLE FLAT_TYPE_AUT (
 code varchar(7) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(30)
);

CREATE TABLE GEOCODED_LEVEL_TYPE_AUT (
 code numeric(2) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(70)
);

CREATE TABLE GEOCODE_RELIABILITY_AUT (
 code numeric(1) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(100)
);

CREATE TABLE GEOCODE_TYPE_AUT (
 code varchar(4) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(250)
);

CREATE TABLE LEVEL_TYPE_AUT (
 code varchar(4) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(30)
);

CREATE TABLE LOCALITY (
 locality_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 locality_name varchar(100) NOT NULL,
 primary_postcode varchar(4),
 locality_class_code char(1) NOT NULL,
 state_pid varchar(15) NOT NULL,
 gnaf_locality_pid varchar(15),
 gnaf_reliability_code numeric(1) NOT NULL
);

CREATE TABLE LOCALITY_ALIAS (
 locality_alias_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 locality_pid varchar(15) NOT NULL,
 name varchar(100) NOT NULL,
 postcode varchar(4),
 alias_type_code varchar(10) NOT NULL,
 state_pid varchar(15) NOT NULL
);

CREATE TABLE LOCALITY_ALIAS_TYPE_AUT (
 code varchar(10) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(100)
);

CREATE TABLE LOCALITY_CLASS_AUT (
 code char(1) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(200)
);

CREATE TABLE LOCALITY_NEIGHBOUR (
 locality_neighbour_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 locality_pid varchar(15) NOT NULL,
 neighbour_locality_pid varchar(15) NOT NULL
);

CREATE TABLE LOCALITY_POINT (
 locality_point_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 locality_pid varchar(15) NOT NULL,
 planimetric_accuracy numeric(12),
 longitude numeric(11,8),
 latitude numeric(10,8)
);

CREATE TABLE MB_2011 (
 mb_2011_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 mb_2011_code varchar(15) NOT NULL
);

CREATE TABLE MB_2016 (
 mb_2016_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 mb_2016_code varchar(15) NOT NULL
);

CREATE TABLE MB_MATCH_CODE_AUT (
 code varchar(15) PRIMARY KEY NOT NULL,
 name varchar(100) NOT NULL,
 description varchar(250)
);

CREATE TABLE PRIMARY_SECONDARY (
 primary_secondary_pid varchar(15) PRIMARY KEY NOT NULL,
 primary_pid varchar(15) NOT NULL,
 secondary_pid varchar(15) NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 ps_join_type_code numeric(2) NOT NULL,
 ps_join_comment varchar(500)
);

CREATE TABLE PS_JOIN_TYPE_AUT (
 code numeric(2) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(500)
);

CREATE TABLE STATE (
 state_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 state_name varchar(50) NOT NULL,
 state_abbreviation varchar(3) NOT NULL
);

CREATE TABLE STREET_CLASS_AUT (
 code char(1) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(200)
);

CREATE TABLE STREET_LOCALITY (
 street_locality_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 street_class_code char(1) NOT NULL,
 street_name varchar(100) NOT NULL,
 street_type_code varchar(15),
 street_suffix_code varchar(15),
 locality_pid varchar(15) NOT NULL,
 gnaf_street_pid varchar(15),
 gnaf_street_confidence numeric(1),
 gnaf_reliability_code numeric(1) NOT NULL
);

CREATE TABLE STREET_LOCALITY_ALIAS (
 street_locality_alias_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 street_locality_pid varchar(15) NOT NULL,
 street_name varchar(100) NOT NULL,
 street_type_code varchar(15),
 street_suffix_code varchar(15),
 alias_type_code varchar(10) NOT NULL
);

CREATE TABLE STREET_LOCALITY_ALIAS_TYPE_AUT (
 code varchar(10) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(15)
);

CREATE TABLE STREET_LOCALITY_POINT (
 street_locality_point_pid varchar(15) PRIMARY KEY NOT NULL,
 date_created date NOT NULL,
 date_retired date,
 street_locality_pid varchar(15) NOT NULL,
 boundary_extent numeric(7),
 planimetric_accuracy numeric(12),
 longitude numeric(11,8),
 latitude numeric(10,8)
);

CREATE TABLE STREET_SUFFIX_AUT (
 code varchar(15) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(30)
);

CREATE TABLE STREET_TYPE_AUT (
 code varchar(15) PRIMARY KEY NOT NULL,
 name varchar(50) NOT NULL,
 description varchar(15)
);


-- Address combined view

CREATE VIEW ADDRESS_COMBINED_VIEW

AS

SELECT
AD.ADDRESS_DETAIL_PID as ADDRESS_DETAIL_PID,
AD.STREET_LOCALITY_PID as STREET_LOCALITY_PID,
AD.LOCALITY_PID as LOCALITY_PID,
AD.BUILDING_NAME as BUILDING_NAME,

IFNULL(AD.LOT_NUMBER_PREFIX, '')||IFNULL(AD.LOT_NUMBER, '')||IFNULL(AD.LOT_NUMBER_SUFFIX, '') as LOT_NUMBER,

FTA.NAME as FLAT_TYPE,
IFNULL(AD.FLAT_NUMBER_PREFIX, '')||IFNULL(AD.FLAT_NUMBER, '')||IFNULL(AD.FLAT_NUMBER_SUFFIX, '') as FLAT_NUMBER,

LTA.NAME as LEVEL_TYPE,
IFNULL(AD.LEVEL_NUMBER_PREFIX, '')||IFNULL(AD.LEVEL_NUMBER, '')||IFNULL(AD.LEVEL_NUMBER_SUFFIX, '') as LEVEL_NUMBER,

IFNULL(AD.NUMBER_FIRST_PREFIX, '')||IFNULL(AD.NUMBER_FIRST, '')||IFNULL(AD.NUMBER_FIRST_SUFFIX, '') as NUMBER_FIRST,
IFNULL(AD.NUMBER_LAST_PREFIX, '')||IFNULL(AD.NUMBER_LAST, '')||IFNULL(AD.NUMBER_LAST_SUFFIX, '') as NUMBER_LAST,

SL.STREET_CLASS_CODE as STREET_CLASS_CODE,
SL.STREET_NAME as STREET_NAME,
SL.STREET_TYPE_CODE as STREET_TYPE_CODE,
SL.STREET_SUFFIX_CODE as STREET_SUFFIX_CODE,
SSA.NAME as STREET_SUFFIX_TYPE,

L.LOCALITY_NAME as LOCALITY_NAME,

ST.STATE_ABBREVIATION as STATE_ABBREVIATION,

AD.POSTCODE as POSTCODE,

ADG.LATITUDE as LATITUDE,
ADG.LONGITUDE as LONGITUDE,
ADG.GEOCODE_TYPE_CODE as GEOCODE_TYPE,

AD.CONFIDENCE as CONFIDENCE,

AD.ALIAS_PRINCIPAL as ALIAS_PRINCIPAL,
AD.PRIMARY_SECONDARY as PRIMARY_SECONDARY,

AD.LEGAL_PARCEL_ID as LEGAL_PARCEL_ID,

AD.DATE_CREATED as DATE_CREATED,
AD.DATE_LAST_MODIFIED as DATE_LAST_MODIFIED

FROM

ADDRESS_DETAIL AD 
LEFT JOIN FLAT_TYPE_AUT FTA ON AD.FLAT_TYPE_CODE=FTA.CODE
LEFT JOIN LEVEL_TYPE_AUT LTA ON AD.LEVEL_TYPE_CODE=LTA.CODE
JOIN STREET_LOCALITY SL ON AD.STREET_LOCALITY_PID=SL.STREET_LOCALITY_PID
LEFT JOIN STREET_SUFFIX_AUT SSA ON SL.STREET_SUFFIX_CODE=SSA.CODE
LEFT JOIN STREET_TYPE_AUT STA ON SL.STREET_TYPE_CODE=STA.CODE
JOIN LOCALITY L ON AD.LOCALITY_PID = L.LOCALITY_PID
JOIN ADDRESS_DEFAULT_GEOCODE ADG ON AD.ADDRESS_DETAIL_PID=ADG.ADDRESS_DETAIL_PID
LEFT JOIN GEOCODED_LEVEL_TYPE_AUT GLTA ON AD.LEVEL_GEOCODED_CODE=GLTA.CODE
JOIN STATE ST ON L.STATE_PID=ST.STATE_PID

WHERE 
AD.CONFIDENCE > -1;


-- Address view 

CREATE VIEW ADDRESS_VIEW

AS

SELECT
AD.ADDRESS_DETAIL_PID as ADDRESS_DETAIL_PID,
AD.STREET_LOCALITY_PID as STREET_LOCALITY_PID,
AD.LOCALITY_PID as LOCALITY_PID,
AD.BUILDING_NAME as BUILDING_NAME,

AD.LOT_NUMBER_PREFIX as LOT_NUMBER_PREFIX,
AD.LOT_NUMBER as LOT_NUMBER,
AD.LOT_NUMBER_SUFFIX as LOT_NUMBER_SUFFIX,

FTA.NAME as FLAT_TYPE,
AD.FLAT_NUMBER_PREFIX as FLAT_NUMBER_PREFIX,
AD.FLAT_NUMBER as FLAT_NUMBER,
AD.FLAT_NUMBER_SUFFIX as FLAT_NUMBER_SUFFIX,

LTA.NAME as LEVEL_TYPE,
AD.LEVEL_NUMBER_PREFIX as LEVEL_NUMBER_PREFIX,
AD.LEVEL_NUMBER as LEVEL_NUMBER,
AD.LEVEL_NUMBER_SUFFIX as LEVEL_NUMBER_SUFFIX,

AD.NUMBER_FIRST_PREFIX as NUMBER_FIRST_PREFIX,
AD.NUMBER_FIRST as NUMBER_FIRST,
AD.NUMBER_FIRST_SUFFIX as NUMBER_FIRST_SUFFIX,
AD.NUMBER_LAST_PREFIX as NUMBER_LAST_PREFIX,
AD.NUMBER_LAST as NUMBER_LAST,
AD.NUMBER_LAST_SUFFIX as NUMBER_LAST_SUFFIX,

SL.STREET_NAME as STREET_NAME,
SL.STREET_CLASS_CODE as STREET_CLASS_CODE,
SCA.NAME as STREET_CLASS_TYPE,
SL.STREET_TYPE_CODE as STREET_TYPE_CODE,
SL.STREET_SUFFIX_CODE as STREET_SUFFIX_CODE,
SSA.NAME as STREET_SUFFIX_TYPE,

L.LOCALITY_NAME as LOCALITY_NAME,

ST.STATE_ABBREVIATION as STATE_ABBREVIATION,

AD.POSTCODE as POSTCODE,

ADG.LATITUDE as LATITUDE,
ADG.LONGITUDE as LONGITUDE,
ADG.GEOCODE_TYPE_CODE as GEOCODE_TYPE,

AD.CONFIDENCE as CONFIDENCE,

AD.ALIAS_PRINCIPAL as ALIAS_PRINCIPAL,
AD.PRIMARY_SECONDARY as PRIMARY_SECONDARY,

AD.LEGAL_PARCEL_ID as LEGAL_PARCEL_ID,

AD.DATE_CREATED as DATE_CREATED

FROM

ADDRESS_DETAIL AD 
LEFT JOIN FLAT_TYPE_AUT FTA ON AD.FLAT_TYPE_CODE=FTA.CODE
LEFT JOIN LEVEL_TYPE_AUT LTA ON AD.LEVEL_TYPE_CODE=LTA.CODE
JOIN STREET_LOCALITY SL ON AD.STREET_LOCALITY_PID=SL.STREET_LOCALITY_PID
LEFT JOIN STREET_SUFFIX_AUT SSA ON SL.STREET_SUFFIX_CODE=SSA.CODE
LEFT JOIN STREET_CLASS_AUT SCA ON SL.STREET_CLASS_CODE=SCA.CODE 
LEFT JOIN STREET_TYPE_AUT STA ON SL.STREET_TYPE_CODE=STA.CODE
JOIN LOCALITY L ON AD.LOCALITY_PID = L.LOCALITY_PID
JOIN ADDRESS_DEFAULT_GEOCODE ADG ON AD.ADDRESS_DETAIL_PID=ADG.ADDRESS_DETAIL_PID
LEFT JOIN GEOCODE_TYPE_AUT GTA ON ADG.GEOCODE_TYPE_CODE=GTA.CODE
LEFT JOIN GEOCODED_LEVEL_TYPE_AUT GLTA ON AD.LEVEL_GEOCODED_CODE=GLTA.CODE
JOIN STATE ST ON L.STATE_PID=ST.STATE_PID

WHERE 
AD.CONFIDENCE > -1