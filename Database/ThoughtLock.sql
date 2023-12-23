USE master
GO

IF DB_ID('thoughtlock') IS NOT NULL
BEGIN
	ALTER DATABASE thoughtlock SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE thoughtlock;
END

CREATE DATABASE thoughtlock
GO

USE thoughtlock
GO
--TABLES--
CREATE TABLE users(
	user_id int IDENTITY(1001,1) NOT NULL,
	username varchar(50) NOT NULL,
	email varchar(400) NOT NULL,
	password_hash varchar(200) NOT NULL,
	salt varchar(200) NOT NULL,
	entry_count int NOT NULL,
	user_role varchar(350) NOT NULL
)

CREATE TABLE logins(
	login_id int IDENTITY(1,1) NOT NULL,
	user_id int NOT NULL,
	username varchar(300) NOT NULL, 
	date_time datetime NOT NULL 
)
CREATE TABLE entry(
	entry_id int IDENTITY(1,1) NOT NULL,
	user_id int NOT NULL,
	description varchar(300) NOT NULL, 
	path varchar(MAX) NOT NULL,
	date_time datetime NOT NULL 
)
CREATE TABLE subject(
	subject_id int IDENTITY(3001,1) NOT NULL,
	user_id int NOT NULL,
	description varchar(MAX) NOT NULL,
	related_subjects_id int NOT NULL,
	parent_subjects_id int NOT NULL,
	child_subjects_id int NOT NULL,
	subject_name varchar(100) NOT NULL
)
CREATE TABLE subject_entry(
subject_id int NOT NULL,
entry_id int NOT NULL
)
CREATE TABLE entry_entry(
entry_id int NOT NULL,
entry_id_2 int NOT NULL
)
CREATE TABLE subject_subject(
subject_id int NOT NULL,
subject_id_2 int NOT NULL
)
--INSERTS
INSERT INTO users (username, email, entry_count, password_hash, salt, user_role) VALUES ('user', 'dummy@email.net', 0, 'Jg45HuwT7PZkfuKTz6IB90CtWY4=','LHxP4Xh7bN0=','user');
INSERT INTO users (username, email, entry_count, password_hash, salt, user_role) VALUES ('admin','smart@email.com', 0,'YhyGVQ+Ch69n4JMBncM4lNF/i9s=', 'Ar/aB2thQTI=','admin');
INSERT INTO users (username, email, entry_count, password_hash, salt, user_role) VALUES ('new user!', 'user@yahoo.com', 0, 'SJwGoscVAqnsELPHPdMhq6tqYEM=', 'I7cqSJ3qfU4=', 'user');
INSERT INTO users (username, email, entry_count, password_hash, salt, user_role) VALUES ('new admin', 'admin@gmail.com', 0, '7aAwUxYHuUaz2iNz3SjHZHaZq88=', 'ydNeoqlGX9I=', 'admin');
INSERT INTO users (username, email, entry_count, password_hash, salt, user_role) VALUES ('p', 'p', 0, 'w+SKSUSfuCzVYJvJ3zxYHpxY7L0=', 'zlaET17AUpA=', 'admin');
INSERT INTO entry (user_id, description, path, date_time) 
VALUES (
1001, 
'Golly, this base population of the database was kind of tedious, 
but at least it provides a more robust basis going forward with the development of my project.)
INSERT INTO user_info (username, password_hash, salt, entry_count',
'C:\Users\Student\source\repos\personal\ThoughtLock\Database\AdminEntry0.txt', 
GETDATE()) 

INSERT INTO subject (subject_name, user_id, description, child_subjects_id, parent_subjects_id, related_subjects_id) VALUES('Art', 1001, 
'Art is a diverse range of human activity, and its resulting product, 
that involves creative or imaginative talent generally expressive of technical proficiency, 
beauty, emotional power, or conceptual ideas.', 0, 0, 0)

INSERT INTO subject (subject_name, user_id, description, child_subjects_id, parent_subjects_id, related_subjects_id) VALUES('Mathmatics', 1001, 
'Mathematics is an area of knowledge that includes the topics of numbers, formulas and related structures, 
shapes and the spaces in which they are contained, and quantities and their changes. 
These topics are represented in modern mathematics with the major subdisciplines of number theory, algebra, geometry, and analysis, respectively. 
There is no general consensus among mathematicians about a common definition for their academic discipline.', 0, 0, 0)

INSERT INTO subject (subject_name, user_id, description, child_subjects_id, parent_subjects_id, related_subjects_id) VALUES('Science', 1001, 
'Science is a rigorous, systematic endeavor that builds and organizes knowledge in the form of testable explanations and predictions about the world.
Modern science is typically divided into three major branches: natural sciences (e.g., physics, chemistry, and biology), 
which study the physical world; the social sciences (e.g., economics, psychology, and sociology), which study individuals and societies; 
and the formal sciences (e.g., logic, mathematics, and theoretical computer science), which study formal systems, governed by axioms and rules.', 0, 0, 0)

INSERT INTO subject (subject_name, user_id, description, child_subjects_id, parent_subjects_id, related_subjects_id) VALUES('Humanities', 1001, 
'The humanities are more frequently defined as any fields of study outside of natural sciences, social sciences, 
formal sciences (like mathematics), and applied sciences (or professional training).[1] They use methods that are primarily critical, or speculative, 
and have a significant historical element—as distinguished from the mainly empirical approaches of science.
The humanities include the studies of foreign languages, history, philosophy, language arts (literature, writing, oratory, rhetoric, poetry, etc.), 
performing arts (theater, music, dance, etc.), and visual arts (painting, sculpture, photography, filmmaking, etc.).', 0, 0, 0)

INSERT INTO subject (subject_name, user_id, description, child_subjects_id, parent_subjects_id, related_subjects_id) VALUES('Music', 1001, 
'Music is generally defined as the art of arranging sound to create some combination of form, harmony, melody, rhythm, 
or otherwise expressive content. Definitions of music vary depending on culture, though it is an aspect of all human societies 
and a cultural universal. While scholars agree that music is defined by a few specific elements, there is no consensus on their precise definitions. 
The creation of music is commonly divided into musical composition, musical improvisation, and musical performance, 
though the topic itself extends into academic disciplines, criticism, philosophy, psychology, and therapeutic contexts. 
Music may be performed or improvised using a vast range of instruments, including the human voice.', 0, 0, 0)

INSERT INTO subject (subject_name, user_id, description, child_subjects_id, parent_subjects_id, related_subjects_id) VALUES('Philosophy', 1001, 
'Philosophy (love of wisdom in ancient Greek) is a systematic study of general and fundamental questions concerning topics like existence, 
reason, knowledge, value, mind, and language. It is a rational and critical inquiry that reflects on its own methods and assumptions.', 0, 0, 0)

INSERT INTO subject (subject_name, user_id, description, child_subjects_id, parent_subjects_id, related_subjects_id) VALUES('Technology', 1001, 
'Technology is the application of conceptual knowledge for achieving practical goals, especially in a reproducible way.
The word technology can also mean the products resulting from such efforts,[2]: 117 [3] including both tangible tools such as utensils or machines, 
and intangible ones such as software. Technology plays a critical role in science, engineering, and everyday life.', 0, 0, 0)

INSERT INTO subject (subject_name, user_id, description, child_subjects_id, parent_subjects_id, related_subjects_id) VALUES('Business', 1001, 
'Business is the practice of making ones living or making money by producing or buying and selling products 
(such as goods and services). It is also to quote: any activity or enterprise entered into for profit.', 0, 0, 0)

INSERT INTO subject (subject_name, user_id, description, child_subjects_id, parent_subjects_id, related_subjects_id) VALUES('History', 1001, 
'History (derived from Ancient Greek(historía) "inquiry; knowledge acquired by investigation")is the systematic study 
and documentation of the human past.', 0, 0, 0)

INSERT INTO subject (subject_name, user_id, description, child_subjects_id, parent_subjects_id, related_subjects_id) VALUES('Politics', 1001, 
'Politics (from Ancient Greek (politiká) "affairs of the cities") is the set of activities that are associated with making decisions in groups, \
or other forms of power relations among individuals, such as the distribution of resources or status. 
The branch of social science that studies politics and government is referred to as political science.', 0, 0, 0)

INSERT INTO subject (subject_name, user_id, description, child_subjects_id, parent_subjects_id, related_subjects_id) VALUES('Theology', 1001, 
'Theology is the systematic study of the nature of the divine, or more broadly of religious belief. It is taught as an academic discipline, 
typically in universities and seminaries. It occupies itself with the unique content of analyzing the supernatural, 
but also deals with religious epistemology, asks and seeks to answer the question of revelation. Revelation pertains to the acceptance of God, 
gods, or deities, as not only transcendent or above the natural world, but also willing and able to interact with the natural world 
and to reveal themselves to humankind.', 0, 0, 0)

INSERT INTO subject (subject_name, user_id, description, child_subjects_id, parent_subjects_id, related_subjects_id) VALUES('Psycology', 1001, 
'Psychology is the study of mind and behavior in humans and non-humans. Psychology includes the study of conscious and unconscious phenomena, 
including feelings and thoughts. It is an academic discipline of immense scope, crossing the boundaries between the natural and social sciences. 
Psychologists seek an understanding of the emergent properties of brains, linking the discipline to neuroscience. As social scientists, 
psychologists aim to understand the behavior of individuals and groups.', 0, 0, 0)

INSERT INTO subject (subject_name, user_id, description, child_subjects_id, parent_subjects_id, related_subjects_id) VALUES('Personal', 1001, 
'A subject for logging personal notes not necessarily related to any of the other default subjeects. 
Useful for miscellaneous and hard to classify thoughts.', 0, 0, 0)
--CONSTRAINTS--
--user
ALTER TABLE [users] WITH CHECK
ADD CONSTRAINT PK_user PRIMARY KEY (user_id)
ALTER TABLE [users] WITH CHECK
ADD	CONSTRAINT UQ_username UNIQUE (username)
--login
ALTER TABLE [logins] WITH CHECK
ADD CONSTRAINT PK_user PRIMARY KEY (login_id)
ALTER TABLE [logins] WITH CHECK
ADD	CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
--entry
ALTER TABLE [entry] WITH CHECK
ADD CONSTRAINT PK_transfer_type PRIMARY KEY (entry_id)
ALTER TABLE [entry] WITH CHECK
ADD CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
--subject
ALTER TABLE [subject] WITH CHECK
ADD CONSTRAINT PK_subject_id PRIMARY KEY (subject_id)
ALTER TABLE [subject] WITH CHECK
ADD	CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
ALTER TABLE [subject] WITH CHECK
ADD	CONSTRAINT FK_related_subjects_id FOREIGN KEY (related_subjects_id) REFERENCES subject (subject_id)
--subject_entry
ALTER TABLE [subject_entry] WITH CHECK
ADD CONSTRAINT FK_subject_id FOREIGN KEY (subject_id) REFERENCES subject (subject_id)
ALTER TABLE [subject_entry] WITH CHECK
ADD CONSTRAINT FK_entry_id FOREIGN KEY (entry_id) REFERENCES entry (entry_id)
--subject_subject
ALTER TABLE [subject_subject] WITH CHECK
ADD CONSTRAINT FK_subject_id FOREIGN KEY (subject_id) REFERENCES subject (subject_id)
ALTER TABLE [subject_subject] WITH CHECK
ADD CONSTRAINT FK_subject_id_2 FOREIGN KEY (subject_id_2) REFERENCES entry (subject_id)
--entry_entry
ALTER TABLE [subject_entry] WITH CHECK
ADD CONSTRAINT FK_entry_id_2 FOREIGN KEY (entry_id_2) REFERENCES subject (entry_id)
ALTER TABLE [subject_entry] WITH CHECK
ADD CONSTRAINT FK_entry_id FOREIGN KEY (entry_id) REFERENCES entry (entry_id)
