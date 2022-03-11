 
 ------Cast And Convert----------
 CREATE TABLE store_locations (
  id INTEGER PRIMARY KEY,
  store_name VARCHAR(10) NOT NULL,
  store_id INTEGER NOT NULL,
  postal_code VARCHAR(10)
);


insert into store_locations values(1, 'Walmart', 14500, 4400)
insert into store_locations values(2, 'Carrefour', 8977, 90902)
insert into store_locations values(3, 'KFC', 3422, 55443)



SELECT *
FROM store_locations;

select store_id, postal_code, store_id + cast(postal_code AS INTEGER) AS [StoreID-Postalcode] from store_locations

select store_name, store_id, store_name + ' - ' + cast(store_id AS VARCHAR) AS [Storename-storeId]
from store_locations 

select store_id, postal_code, store_id + convert(INTEGER, postal_code) AS [StoreID-Postalcode] from store_locations


select store_name, store_id, store_name + ' - ' + convert(VARCHAR,store_id ) AS [Storename-storeId]
from store_locations 

-------Like Operator-----

CREATE TABLE feedbacks (
   feedback_id INT IDENTITY(1, 1) PRIMARY KEY, 
    comment     VARCHAR(255) NOT NULL
);

INSERT INTO feedbacks(comment)
VALUES('Can you give me 30% discount?'),
      ('Can you give me 20% discount?'),
      ('Can you give me 10% discount?');

	  SELECT *
FROM feedbacks;

	  SELECT 
   feedback_id,
   comment
FROM 
   feedbacks
WHERE 
   comment LIKE '%20%';