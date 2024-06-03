CREATE TABLE public.articles (
	id serial,
	title varchar(32) NOT NULL,
	alltext text NOT NULL,
	summary text NULL,
	datecreated timestamp NOT NULL DEFAULT now(),
	datemodified timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	imageurl varchar(2048) NULL,
	published bool NULL,
	authorid int4 NULL,
	description text NULL,
	CONSTRAINT articles_pkey PRIMARY KEY (id),
    CONSTRAINT fk_articles FOREIGN KEY (authorid) REFERENCES users (id)
);

INSERT INTO articles (title, alltext, imageurl, authorid, description) VALUES
	('title 1', 'some stuff','http://localhost:10888/api/v1/images/70332330-2744-4013-8752-048045222afd',	 1,'The selection process was fair for the Panel of Judges led by Professor Ir CY CHENG in view of the distinctive achievements of individual candidates.'),
	('another title', 'interesting','http://localhost:10888/api/v1/images/d3abd3a9-1af4-4baa-a0d6-fe75df2627f1',	 4,'The selection process was fair for the Panel of Judges led by Professor Ir CY CHENG in view of the distinctive achievements of individual candidates.'),
	('last one', 'ok','http://localhost:10888/api/v1/images/2e308af4-625e-41b2-904a-fe73fd07ff28',	 1,'The selection process was fair for the Panel of Judges led by Professor Ir CY CHENG in view of the distinctive achievements of individual candidates.' ),
	('this title is good', 'some text', 'http://localhost:10888/api/v1/images/c9cc3159-ed87-4109-a918-d6964c04784e	',	4,'The selection process was fair for the Panel of Judges led by Professor Ir CY CHENG in view of the distinctive achievements of individual candidates.');


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
Medical Records: Up-to-date vaccinations, neutered, and microchipped','http://localhost:10888/api/v1/images/91bcb7be-a748-4ecc-9e5b-780727a2a78e',1 ,1,'Max is a friendly and energetic Labrador Retriever. He loves playing fetch.'),
	('Apple', 'German Shepherd','Age: 2 years
Medical Records: Vaccinations up to date, spayed, and heartworm negative','http://localhost:10888/api/v1/images/4ea9358f-a367-4a20-8370-992c0468400a',2, 4,'Apple is a loyal and intelligent German Shepherd.  She is house-trained and knows basic commands.'),
	('John', 'Golden Retriever','Age: 5 years
Medical Records: Vaccinated, spayed, and in good health','http://localhost:10888/api/v1/images/f7c5f8a1-3e00-4f95-8abb-79b2644defcc', 3, 1,'John is a gentle Golden Retriever.' ),
	('Rocky', 'Bulldog', 'Age: 4 years
Medical Records: Neutered, healthy', 'http://localhost:10888/api/v1/images/af822c14-2e7f-4d2e-b79f-001b4297a683',2, 4,'Rocky is a playful and friendly Bulldog.');
