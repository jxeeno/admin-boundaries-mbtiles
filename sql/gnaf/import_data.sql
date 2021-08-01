
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

.import --skip 1 "tmp/standard/%%STATE%%_ADDRESS_DEFAULT_GEOCODE_psv.psv" ADDRESS_DEFAULT_GEOCODE
.import --skip 1 "tmp/standard/%%STATE%%_ADDRESS_DETAIL_psv.psv" ADDRESS_DETAIL
.import --skip 1 "tmp/standard/%%STATE%%_LOCALITY_psv.psv" LOCALITY
.import --skip 1 "tmp/standard/%%STATE%%_LOCALITY_ALIAS_psv.psv" LOCALITY_ALIAS
.import --skip 1 "tmp/standard/%%STATE%%_STATE_psv.psv" STATE
.import --skip 1 "tmp/standard/%%STATE%%_STREET_LOCALITY_psv.psv" STREET_LOCALITY