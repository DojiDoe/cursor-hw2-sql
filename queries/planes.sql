DROP DATABASE IF EXISTS  airport;
CREATE database airport;
USE airport;

create table planes(
    plane_id int NOT NULL AUTO_INCREMENT,
    model varchar(30),
    serial_number varchar(30),
    seats int,
    PRIMARY KEY (plane_id)
);

INSERT INTO planes (model, serial_number, seats)
VALUES ('Boeing 747','N474EV', 467),
       ('Boeing 747','N615FF', 467),
       ('Airbus A320','F-WWBA', 186),
       ('Airbus A320','F-GFKQ', 186),
       ('Airbus A320','N691UP', 186),
       ('Airbus A320','5N-HHS', 186),
       ('Airbus A320','N613FF', 186);


Drop table planes;