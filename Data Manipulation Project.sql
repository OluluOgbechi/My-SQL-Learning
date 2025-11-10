-- Use a particular database schema
USE learn;

-- Create friends table
CREATE TABLE friends (
  id INT PRIMARY KEY,
  name TEXT,
  birthday DATE
);

-- Add a record to the friends table
INSERT INTO friends
VALUES (1, 'Ororo Munroe', '1940-05-30');

-- Check results to see if record has been added
SELECT *
FROM friends;

-- Add two more records to the friends table
INSERT INTO friends (id, name, birthday)
VALUES 
  (2, 'Abigail Koiki', '1995-12-13'),
  (3, 'Precious Elochukwu', '2000-07-13');

-- Update the name of the first friend added to the table i.e. id = 1
UPDATE friends
SET name = 'Storm'
WHERE id = 1;

-- Check results to confirm update has been made
SELECT *
FROM friends;

-- Add a new column to the friends table
ALTER TABLE friends
ADD COLUMN email TEXT;

-- Temporarily Disable Safe Update Mode
SET SQL_SAFE_UPDATES = 0;

-- Update the emails of each record in the friends table
UPDATE friends
SET email = CASE
  WHEN id = 1 THEN 'storm@codecademy.com'
  WHEN id = 2 THEN 'akoiki@yahoo.com'
  ELSE 'pelochukwu@gmail.com'
END;

-- Check results to confirm emails have been updated
SELECT *
FROM friends;

-- Delete fictional friend from the friends table
DELETE FROM friends
WHERE name = 'Storm';

-- Check results to confirm the record has been deleted
SELECT *
FROM friends
WHERE name = 'Storm';