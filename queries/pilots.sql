USE airport;

create table pilots(
  pilots_id int NOT NULL AUTO_INCREMENT,
  name varchar(30),
  age int,
  model_can_fly varchar(90),
  primary key (pilots_id)
);

INSERT INTO pilots(name, age, model_can_fly)
VALUES ('John', 47, 'Boeing 747, Airbus A320'),
       ('Max', 29, 'Boeing 747, Airbus A320'),
       ('Sasha', 37, 'Boeing 747'),
       ('Igor', 44, 'Airbus A320'),
       ('Oleg', 48, 'Airbus A320'),
       ('Sofia', 29, 'Airbus A320'),
       ('Diana', 31, 'Airbus A320'),
       ('Oksana', 50, 'Airbus A320');

DROP table pilots;