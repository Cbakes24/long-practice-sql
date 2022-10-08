-- Find Hermione's cats
-- Your code here
SELECT * FROM cats 
    JOIN cat_owners ON (cat_owners.cat_id = cats.id) 
    JOIN owners ON (owners.id = cat_owners.owner_id)
    WHERE owners.first_name = "Hermione";

-- Find All the Toys for Hermione's cats
-- Your code here
SELECT * FROM toys 
    JOIN cats ON (cats.id = toys.cat_id) 
    JOIN cat_owners ON (cat_owners.cat_id = cats.id)
    JOIN owners ON (owners.id = cat_owners.owner_id)
    WHERE owners.first_name = "Hermione";

SELECT * FROM toys 
    JOIN cats ON (cats.id = toys.cat_id) 
    JOIN cat_owners ON (cat_owners.cat_id = cats.id)
    JOIN owners ON (owners.id = cat_owners.owner_id)
    WHERE cats.birth_year = 2015;
