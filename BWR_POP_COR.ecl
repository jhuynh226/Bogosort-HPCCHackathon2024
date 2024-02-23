IMPORT $.File_AllData, $.FIPSDATA;

CTFIPS := FIPSDATA.CT_FIPS;
POP := File_AllData.pop_estimatesDS;

JOIN (CTFIPS, POP, LEFT.primaryfips = RIGHT.FIPS_code);
TEMP := JOIN (CTFIPS,POP, LEFT.primaryfips = RIGHT.FIPS_code);

CORRELATION (TEMP, cnt, value);