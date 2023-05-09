{{ config(materialized='table') }}

SELECT
    ID_INCOME,
    ID_EDUCATION,
    ID_MARITAL,
    ID_HOUSING,
    ID_JOB,
    CODE_GENDER,
    FLAG_OWN_CAR,
    FLAG_OWN_REALTY,
    CNT_CHILDREN,
    AMT_INCOME_TOTAL,
    FLAG_MOBIL,
    FLAG_WORK_PHONE,
    FLAG_PHONE,
    FLAG_EMAIL,
    CNT_FAM_MEMBERS,
    YEARS_BIRTH,
    YEARS_EMPLOYED,
    array_agg(ID) AS ID,
    count(ID) AS NUM_ID
FROM {{ ref('fact__tables') }}
GROUP BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17
ORDER BY 19 DESC

 