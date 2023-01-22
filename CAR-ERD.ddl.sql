CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(25),
    email VARCHAR(100)
);

CREATE TABLE car (
    license_plate_num VARCHAR(17) PRIMARY KEY,
    color VARCHAR(20),
    make VARCHAR(20),
    model VARCHAR(20),
    model_year VARCHAR(4)
);

CREATE TABLE service_ticket (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customer(customer_id),
    service_needed TEXT [],
    service_date DATE,
    license_plate_num VARCHAR(17) REFERENCES car(license_plate_num)
);

CREATE TABLE car_invoice(
    invoice_id SERIAL PRIMARY KEY,
    license_plate_num VARCHAR(17) REFERENCES car(license_plate_num),
    price INTEGER,
    paid BOOLEAN,
    customer_id INTEGER REFERENCES customer(customer_id),
    salesperson_id INTEGER REFERENCES salesperson(sales_id)
);

CREATE TABLE service_record (
    record_id SERIAL PRIMARY KEY,
    service_summary TEXT [],
    service_date DATE,
    invoice_id INT REFERENCES car_invoice(invoice_id),
    mechanic_id INT REFERENCES mechanic(mechanic_id),
    license_plate_num VARCHAR(17) REFERENCES car(license_plate_num)
);