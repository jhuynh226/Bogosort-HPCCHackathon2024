IMPORT $.File_AllData,$.FIPSDATA;

CTFIPS :=  FIPSDATA.CT_FIPS;
POV := File_AllData.pov_estimatesDS;

JOIN (CTFIPS,POV, LEFT.primaryfips = RIGHT.FIPS_code);
TEMP := JOIN (CTFIPS,POV, LEFT.primaryfips = RIGHT.FIPS_code);

CORRELATION (TEMP, cnt, value);