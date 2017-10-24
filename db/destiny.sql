-- DROP TABLE type;
DROP TABLE weapons;
DROP TABLE manufacturer;


CREATE TABLE manufacturer
(
  id SERIAL4 primary key,
  name VARCHAR(255) not null
);

CREATE TABLE weapons
(
  id SERIAL4 primary key,
  name VARCHAR(255) not null,
  type VARCHAR(255) not null,
  manufacturer_id INT4 references manufacturer(id),
  quantity INT4,
  cost_price INT4,
  retail_price INT4,
  mark_up INT4
);

-- CREATE TABLE type
-- (
--   id SERIAL4 primary key
--   type VARCHAR(255) not null,
--   weapon_id INT4 references weapon(id)
-- );
