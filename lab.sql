-- Person Table

1. CREATE TABLE person (
	person_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    height FLOAT,
    city VARCHAR(20),
    favorite_color VARCHAR(20)
    )

3. INSERT INTO person (name, age, height, city, favorite_color)
    VALUES ('Josh', 34 , 5.11, 'New York', 'Blue')

    INSERT INTO person (name, age, height, city, favorite_color)
    VALUES ('Kim', 26 , 5.6, 'Boston', 'Pink')

    INSERT INTO person (name, age, height, city, favorite_color)
    VALUES ('Jess', 29 , 5.5, 'Miami', 'Red')

    INSERT INTO person (name, age, height, city, favorite_color)
    VALUES ('Sam', 24 , 5.5, 'Trenton', 'Black');

    INSERT INTO person (name, age, height, city, favorite_color)
    VALUES ('Jimmy', 21 , 5.10, 'Trenton', 'Blue');

5.  SELECT name, height FROM person
    ORDER BY height DESC;

6.  SELECT name, height FROM person
    ORDER BY height ASC;

7.  SELECT name, age FROM person
    ORDER BY age DESC; 

8.  SELECT name, age FROM person
    WHERE age > 20; 

9.  SELECT name, age FROM person
    WHERE age = 18;

10. SELECT name, age FROM person
    WHERE age < 20 OR age > 30;

11. SELECT name, age FROM person
    WHERE age != 27;

12. SELECT name, favorite_color FROM person
    WHERE favorite_color != 'Red';

13. SELECT name, favorite_color FROM person
    WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

14. SELECT name, favorite_color FROM person
    WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

15. SELECT name, favorite_color FROM person
    WHERE favorite_color IN ('Orange', 'Green', 'Blue');

16. SELECT name, favorite_color FROM person
    WHERE favorite_color IN ('Yellow', 'Purple');

------------------------------------------------------

-- Orders Table

1. CREATE TABLE Orders (
	order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(50),
    product_price FLOAT,
    quantity INTEGER
    )

2.  INSERT INTO Orders (person_id, product_name, product_price, quantity)
    VALUES(100, 'Shirt', 10.99, 1)

    INSERT INTO Orders (person_id, product_name, product_price, quantity)
    VALUES(100, 'Pants', 9.99, 5)

    INSERT INTO Orders (person_id, product_name, product_price, quantity)
    VALUES(101, 'Shoes', 20.99, 2)

    INSERT INTO Orders (person_id, product_name, product_price, quantity)
    VALUES(102, 'Shoes', 20.99, 7)

    INSERT INTO Orders (person_id, product_name, product_price, quantity)
    VALUES(103, 'Shirt', 10.99, 17)

5.  SELECT * FROM Orders

6.  SELECT SUM(quantity) FROM Orders

7.  SELECT SUM(product_price * quantity) FROM Orders

8.  SELECT SUM(product_price * quantity) FROM Orders
    WHERE person_id = 100

-------------------------------------------------------

-- Artists Table

1.  INSERT INTO artist (name)
    VALUES ('Leonardo da Vinci')

    INSERT INTO artist (name)
    VALUES ('Vincent van Gogh')

    INSERT INTO artist (name)
    VALUES ('Michelangelo')

2.  SELECT name from artist
    ORDER BY name DESC LIMIT 10

3.  SELECT name from artist
    ORDER BY name ASC LIMIT 5;

4.  SELECT name from artist
    WHERE name LIKE 'Black%'

5.  SELECT name from artist
    WHERE name LIKE '%Black%'

------------------------------------------------------

--Employee Table

1.  SELECT first_name, last_name FROM employee
    WHERE city = 'Calgary'

2.  SELECT birth_date FROM employee
    ORDER BY birth_date DESC 
    -- (youngest was born in 1973)

3.  SELECT birth_date FROM employee
    ORDER BY birth_date ASC
    -- (oldest was born in 1947)

4.  SELECT last_name FROM employee
    WHERE reports_to = 2;

5.  SELECT COUNT(city) FROM employee
    WHERE city = 'Lethbridge';

------------------------------------------------------

--Invoice Table

1.  SELECT COUNT(billing_country) FROM invoice
    WHERE billing_country = 'USA'

2.  SELECT MAX(total) FROM invoice

3.  SELECT MIN(total) FROM invoice

4.  SELECT * FROM invoice
    WHERE total > 5

5.  SELECT COUNT(total) FROM invoice
    WHERE total < 5

6.  SELECT COUNT(total) FROM invoice
    WHERE billing_state IN ('CA', 'TX', 'AZ')

7.  SELECT AVG(total) AS Average FROM invoice

8.  SELECT SUM(total) AS Total FROM invoice

9.  UPDATE SET total = 24
    WHERE invoice_id = 5;

10. DELETE FROM invoice 
    WHERE invoice_id = 1;


















