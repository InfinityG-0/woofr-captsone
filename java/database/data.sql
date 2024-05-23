BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role)
VALUES
    ('stevemcqueeniscool@yahoo.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER'), -- user_id:1
    ('kaeiscooler@gmail.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN'), -- user_id:2
    ('omg.grethel@gmail.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER'), -- user_id:3
    ('dthig@gmail.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER'), --user_id:4
    ('malikwritescode@gmail.com','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER'),
    ('spring2024@gmail.com', '$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER'); --user_id:6

INSERT INTO owners (user_id, first_name, last_name, birthdate, profile_pic, email)
VALUES
    (1, 'Steve', 'McQueen', '1930-03-24', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/d5qnyhtprq1y40lszwxr.jpg', 'stevemcqueeniscool@yahoo.com'),
    (2, 'Kae', 'Bonaguro', '1996-05-02', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,g_auto,h_500,w_500/ufrz0mzbfp317gtyoi3j.jpg', 'kaeiscooler@gmail.com'),
    (3, 'Grethel', 'Huerta', '1993-05-12', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/gu4ciuhd6kxehtaqzzaj.jpg', 'omg.grethel@gmail.com'),
    (4, 'Darren', 'Thigpen', '2003-03-03', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/n2zihz1ku7zbhy78ctvm.jpg', 'dthig@gmail.com'),
    (5, 'Malik', 'Smith', '1997-10-17', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/tt0ifxexmwhf0azjh6ir.jpg', 'malikwritescode@gmail.com'),
    (6, 'Tech Elevator', 'Spring 2024', '2000-01-16', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/ri9fikebygx6f6soywat.jpg', 'spring2024@gmail.com');

INSERT INTO pets (name, owner_id, birthdate, breed, size, isFriendly, profile_pic)
VALUES
    ('Bean', '3','1996-05-02','pug', 'S', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,g_auto,h_500,w_500/cfmubttguwhtxedjjhjc.jpg'),
    ('Luna', '3', '2008-03-05', 'husky', 'XL', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/fjsipuxsuatxojh9fh10.jpg'),
    ('Olive', '2', '2008-04-05', 'chihuahua', 's', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/r28vjwgdcnyz1vvgohae.jpg'),
    ('Marley', '1', '2008-07-05', 'hound', 'm', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/ua4zodfz5bdhmtb2eaju.jpg'),
    ('Cane', '4', '2017-09-02', 'doberman', 'l', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,g_auto,h_500,w_500/ikjca8eelkwcstogc2ye.jpg'),
    ('Volo', '5', '2019-03-15', 'collie', 's', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/bm4ub4xmiclsbwiujoy0.jpg'),
    ('Steve', '1', '2003-05-06', 'black lab', 'l', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/l87xlyfn4vgy56qm2eru.jpg'),
    ('Baxter', '6', '2003-05-06', 'beagle', 's', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/t_woofr/foadyqfivzjqaudkkf1v.jpg'),
    ('Moxie', '6', '2018-05-04', 'beagle', 's', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/zy1ncnaitnreiw5fiwta.jpg'),
    ('Ahsoka', '6', '2020-09-10', 'corgi', 's', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/eingoeghxmfnzot7uv3b.jpg'),
    ('Obi', '6', '2021-03-21', 'corgi', 's', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/gsgoocgjqjb3wibaw4wy.jpg'),
    ('Juno', '6', '2018-06-17', 'lab mix', 'm', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,g_auto,h_500,w_500/pi85vfsqnkbdppw6kdgd.jpg'),
    ('Lola', '6', '2023-07-01', 'great dane', 'XL', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,g_auto,h_500,w_500/khlnyqctnzthvyqjgphx.jpg'),
    ('Watson', '6', '2022-08-21', 'lab', 'l', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/b8ptvwumarlmmdrlhm7i.jpg'),
    ('Casper', '6', '2023-09-12', 'bichon', 's', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/fgd0vcppfrdoyskhfbwp.jpg'),
    ('Quinn', '6', '2022-01-17', 'bichon', 's', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/zvacuphrfu4kag7o5tkk.jpg'),
    ('Cuddles', '4', '2013-04-09', 'shi-poo', 's', 'true', 'https://res.cloudinary.com/dccsx3iht/image/upload/c_fill,h_500,w_500/klx3ljzkyidxrynfergc.jpg');

INSERT INTO locations(location_name, street_address, city, state_abbr)
VALUES ('Otto Armleder Dog Park', '5057 Wooster Pike', 'Cincinnati', 'OH'),
('Fido Field', '630 Eggleston Ave', 'Cincinnati', 'OH'),
('Mt. Airy Dog Park', '2970 Westwood Northern Blvd', 'Cincinnati', 'OH'),
('Oakley Station Dog Park', '3310 Madison Rd', 'Cincinnati', 'OH'),
('Washington Park', '1230 Elm St', 'Cincinnati', 'OH'),
('Summit Park Dog Park', '4335 Glendale Milford Rd', 'Blue Ash', 'OH'),
('Newport Dog Park', '901 E 6th St', 'Newport', 'KY'),
('Symmes Township Park', '11600 N Lebanon Rd', 'Loveland', 'OH'),
('Amberley Green', '7801 Ridge Ave', 'Cincinnati', 'OH'),
('Fort Thomas Dog Park', '199 Mayfield Ave', 'Fort Thomas', 'KY'),
('The Bark Park & Patio', '7544 Burlington Pike', 'Florence', 'KY'),
('Clepper Dog Park', '663 Barg Salt Run Rd', 'Cincinnati', 'OH'),
('David J Stricker Dog Park', '1539 Clough Pike', 'Batavia', 'OH'),
('Bark Park', '20 New London Rd', 'Hamilton', 'OH'),
('Diamond Dogs Dog Park', '11405 E Miami River Rd', 'Cincinnati', 'OH'),
('Furfield Dog Park', '6611 River Rd', 'Fairfield', 'OH'),
('McCullough Nature Preserve', '2726 Cypress Way', 'Cincinnati', 'OH');

INSERT INTO play_dates(title, description, host_id, date_time, end_date_time, location_id, ispublic)
VALUES ('Paws in the Park', 'A fun day out for dogs and their owners at the local park.', 1, '2024-06-21 10:00:00', '2024-06-21 12:00:00', 1, true),
('Canine Carnival', 'Join us for a carnival-themed event filled with games and treats for dogs!', 2, '2024-06-26 12:00:00','2024-06-20 14:00:00', 2, true),
('Fetch Frenzy', 'A day dedicated to playing fetch with all the furry friends.', 2, '2024-06-25 14:00:00', '2024-06-25 16:00:00', 3, true),
('Doggy Dip Day', 'Cool off with your pups in a splash-worthy pool party!', 2, '2024-06-23 11:00:00', '2024-06-23 13:00:00', 4, true),
('Bark and Brews', 'An evening of mingling with other dog owners at a local brewery.',1, '2024-06-22 18:00:00', '2024-06-22 20:00:00', 5, true),
('Doggie Dash', 'A fun run event for dogs and their humans.', 1, '2024-07-09 09:00:00', '2024-07-09 11:00:00', 6, true),
('Puppy Picnic', 'A picnic in the park specially designed for young puppies.', 1, '2024-06-27 12:00:00', '2024-06-27 14:00:00', 7, true),
('Woof Walk', 'Join us for a scenic walk with our furry companions.',1, '2024-06-23 10:00:00', '2024-06-23 12:00:00', 8, true),
('Doggy Disco', 'Get ready to boogie with your pups at the dog-friendly disco!', 2, '2024-06-24 20:00:00', '2024-06-24 22:00:00', 9, true),
('Graduation Day', 'We should all be super proud of ourselves - I know our pups are!', 2, '2024-06-20 09:00:00', '2024-06-24 17:00:00', 4, true);

INSERT INTO pet_play_dates(play_date_id, pet_id)
VALUES (2, 1),
(1, 2),
(9, 2),
(1, 1),
(10, 2),
(10, 4),
(10, 7),
(10, 8),
(10, 9),
(10, 10),
(10, 11),
(10, 12),
(10, 13),
(10, 14),
(10, 15),
(10, 16),
(10, 17)
;

INSERT INTO messages(message_title, message_content, date_time, poster_id)
VALUES ('Spontaneous Meetup', 'I''m heading to Washington Park with my Husky today at 3:30pm, anyone is welcome to join me!', '2024-04-16 14:30:00', 3)
,('Important notice: ', 'Some dogs have shown signs of aggression during recent playdates. Remember to supervise your pups closely and promote positive interactions. Safety first!', '2024-04-15 18:45:00', 4)
,('Spontaneous pawty alert!', 'Swing by the park for an impromptu playdate. Let your pups make new friends and burn off some energy. See you there in a wag! ', '2024-04-10 09:20:00', 1)
,('Weather Update', 'Attention, fur-parents! Due to bad weather, today''s playdate is canceled. Keep your pups cozy indoors and we''ll fetch some sunshine next time! Stay dry!', '2024-04-02 07:10:00', 3)
,('Exciting news!', 'A new dog park is opening in our neighborhood next month. Cant wait to check it out!', '2024-04-01 16:55:00', 2)
,('The weathermen got it wrong!', 'The sun is shining, and the park beckons. Gather your pups and join us for a pop-up playdate. Let''s make the most of this beautiful day!', '2024-04-02 14:05:00', 5)
,('Behavior alert!', 'Rough play has resulted in minor injuries during past gatherings. Let''s keep an eye on our pups and discourage overly rough behavior. Safety is our top priority!', '2024-03-01 12:40:00', 1)
,('Dog Park Safety Tips!', 'Remember to always keep an eye on your dog at the park, and pick up after them to keep our parks clean and safe for everyone!', '2024-03-22 10:30:00', 2)
,('Reminder!', 'While impromptu gatherings are fun, please remember to monitor your pup''s behavior closely. Let''s ensure all furry friends feel comfortable and safe during our spontaneous playdates.', '2024-02-23 15:20:00', 5)
,('Heads up!', 'A new dog-friendly café just opened up downtown. Let''s organize a meetup to sniff out the best treats and enjoy some pupperchinos together! ', '2024-03-24 09:15:00', 4);

COMMIT TRANSACTION;
