CREATE TABLE orders (
  id serial PRIMARY KEY,
  total numeric,
  ledger_ref uuid
);

CREATE TABLE ledger_entries (
  id serial PRIMARY KEY,
  order_id int NOT NULL REFERENCES orders(id)
);
