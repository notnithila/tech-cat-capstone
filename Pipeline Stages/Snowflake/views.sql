-- Alina Baby, Nithila Annadurai, Peter Alonzo (Group 1: Tech Catalyst DE 2024)
-- Creating Views
--Taxi View for Data Visualization
CREATE OR REPLACE VIEW TAXI AS
SELECT PU_DATETIME, DO_DATETIME, YEAR, MONTH, DAY, PU_LOCATIONID, TZ.BOROUGH AS PU_BOROUGH, DO_LOCATIONID, TZ2.BOROUGH AS DO_BOROUGH
FROM TAXI_TBL AS T JOIN TAXI_ZONE_TBL AS TZ ON T.PU_LOCATIONID = TZ.LOCATION_ID
JOIN TAXI_ZONE_TBL AS TZ2 ON T.DO_LOCATIONID = TZ2.LOCATION_ID;

SELECT * FROM TAXI;
DROP VIEW TAXI;

--HVFHV View for Data Visualization
CREATE OR REPLACE VIEW HVFHV AS
SELECT H.LICENSE_NUM, L.COMPANY_NAME AS COMPANY_NAME, PU_DATETIME, DO_DATETIME, YEAR, MONTH, DAY, PU_LOCATIONID, TZ.BOROUGH AS PU_BOROUGH, DO_LOCATIONID, TZ2.BOROUGH AS DO_BOROUGH
FROM HIGH_VOLUME_TBL AS H JOIN TAXI_ZONE_TBL AS TZ ON H.PU_LOCATIONID = TZ.LOCATION_ID
JOIN TAXI_ZONE_TBL AS TZ2 ON H.DO_LOCATIONID = TZ2.LOCATION_ID
JOIN LICENSE_TBL AS L ON H.LICENSE_NUM = L.LICENSE_NUM;

SELECT * FROM HVFHV;
DROP VIEW HVFHV;
