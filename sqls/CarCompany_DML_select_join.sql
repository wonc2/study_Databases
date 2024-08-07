-- db_car_company

SELECT CI.NAME, CN.NAME, Y.YEAR, COUNT(0)
FROM CAR_INFOR_NAME_YEAR CINY
INNER JOIN CAR_INFORMATION CI ON CINY.CAR_INFORMATION_FK = CI.CAR_INFORMATION_PK
INNER JOIN YEARS Y ON CINY.YEAR_FK = Y.YEAR_PK
INNER JOIN CAR_NAME CN ON CN.CAR_NAME_PK = CINY.CAR_NAME_FK
INNER JOIN YEAR_OPTION YOP ON YOP.CAR_INFOR_NAME_YEAR_FK = CINY.CAR_INFOR_NAME_YEAR_PK
INNER JOIN OPTIONS OP ON YOP.OPTIONS_FK = OP.OPTIONS_PK
group by CAR_INFORMATION_PK, CAR_NAME_PK, YEAR_PK;
