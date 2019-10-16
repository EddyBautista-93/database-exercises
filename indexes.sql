use codeup_test_db;

SHOW TABLES;

describe albums;

ALTER TABLE albums
    ADD UNIQUE (artist, name);


describe albums;