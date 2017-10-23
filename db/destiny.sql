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
  retail_price INT4
);
