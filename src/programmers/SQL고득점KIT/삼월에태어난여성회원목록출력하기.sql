CREATE TABLE MEMBER_PROFILE
(
    MEMBER_ID     VARCHAR(100) NOT NULL,
    MEMBER_NAME   VARCHAR(50)  NOT NULL,
    TLNO          VARCHAR(50),
    GENDER        VARCHAR(1),
    DATE_OF_BIRTH DATE,
    PRIMARY KEY (MEMBER_ID)
);

SELECT MEMBER_ID,
       MEMBER_NAME,
       GENDER,
       DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE GENDER = 'F'
  AND TLNO IS NOT NULL
  AND EXTRACT(MONTH FROM DATE_OF_BIRTH) = 3
ORDER BY MEMBER_ID ASC;
