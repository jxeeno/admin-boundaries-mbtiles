
.mode csv
.separator "|"
.headers on

.import --skip 1 "tmp/authority/Authority_Code_FLAT_TYPE_AUT_psv.psv" FLAT_TYPE_AUT
.import --skip 1 "tmp/authority/Authority_Code_GEOCODE_TYPE_AUT_psv.psv" GEOCODE_TYPE_AUT
.import --skip 1 "tmp/authority/Authority_Code_GEOCODED_LEVEL_TYPE_AUT_psv.psv" GEOCODED_LEVEL_TYPE_AUT
.import --skip 1 "tmp/authority/Authority_Code_LEVEL_TYPE_AUT_psv.psv" LEVEL_TYPE_AUT
.import --skip 1 "tmp/authority/Authority_Code_STREET_CLASS_AUT_psv.psv" STREET_CLASS_AUT
.import --skip 1 "tmp/authority/Authority_Code_STREET_SUFFIX_AUT_psv.psv" STREET_SUFFIX_AUT
.import --skip 1 "tmp/authority/Authority_Code_STREET_TYPE_AUT_psv.psv" STREET_TYPE_AUT

.import --skip 1 "tmp/standard/ACT_ADDRESS_DEFAULT_GEOCODE_psv.psv" ADDRESS_DEFAULT_GEOCODE
.import --skip 1 "tmp/standard/ACT_ADDRESS_DETAIL_psv.psv" ADDRESS_DETAIL
.import --skip 1 "tmp/standard/ACT_LOCALITY_psv.psv" LOCALITY
.import --skip 1 "tmp/standard/ACT_LOCALITY_ALIAS_psv.psv" LOCALITY_ALIAS
.import --skip 1 "tmp/standard/ACT_STATE_psv.psv" STATE
.import --skip 1 "tmp/standard/ACT_STREET_LOCALITY_psv.psv" STREET_LOCALITY

-- .import --skip 1 "tmp/standard/NSW_ADDRESS_DEFAULT_GEOCODE_psv.psv" ADDRESS_DEFAULT_GEOCODE
-- .import --skip 1 "tmp/standard/NSW_ADDRESS_DETAIL_psv.psv" ADDRESS_DETAIL
-- .import --skip 1 "tmp/standard/NSW_LOCALITY_psv.psv" LOCALITY
-- .import --skip 1 "tmp/standard/NSW_LOCALITY_ALIAS_psv.psv" LOCALITY_ALIAS
-- .import --skip 1 "tmp/standard/NSW_STATE_psv.psv" STATE
-- .import --skip 1 "tmp/standard/NSW_STREET_LOCALITY_psv.psv" STREET_LOCALITY

-- .import --skip 1 "tmp/standard/QLD_ADDRESS_DEFAULT_GEOCODE_psv.psv" ADDRESS_DEFAULT_GEOCODE
-- .import --skip 1 "tmp/standard/QLD_ADDRESS_DETAIL_psv.psv" ADDRESS_DETAIL
-- .import --skip 1 "tmp/standard/QLD_LOCALITY_psv.psv" LOCALITY
-- .import --skip 1 "tmp/standard/QLD_LOCALITY_ALIAS_psv.psv" LOCALITY_ALIAS
-- .import --skip 1 "tmp/standard/QLD_STATE_psv.psv" STATE
-- .import --skip 1 "tmp/standard/QLD_STREET_LOCALITY_psv.psv" STREET_LOCALITY

-- .import --skip 1 "tmp/standard/VIC_ADDRESS_DEFAULT_GEOCODE_psv.psv" ADDRESS_DEFAULT_GEOCODE
-- .import --skip 1 "tmp/standard/VIC_ADDRESS_DETAIL_psv.psv" ADDRESS_DETAIL
-- .import --skip 1 "tmp/standard/VIC_LOCALITY_psv.psv" LOCALITY
-- .import --skip 1 "tmp/standard/VIC_LOCALITY_ALIAS_psv.psv" LOCALITY_ALIAS
-- .import --skip 1 "tmp/standard/VIC_STATE_psv.psv" STATE
-- .import --skip 1 "tmp/standard/VIC_STREET_LOCALITY_psv.psv" STREET_LOCALITY

-- .import --skip 1 "tmp/standard/WA_ADDRESS_DEFAULT_GEOCODE_psv.psv" ADDRESS_DEFAULT_GEOCODE
-- .import --skip 1 "tmp/standard/WA_ADDRESS_DETAIL_psv.psv" ADDRESS_DETAIL
-- .import --skip 1 "tmp/standard/WA_LOCALITY_psv.psv" LOCALITY
-- .import --skip 1 "tmp/standard/WA_LOCALITY_ALIAS_psv.psv" LOCALITY_ALIAS
-- .import --skip 1 "tmp/standard/WA_STATE_psv.psv" STATE
-- .import --skip 1 "tmp/standard/WA_STREET_LOCALITY_psv.psv" STREET_LOCALITY

-- .import --skip 1 "tmp/standard/NT_ADDRESS_DEFAULT_GEOCODE_psv.psv" ADDRESS_DEFAULT_GEOCODE
-- .import --skip 1 "tmp/standard/NT_ADDRESS_DETAIL_psv.psv" ADDRESS_DETAIL
-- .import --skip 1 "tmp/standard/NT_LOCALITY_psv.psv" LOCALITY
-- .import --skip 1 "tmp/standard/NT_LOCALITY_ALIAS_psv.psv" LOCALITY_ALIAS
-- .import --skip 1 "tmp/standard/NT_STATE_psv.psv" STATE
-- .import --skip 1 "tmp/standard/NT_STREET_LOCALITY_psv.psv" STREET_LOCALITY

-- .import --skip 1 "tmp/standard/SA_ADDRESS_DEFAULT_GEOCODE_psv.psv" ADDRESS_DEFAULT_GEOCODE
-- .import --skip 1 "tmp/standard/SA_ADDRESS_DETAIL_psv.psv" ADDRESS_DETAIL
-- .import --skip 1 "tmp/standard/SA_LOCALITY_psv.psv" LOCALITY
-- .import --skip 1 "tmp/standard/SA_LOCALITY_ALIAS_psv.psv" LOCALITY_ALIAS
-- .import --skip 1 "tmp/standard/SA_STATE_psv.psv" STATE
-- .import --skip 1 "tmp/standard/SA_STREET_LOCALITY_psv.psv" STREET_LOCALITY

-- .import --skip 1 "tmp/standard/OT_ADDRESS_DEFAULT_GEOCODE_psv.psv" ADDRESS_DEFAULT_GEOCODE
-- .import --skip 1 "tmp/standard/OT_ADDRESS_DETAIL_psv.psv" ADDRESS_DETAIL
-- .import --skip 1 "tmp/standard/OT_LOCALITY_psv.psv" LOCALITY
-- .import --skip 1 "tmp/standard/OT_LOCALITY_ALIAS_psv.psv" LOCALITY_ALIAS
-- .import --skip 1 "tmp/standard/OT_STATE_psv.psv" STATE
-- .import --skip 1 "tmp/standard/OT_STREET_LOCALITY_psv.psv" STREET_LOCALITY

-- .import --skip 1 "tmp/standard/TAS_ADDRESS_DEFAULT_GEOCODE_psv.psv" ADDRESS_DEFAULT_GEOCODE
-- .import --skip 1 "tmp/standard/TAS_ADDRESS_DETAIL_psv.psv" ADDRESS_DETAIL
-- .import --skip 1 "tmp/standard/TAS_LOCALITY_psv.psv" LOCALITY
-- .import --skip 1 "tmp/standard/TAS_LOCALITY_ALIAS_psv.psv" LOCALITY_ALIAS
-- .import --skip 1 "tmp/standard/TAS_STATE_psv.psv" STATE
-- .import --skip 1 "tmp/standard/TAS_STREET_LOCALITY_psv.psv" STREET_LOCALITY