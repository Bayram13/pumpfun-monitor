CREATE TABLE IF NOT EXISTS tokens (
  id SERIAL PRIMARY KEY,
  token_address TEXT UNIQUE NOT NULL,
  name TEXT,
  symbol TEXT,
  decimals INT,
  total_supply NUMERIC,
  first_seen TIMESTAMP DEFAULT now(),
  last_seen TIMESTAMP DEFAULT now(),
  metadata JSONB
);

CREATE TABLE IF NOT EXISTS pairs (
  id SERIAL PRIMARY KEY,
  pair_address TEXT UNIQUE NOT NULL,
  token_a TEXT,
  token_b TEXT,
  reserves JSONB,
  created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE IF NOT EXISTS alerts (
  id SERIAL PRIMARY KEY,
  token_address TEXT,
  message TEXT,
  created_at TIMESTAMP DEFAULT now()
);
