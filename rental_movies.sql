CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INTEGER,
    genre VARCHAR(255),
    rental_price DECIMAL(10, 2),
    available BOOLEAN DEFAULT TRUE,
    length_in_minutes INTEGER,
    replacement_cost INTEGER,
    rating VARCHAR(10)
);

CREATE TABLE rentals (
    rental_id SERIAL PRIMARY KEY,
    movie_id INTEGER REFERENCES movies(movie_id),
    rental_duration INTEGER,
    customer_name VARCHAR(255),
    customer_email VARCHAR(255)
);





-- Inserting 10 movies
INSERT INTO movies (movie_id,title, release_year, genre, rental_price, length_in_minutes, replacement_cost, rating)
VALUES
    (1,'The Time Traveler’s Dilemma', 2022, 'Sci-Fi', 9.99, 13, 15, 'PG'),
    (2,'Midnight Magic: The Mystery Circus', 2021, 'Adventure', 8.50, 12, 12, 'G'),
    (3,'Legends of the Lost City', 2023, 'Fantasy', 7.99, 11, 14, 'PG-13'),
    (4,'The Enchanted Forest Chronicles', 2020, 'Family', 10.99, 14, 16, 'G'),
    (5,'Invention Junction: The Robo Revolution', 2022, 'Animation', 6.50, 9, 11, 'PG'),
    (6,'The Magical Journey of Moonlight Bay', 2023, 'Fantasy', 8.99, 13, 13, 'G'),
    (7,'Pirate Island Adventures', 2021, 'Action', 7.50, 10, 10, 'PG'),
    (8,'Quest for the Crystal Kingdom', 2020, 'Adventure', 9.00, 12, 14, 'G'),
    (9,'The Candy Land Mystery', 2022, 'Family', 8.25, 15, 12, 'G'),
    (10,'Galactic Guardians: The Cosmic Conundrum', 2023, 'Sci-Fi', 11.50, 15, 18, 'PG'),
    (11,'Twisted Tales: Dark Secrets', 2023, 'Horror', 12.99, 15, 20, 'R'),
    (12,'The Sinister Scheme: Shadows of the Night', 2022, 'Thriller', 11.50, 14, 18, 'R'),
    (13,'Forbidden Desires: The Unseen Depths', 2021, 'Drama', 10.25, 13, 16, 'R');

-- Inserting 20 rentals (assuming random associations with movies)
-- Inserting 20 rentals with distinct rental durations
INSERT INTO rentals (movie_id, rental_duration, customer_name, customer_email)
VALUES
    (1, 4, 'Alice Johnson', 'alice@example.com'),
    (2, 5, 'Bob Smith', 'bob@example.com'),
    (3, 6, 'Charlie Brown', 'charlie@example.com'),
    (4, 4, 'Daisy Johnson', 'daisy@example.com'),
    (5, 5, 'Eva Martinez', 'eva@example.com'),
    (6, 6, 'Frank Wilson', 'frank@example.com'),
    (7, 4, 'Grace Thompson', 'grace@example.com'),
    (8, 5, 'Harry Adams', 'harry@example.com'),
    (9, 6, 'Ivy Garcia', 'ivy@example.com'),
    (10, 4, 'Jack Robinson', 'jack@example.com'),
    (11, 5, 'Katie Hall', 'katie@example.com'),
    (12, 6, 'Liam Davis', 'liam@example.com'),
    (13, 4, 'Mia White', 'mia@example.com'),
    (1, 5, 'Noah Lee', 'noah@example.com'),
    (2, 6, 'Olivia Clark', 'olivia@example.com'),
    (3, 4, 'Parker Baker', 'parker@example.com'),
    (4, 5, 'Quinn Miller', 'quinn@example.com'),
    (5, 6, 'Ryan Hill', 'ryan@example.com'),
    (6, 4, 'Sophia Scott', 'sophia@example.com'),
    (7, 5, 'Tyler Perez', 'tyler@example.com'),
    (8, 6, 'Victoria Turner', 'victoria@example.com'),
    (9, 4, 'William Ward', 'william@example.com'),
    (10, 5, 'Xavier Green', 'xavier@example.com'),
    (11, 6, 'Yara Evans', 'yara@example.com'),
    (12, 4, 'Zoe Murphy', 'zoe@example.com'),
    (13, 5, 'Adam Foster', 'adam@example.com'),
    (1, 6, 'Bella Cooper', 'bella@example.com'),
    (2, 4, 'Caleb Rivera', 'caleb@example.com'),
    (3, 5, 'David Brooks', 'david@example.com'),
    (4, 6, 'Emily Price', 'emily@example.com'),
    (5, 4, 'Fiona Butler', 'fiona@example.com'),
    (6, 5, 'George Hayes', 'george@example.com'),
    (7, 6, 'Hannah Simmons', 'hannah@example.com'),
    (8, 4, 'Isaac Long', 'isaac@example.com'),
    (9, 5, 'Jessica Cox', 'jessica@example.com'),
    (10, 6, 'Kevin Reed', 'kevin@example.com'),
    (11, 4, 'Luna Bell', 'luna@example.com'),
    (12, 5, 'Mason Ward', 'mason@example.com'),
    (13, 6, 'Nora Foster', 'nora@example.com');
