CREATE DATABASE liadb
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_unicode_ci;

USE liadb;
CREATE TABLE Item (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    icon VARCHAR(255),
    description TEXT
);

CREATE TABLE Origin (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(99) NOT NULL,
    description VARCHAR(1000) NOT NULL
);

CREATE TABLE Trait (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(99) NOT NULL,
    description VARCHAR(1000) NOT NULL
);
CREATE TABLE Champion (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    ultimateinfo VARCHAR(255) NOT NULL,
    cost INT(11) NOT NULL,
    class INT(11) NOT NULL,
    class2 INT(11),
    origin INT(11) NOT NULL,
    origin2 INT(11),
    attack_range INT(11) NOT NULL,
    recommended_items1 INT(11),
    recommended_items2 INT(11),
    recommended_items3 INT(11),
    recommended_items4 INT(11),
    recommended_items5 INT(11),
    FOREIGN KEY (class) REFERENCES Class(id),
    FOREIGN KEY (class2) REFERENCES Class(id),
    FOREIGN KEY (origin) REFERENCES Origin(id),
    FOREIGN KEY (origin2) REFERENCES Origin(id),
    FOREIGN KEY (recommended_items1) REFERENCES Item(id),
    FOREIGN KEY (recommended_items2) REFERENCES Item(id),
    FOREIGN KEY (recommended_items3) REFERENCES Item(id),
    FOREIGN KEY (recommended_items4) REFERENCES Item(id),
    FOREIGN KEY (recommended_items5) REFERENCES Item(id)
);