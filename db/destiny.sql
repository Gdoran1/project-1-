DROP TABLE weapons;
DROP TABLE type;
DROP TABLE manufacturer;


CREATE TABLE manufacturer
(
  id SERIAL4 primary key,
  name VARCHAR(255) not null,
  image_url VARCHAR(255)
);

CREATE TABLE type
(
  id SERIAL4 primary key,
  type VARCHAR(255)
);

CREATE TABLE weapons
(
  id SERIAL4 primary key,
  name VARCHAR(255) not null,
  type_id INT4 references type(id),
  manufacturer_id INT4 references manufacturer(id),
  quantity INT4,
  cost_price INT4,
  retail_price INT4,
  mark_up INT4
);
