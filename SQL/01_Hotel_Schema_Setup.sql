CREATE TABLE users (
    user_id VARCHAR(50),
    name VARCHAR(100),
    phone_number VARCHAR(15),
    mail_id VARCHAR(100),
    billing_address TEXT
);
INSERT INTO users
VALUES (
        'u1',
        'John Doe',
        '9999999999',
        'john@example.com',
        'Address1'
    ),
    (
        'u2',
        'Jane Doe',
        '8888888888',
        'jane@example.com',
        'Address2'
    );
CREATE TABLE bookings (
    booking_id VARCHAR(50),
    booking_date TIMESTAMP,
    room_no VARCHAR(20),
    user_id VARCHAR(50)
);
INSERT INTO bookings
VALUES ('b1', '2021-11-10 10:00:00', '101', 'u1'),
    ('b2', '2021-11-15 12:00:00', '102', 'u2');
CREATE TABLE items (
    item_id VARCHAR(50),
    item_name VARCHAR(100),
    item_rate INT
);
INSERT INTO items
VALUES ('i1', 'Tawa Paratha', 18),
    ('i2', 'Mix Veg', 89);
CREATE TABLE booking_commercials (
    id VARCHAR(50),
    booking_id VARCHAR(50),
    bill_id VARCHAR(50),
    bill_date TIMESTAMP,
    item_id VARCHAR(50),
    item_quantity FLOAT
);
INSERT INTO booking_commercials
VALUES (
        'c1',
        'b1',
        'bill1',
        '2021-11-10 12:00:00',
        'i1',
        2
    ),
    (
        'c2',
        'b1',
        'bill1',
        '2021-11-10 12:00:00',
        'i2',
        1
    ),
    (
        'c3',
        'b2',
        'bill2',
        '2021-10-15 14:00:00',
        'i2',
        15
    );