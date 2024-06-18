CREATE TABLE public.dogs (
	id serial,
	dogname varchar(32) NOT NULL,
	breed text NOT NULL,
	summary text NULL,
	datecreated timestamp NOT NULL DEFAULT now(),
	datemodified timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	imageurl varchar(2048) NULL,
	adopted bool NULL,
	locationid int4 NOT NULL,
	writerid int4 NULL,
	description text NULL,
	CONSTRAINT dogs_pkey PRIMARY KEY (id),
	CONSTRAINT fk_dogsLT FOREIGN KEY (locationid) REFERENCES locations (id),
  CONSTRAINT fk_dogs FOREIGN KEY (writerid) REFERENCES users (id)
  
);


INSERT INTO dogs (dogname, breed,summary, imageurl, locationid, writerid, description) VALUES
	('Max', 'Labrador Retriever','Age: 3 years
Medical Records: Up-to-date vaccinations, neutered, and microchipped','http://localhost:10888/api/v1/images/ef8ac20c-1eeb-4605-92cb-0aaf7e873777',2 ,1,'Max is a friendly and energetic Labrador Retriever. He loves playing fetch.'),
	('Apple', 'German Shepherd','Age: 2 years
Medical Records: Vaccinations up to date, spayed, and heartworm negative','http://localhost:10888/api/v1/images/7e484eb6-afa7-47ec-a76a-2ed4bec73067',3, 4,'Apple is a loyal and intelligent German Shepherd.  She is house-trained and knows basic commands.'),
	('John', 'Golden Retriever','Age: 5 years
Medical Records: Vaccinated, spayed, and in good health','http://localhost:10888/api/v1/images/dacf6518-110f-4046-846a-f8619093cce9', 2, 1,'John is a gentle Golden Retriever.' ),
	('Rocky', 'Bulldog', 'Age: 4 years
Medical Records: Neutered, healthy', 'http://localhost:10888/api/v1/images/bfd79cf7-806c-4f0a-bfbd-10a15e5561ff3',2, 4,'Rocky is a playful and friendly Bulldog.');
