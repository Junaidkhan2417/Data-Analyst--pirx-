-- Clinic Schema + Sample Data

CREATE TABLE clinics (
    cid VARCHAR(50),
    clinic_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO clinics VALUES
('c1','ABC Clinic','Hyderabad','Telangana','India'),
('c2','XYZ Clinic','Hyderabad','Telangana','India');

CREATE TABLE customer (
    uid VARCHAR(50),
    name VARCHAR(100),
    mobile VARCHAR(15)
);

INSERT INTO customer VALUES
('u1','John Doe','9999999999'),
('u2','Jane Doe','8888888888');

CREATE TABLE clinic_sales (
    oid VARCHAR(50),
    uid VARCHAR(50),
    cid VARCHAR(50),
    amount INT,
    datetime TIMESTAMP,
    sales_channel VARCHAR(50)
);

INSERT INTO clinic_sales VALUES
('o1','u1','c1',1000,'2021-09-10 10:00:00','online'),
('o2','u2','c2',2000,'2021-09-12 11:00:00','offline');

CREATE TABLE expenses (
    eid VARCHAR(50),
    cid VARCHAR(50),
    description TEXT,
    amount INT,
    datetime TIMESTAMP
);

INSERT INTO expenses VALUES
('e1','c1','supplies',200,'2021-09-11 09:00:00'),
('e2','c2','rent',500,'2021-09-15 08:00:00');
