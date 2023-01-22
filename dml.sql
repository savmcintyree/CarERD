INSERT INTO salesperson (first_name, last_name)
VALUES ('savanna', 'mcintyre'),
       ('ava', 'bella');

SELECT * FROM salesperson;

INSERT INTO mechanic(first_name, last_name)
VALUES ('shawn', 'smith'),
       ('jon', 'snow');

SELECT * from mechanic;

INSERT INTO customer(first_name, last_name, phone_number,email)
VALUES ('haley', 'lansdon', '555-555-5555','haleylansdon@hotmail.com'),
       ('ivette', 'martinez', '666-666-6666','ivettemartinez@hotmail.com');

SELECT * from customer;

INSERT INTO car(license_plate_num, color, make, model, model_year) 
VALUES('6TRJ244', 'BLUE', 'HONDA', 'ACCORD', '2001'),
      ('6LIK274', 'BLACK', 'TESLA', 'S', '2020');

SELECT * from car;

INSERT INTO service_ticket(customer_id, service_needed, service_date, license_plate_num)
VALUES(1, ARRAY ['Tire pressure', 'Oil Change'], '2023-1-20', '6TRJ244'),
      (2, ARRAY ['Oil Change', 'Break Check'], '2023-1-21', '6LIK274')

SELECT * FROM service_ticket;

INSERT INTO car_invoice(license_plate_num, price, paid, customer_id, salesperson_id)
VALUES('6TRJ244', 250, TRUE, 1, 2),
      ('6LIK274', 275, TRUE, 2, 1);

SELECT * FROM car_invoice;

INSERT INTO service_record(service_summary, service_date, invoice_id, mechanic_id, license_plate_num)
VALUES(ARRAY ['Tire pressure', 'Oil Change'], '2023-1-20', 1, 1, '6TRJ244'),
      (ARRAY ['Oil Change', 'Break Check'], '2023-1-21', 2, 2, '6LIK274');

SELECT * FROM service_record;