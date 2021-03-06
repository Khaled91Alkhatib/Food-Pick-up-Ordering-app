-- Drop and recreate orders table

DROP TABLE IF EXISTS orders CASCADE;

CREATE TABLE orders (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  status_id INTEGER REFERENCES orders_status(id) ON DELETE CASCADE DEFAULT 0,

  order_time DATE NOT NULL DEFAULT NOW(),
  comment TEXT,
  requested_pickup_time TIME NOT NULL
);
