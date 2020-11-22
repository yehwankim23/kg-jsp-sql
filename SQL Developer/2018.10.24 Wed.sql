--2018.10.24 Wed
SELECT
    *
FROM
    employees;

--------------------------------------------------------------------------------

SELECT
    first_name,
    last_name,
    salary,
    salary + 300
FROM
    employees;

--------------------------------------------------------------------------------

SELECT
    first_name,
    last_name,
    salary + 300 AS 내년연봉
FROM
    employees;

--------------------------------------------------------------------------------

SELECT
    first_name
    || ' '
    || last_name
    || '''s salary is $'
    || salary AS "사원연봉정보"
FROM
    employees;

--------------------------------------------------------------------------------

SELECT
    ROWNUM,
    first_name
    || ' '
    || last_name
    || '''s salary is $'
    || salary AS "사원연봉정보"
FROM
    employees;

--------------------------------------------------------------------------------

SELECT
    first_name
    || ' '
    || last_name,
    salary
FROM
    employees
WHERE
    salary >= 10000;

--------------------------------------------------------------------------------

SELECT
    first_name
    || ' '
    || last_name,
    salary
FROM
    employees
WHERE
    salary BETWEEN 5000 AND 10000;

--------------------------------------------------------------------------------

SELECT
    first_name
    || ' '
    || last_name AS name,
    manager_id
FROM
    employees
WHERE
    manager_id IN (
        101,
        102,
        103
    );

--------------------------------------------------------------------------------

SELECT
    first_name
    || ' '
    || last_name AS name,
    hire_date
FROM
    employees
WHERE
    hire_date LIKE '04%';

--------------------------------------------------------------------------------

SELECT
    first_name
    || ' '
    || last_name AS name,
    hire_date,
    salary,
    manager_id
FROM
    employees
WHERE
    salary >= 10000
    AND hire_date LIKE '%/05/%';

--------------------------------------------------------------------------------

SELECT
    first_name
    || ' '
    || last_name AS name,
    salary
FROM
    employees
WHERE
    salary > (
        SELECT
            salary
        FROM
            employees
        WHERE
            first_name = 'Nancy'
    );

--------------------------------------------------------------------------------
