
SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;

-- MISSION 1
-- Your query here;
SELECT * FROM observations limit 10;

-- MISSION 2
-- Your query here;

SELECT DISTINCT region_id FROM observations;
-- MISSION 3
-- Your query here;
SELECT COUNT(DISTINCT species_id) AS total_species FROM observations;
-- MISSION 4
-- Your query here;
select * from observations where region_id = 2;

-- MISSION 5
-- Your query here;
select * from observations where observation_date = '1998-08-08';

-- MISSION 6
-- Your query here;
select region_id, count(*) as total_observations from observations group by region_id order by total_observations desc;

-- MISSION 7
-- Your query here;
select species_id, count(*) as total_records from observations group by species_id order by total_records desc limit 5;

-- MISSION 8
-- Your query here;
select species_id, count(*) as observation_count from observations group by species_id having observation_count < 5 order by observation_count asc;

-- MISSION 9
-- Your query here;
select observer, count(*) as total from observations group by observer order by total desc;

-- MISSION 10
-- Your query here;
select observations.id, regions.name as region_name, observations.observation_date from observations join regions on observations.region_id = regions.id;

-- MISSION 11
-- Your query here;
select observations.id, species.scientific_name from observations join species on observations.species_id = species.id;
-- MISSION 12
-- Your query here;
select regions.name as region, species.scientific_name, count(*) as total from observations join species on observations.species_id = species.id join regions on observations.region_id = regions.id group by region, species.scientific_name order by region, total desc;
