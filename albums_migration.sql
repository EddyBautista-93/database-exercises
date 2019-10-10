USE codeup_test_db;

DROP TABLES albums;

CREATE TABLE If NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(255) NOT NULL ,
    name VARCHAR(255) NOT NULL,
    release_date int NOT NULL ,
    sales float,
    genre varchar(255),
    PRIMARY KEY (id)
);