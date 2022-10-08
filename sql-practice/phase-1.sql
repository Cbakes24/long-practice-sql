DROP TABLE IF EXISTS cats;
DROP TABLE IF EXISTS owners;
DROP TABLE IF EXISTS toys;
DROP TABLE IF EXISTS cat_owners;

CREATE TABLE cats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50),
    birth_year INTEGER
);

CREATE TABLE owners (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE toys (
    id INTEGER PRIMARY KEY  AUTOINCREMENT,
    name VARCHAR(50),
    cat_id INTEGER,
    FOREIGN KEY (cat_id) REFERENCES cats(id)
);

CREATE TABLE cat_owners (
    cat_id INTEGER,
    owner_id INTEGER,
    FOREIGN KEY (cat_id) REFERENCES cats(id),
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);
