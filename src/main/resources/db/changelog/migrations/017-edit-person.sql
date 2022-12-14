ALTER TABLE IF EXISTS person RENAME COLUMN town TO city_id;

ALTER TABLE IF EXISTS person ALTER COLUMN city_id TYPE INT USING city_id::integer;

ALTER TABLE IF EXISTS person ADD CONSTRAINT fk_city FOREIGN KEY (city_id) REFERENCES city (id);