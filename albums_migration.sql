USE codeup_test_db;

CREATE TABLE If NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(25),
    name VARCHAR(20),
    release_date DATE ,
    sales float ,
    genre varchar(20),

    PRIMARY KEY (id)
);