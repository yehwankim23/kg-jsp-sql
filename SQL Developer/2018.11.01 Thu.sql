--2018.11.01 Thu
CREATE TABLE board (
    bbsno         NUMBER NOT NULL,
    name          VARCHAR2(20) NOT NULL,
    password      VARCHAR2(12) NOT NULL,
    email         VARCHAR2(60) NULL,
    subject       VARCHAR2(50) NOT NULL,
    content       VARCHAR2(4000) NULL,
    writedate     DATE NOT NULL,
    masterid      NUMBER NULL,
    readcount     NUMBER NULL,
    replynumber   NUMBER NULL,
    replystep     NUMBER NULL
);

--------------------------------------------------------------------------------

ALTER TABLE board ADD (
    PRIMARY KEY ( bbsno )
);

--------------------------------------------------------------------------------