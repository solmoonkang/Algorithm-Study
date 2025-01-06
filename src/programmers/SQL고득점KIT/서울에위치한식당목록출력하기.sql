CREATE TABLE REST_INFO
(
    REST_ID     VARCHAR(5)  NOT NULL,
    REST_NAME   VARCHAR(50) NOT NULL,
    FOOD_TYPE   VARCHAR(20),
    VIEWS       NUMERIC,
    FAVORITES   NUMERIC,
    PARKING_LOT VARCHAR(1),
    ADDRESS     VARCHAR(100),
    TEL         VARCHAR(100),
    PRIMARY KEY (REST_ID)
);

CREATE TABLE REST_REVIEW
(
    REVIEW_ID    VARCHAR(10) NOT NULL,
    REST_ID      VARCHAR(5),
    MEMBER_ID    VARCHAR(100),
    REVIEW_SCORE NUMERIC,
    REVIEW_TEXT  VARCHAR(1000),
    REVIEW_DATE  DATE,
    PRIMARY KEY (REVIEW_ID),
    FOREIGN KEY (REST_ID) REFERENCES REST_INFO (REST_ID)
);

SELECT RI.REST_ID,
       RI.REST_NAME,
       RI.FOOD_TYPE,
       RI.FAVORITES,
       RI.ADDRESS,
       ROUND(AVG(RR.REVIEW_SCORE), 3) AS AVERAGE_SCORE
FROM REST_INFO RI
         JOIN REST_REVIEW RR on RI.REST_ID = RR.REST_ID
WHERE RI.ADDRESS LIKE '%서울%'
GROUP BY RI.REST_ID, RI.REST_NAME, RI.FOOD_TYPE, RI.FAVORITES, RI.ADDRESS
ORDER BY AVERAGE_SCORE DESC, RI.FAVORITES DESC;
