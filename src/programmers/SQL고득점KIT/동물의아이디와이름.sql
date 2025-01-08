CREATE TABLE ANIMAL_INS
(
    ANIMAL_ID        VARCHAR NOT NULL,
    ANIMAL_TYPE      VARCHAR NOT NULL,
    DATETIME         DATE    NOT NULL,
    INTAKE_CONDITION VARCHAR NOT NULL,
    NAME             VARCHAR,
    SEX_UPON_INTAKE  VARCHAR NOT NULL,
    PRIMARY KEY (ANIMAL_ID)
);

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID ASC;
