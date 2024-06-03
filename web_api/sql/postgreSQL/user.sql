CREATE TABLE public.users (
	id serial,
	firstname varchar(32) NULL,
	lastname varchar(32) NULL,
	username varchar(16) NOT NULL,
	about text NULL,
	dateregistered timestamp NOT NULL DEFAULT now(),
	"password" varchar(32) NULL,
	passwordsalt varchar(16) NULL,
	email varchar(64) NOT NULL,
	avatarurl varchar(64) NULL,
 	role text, 
	CONSTRAINT users_email_key UNIQUE (email),
	CONSTRAINT users_pkey PRIMARY KEY (id),
	CONSTRAINT users_username_key UNIQUE (username)
);



INSERT INTO users (username, email, password, role) VALUES
	('amy', 'alice@yahoo.com', '123456', 'admin'),
	('alex', 'alex@gmail.com','123456', 'user'),
	('guma', 'guma@t1.com','123456', 'user'),
	('test', 'testg@example.com','123456', 'admin');
  