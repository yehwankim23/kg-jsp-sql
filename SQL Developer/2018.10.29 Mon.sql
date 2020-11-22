--2018.10.29 Mon
CREATE TABLE member (
    userid     VARCHAR2(20) PRIMARY KEY,
    name       VARCHAR2(20) NOT NULL,
    password   VARCHAR2(32) NOT NULL,
    email      VARCHAR2(50) NOT NULL,
    address    VARCHAR2(100)
);

--------------------------------------------------------------------------------