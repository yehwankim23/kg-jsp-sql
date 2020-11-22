--2018.10.25 Thu
SELECT
    name,
    salary
FROM
    (
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
            )
    )
WHERE
    salary > (
        SELECT
            salary
        FROM
            employees
        WHERE
            first_name = 'Ki'
    );

--------------------------------------------------------------------------------

SELECT
    name,
    hire_date,
    salary,
    manager_id,
    email
FROM
    (
        SELECT
            first_name
            || ' '
            || last_name AS name,
            hire_date,
            salary,
            manager_id,
            email
        FROM
            employees
        WHERE
            hire_date > (
                SELECT
                    hire_date
                FROM
                    employees
                WHERE
                    employee_id = 103
            )
    )
WHERE
    salary < (
        SELECT
            salary
        FROM
            employees
        WHERE
            first_name = 'Lex'
    );

--------------------------------------------------------------------------------

SELECT
    *
FROM
    employees
WHERE
    salary > 10000
    AND job_id = 'IT_PROG';

--------------------------------------------------------------------------------

SELECT
    *
FROM
    employees
WHERE
    salary > 10000
    OR job_id = 'IT_PROG';

--------------------------------------------------------------------------------

SELECT
    *
FROM
    employees
WHERE
    NOT salary > 10000;

--------------------------------------------------------------------------------

SELECT
    *
FROM
    employees
WHERE
    (
        job_id = 'IT_PROG'
        OR job_id = 'FI_MGR'
    )
    AND salary >= 6000;

--------------------------------------------------------------------------------

SELECT
    *
FROM
    employees
ORDER BY
    hire_date;

--------------------------------------------------------------------------------

SELECT
    first_name,
    salary * 12 AS year_salary
FROM
    employees
ORDER BY
    year_salary;

--------------------------------------------------------------------------------

SELECT
    first_name,
    salary * 12 AS year_salary
FROM
    employees
ORDER BY
    2;

--------------------------------------------------------------------------------

SELECT
    first_name
    || ' '
    || last_name AS name,
    department_name
FROM
    employees e
    JOIN departments d ON e.department_id = d.department_id;

--------------------------------------------------------------------------------

SELECT
    first_name
    || ' '
    || last_name AS name,
    department_name,
    city
FROM
    employees e
    JOIN departments d ON e.department_id = d.department_id
    JOIN locations l ON d.location_id = l.location_id;

--------------------------------------------------------------------------------

INSERT INTO departments VALUES (
    280,
    'Data Analytics',
    NULL,
    1700
);

--------------------------------------------------------------------------------

ROLLBACK;

--------------------------------------------------------------------------------

COMMIT;

--------------------------------------------------------------------------------

INSERT INTO departments (
    department_id,
    department_name,
    location_id
) VALUES (
    280,
    'Data Analytics',
    1700
);

--------------------------------------------------------------------------------

UPDATE employees
SET
    salary = 30000
WHERE
    employee_id = 101;

--------------------------------------------------------------------------------

UPDATE employees
SET
    ( job_id,
      salary,
      manager_id ) = (
        SELECT
            job_id,
            salary,
            manager_id
        FROM
            employees
        WHERE
            employee_id = 108
    )
WHERE
    employee_id = 109;

--------------------------------------------------------------------------------

DELETE FROM employees
WHERE
    employee_id = 108;

--------------------------------------------------------------------------------

TRUNCATE TABLE employees;

--------------------------------------------------------------------------------

DROP TABLE employees;

--------------------------------------------------------------------------------

CREATE TABLE example (
    e_index   NUMBER(10),
    e_name    VARCHAR(20)
);

--------------------------------------------------------------------------------