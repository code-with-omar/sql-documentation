CREATE TABLE fruits01(
  fruit_id SERIAL PRIMARY KEY,
  fruit_name VARCHAR (50) NOT NULL,
  fruit_code VARCHAR (10) NOT NULL
  );
INSERT INTO fruits01(fruit_name,fruit_code)
  VALUES
  ('Apple','AP01'),
  ('Banana', 'BA01'),
  ('Orange','OR01')
  