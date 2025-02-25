-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  galaxy TEXT NOT NULL,
);

CREATE TABLE moons (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  planet_id INTEGER NOT NULL,
  FOREIGN KEY (planet_id) REFERENCES planets(id)
);

CREATE TABLE orbits (
  id SERIAL PRIMARY KEY,
  planet_id INTEGER NOT NULL,
  orbits_around VARCHAR(100) NOT NULL,
  FOREIGN KEY (planet_id) REFERENCES planets(id)
);


INSERT INTO planets
  (name, orbital_period_in_years, orbits_around, galaxy, moons)
VALUES
  ('Earth', 1.00, 'The Sun', 'Milky Way' )
  ('Mars', 1.88, 'The Sun', 'Milky Way' )
  ('Venus', 0.62, 'The Sun', 'Milky Way')
  ('Neptune', 164.8, 'The Sun', 'Milky Way')
  ('Proxima Centauri b', 0.03, 'Milky Way')
  ('Gliese 876 b', 0.23, 'Milky Way');

INSERT INTO orbits (planet_id, orbits_around)
VALUES
  (1, 'The Sun'),
  (2, 'The Sun'),
  ( 'The Sun'),
  (4, 'The Sun'),
  (5, 'Proxima Centauri'),
  (6, 'Gliese 876');

INSERT INTO moons (name, planet_id)
VALUES
  ('The Moon', 1),
  ('Phobos', 2),
  ('Deimos', 2),
  ('Naiad', 4),
  ('Thalassa', 4),
  ('Despina', 4),
  ('Galatea', 4),
  ('Larissa', 4),
  ('S/2004 N 1', 4),
  ('Proteus', 4),
  ('Triton', 4),
  ('Nereid', 4),
  ('Halimede', 4),
  ('Sao', 4),
  ('Laomedeia', 4),
  ('Psamathe', 4),
  ('Neso', 4);