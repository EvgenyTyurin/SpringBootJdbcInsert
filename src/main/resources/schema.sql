CREATE TABLE IF NOT EXISTS Ingredient (
	id varchar(4) not null,
	name varchar(25) not null
);

create table if not exists Taco (
    id identity,
    name varchar(50) not null,
    createdAt timestamp not null
);
CREATE TABLE IF NOT EXISTS Taco_Ingredients(
	taco bigint not null,
	ingredient varchar(4) not null
);

ALTER TABLE Taco_Ingredients
	ADD FOREIGN KEY (taco) REFERENCES Taco(id);
ALTER TABLE Taco_Ingredients
	ADD FOREIGN KEY (ingredient) REFERENCES Ingredient(id);
		