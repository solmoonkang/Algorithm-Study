CREATE TABLE PATIENT
(
    PT_NO   VARCHAR(10) NOT NULL,
    PT_NAME VARCHAR(20) NOT NULL,
    GEND_CD VARCHAR(1)  NOT NULL,
    AGE     INTEGER     NOT NULL,
    TLNO    VARCHAR(50),
    PRIMARY KEY (PT_NO)
);

SELECT PT_NAME,
       PT_NO,
       GEND_CD,
       AGE,
       CASE
           WHEN TLNO IS NULL THEN 'NONE'
           ELSE TLNO
           END AS TLNO
FROM PATIENT
WHERE AGE <= 12
  AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME ASC;
