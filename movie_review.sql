-- Step 1: Create the database
CREATE DATABASE movie_review;

-- Step 2: Use the database
USE movie_review;

-- Step 3: Create the movies table
CREATE TABLE movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_date DATE,
    director VARCHAR(255),
    description TEXT,
    poster VARCHAR(255)
);

-- Step 4: Create the reviews table
CREATE TABLE reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT,
    review TEXT,
    FOREIGN KEY (movie_id) REFERENCES movies(id)
);

-- Step 5: Insert sample data into the movies table with categories
INSERT INTO movies (title, release_date, director, description, poster, category) VALUES
('Taare Zameen Par', '2007-12-21', 'Aamir Khan', 'Ishaan is criticised by his parents for his poor academic performance and is sent away to a boarding school. Ram, an art teacher, however, realises he has dyslexia and helps him uncover his potential.', 'public/tzp.jpeg', 'Bollywood'),
('Student Of The Year', '2012-10-19', 'Karan Johar', 'Several alumni reminisce about their final year at St. Theresa\'s College and the events that shaped their lives.', 'public/soty.jpg', 'Bollywood'),
('Zindagi Na Milegi Dobara', '2011-07-15', 'Zoya Akhtar', 'Three friends set out on a road trip in Spain, where they confront their fears and rediscover their bond.', 'public/znmd.jpg', 'Bollywood'),
('Yeh Jawaani Hai Deewani', '2013-05-31', 'Ayan Mukerji', 'A group of friends reconnects years after their college days, discovering their dreams and relationships have changed.', 'public/yjh.jpg', 'Bollywood'),
('Dil Dhadakne Do', '2015-06-05', 'Zoya Akhtar', 'A wealthy family’s journey on a cruise reveals hidden truths and personal conflicts among its members.', 'public/ddd.jpg', 'Bollywood'),
('All the Bright Places', '2020-02-28', 'Brett Haley', 'Two teens struggle with the emotional and physical scars of their past and discover that even the smallest places and moments can mean something.', 'public/atbp.jpg', 'Hollywood'),
('Me Before You', '2016-06-03', 'Thea Sharrock', 'A young woman forms an unlikely bond with a recently-paralyzed man she\'s taking care of.', 'public/mby.jpg', 'Hollywood'),
('Midnight Sun', '2018-03-23', 'Scott Speer', 'A teenage girl with a rare condition that makes her sensitive to sunlight falls in love with a boy who brings light into her life.', 'public/ms.jpg', 'Hollywood'),
('Purple Hearts', '2022-07-29', 'Elizabeth Allen Rosenbaum', 'A musician and a soldier enter a fake marriage for benefits, only to find that their feelings become more real.', 'public/ph.jpg', 'Hollywood'),
('The Notebook', '2004-06-25', 'Nick Cassavetes', 'A young couple falls deeply in love during the early years of World War II, with their relationship tested by war and time.', 'public/tn.jpg', 'Hollywood'),
('Mean Girls', '2004-04-30', 'Mark Waters', 'A high school girl navigates the complicated social dynamics of teenage life after moving from Africa to America.', 'public/mg.jpg', 'Hollywood');


-- Step 6: Insert sample reviews if needed
INSERT INTO reviews (movie_id, review) VALUES
(1, 'An emotional journey that everyone should experience.'),
(2, 'A fun movie with great performances.'),
(1, 'A beautiful depiction of dyslexia and childhood struggles.'),
(3, 'A delightful mix of romance and comedy.'),
(4, 'A visually stunning film with a strong message.'),
(5, 'A nostalgic look at friendship and love.'),
(6, 'A gripping story that keeps you engaged.');
