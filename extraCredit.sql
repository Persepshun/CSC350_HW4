-- Sample inserts from the 'best sellers' on the main page
-- Themes
INSERT INTO Themes (theme_name) VALUES ('Icons');
INSERT INTO Themes (theme_name) VALUES ('Harry Potter');
INSERT INTO Themes (theme_name) VALUES ('Technic');
INSERT INTO Themes (theme_name) VALUES ('Super Mario');

-- Users
INSERT INTO Users (username, password, email, role) 
VALUES ('johnDoe', 'password123', 'john.doe01@email.com', 'Collector');

INSERT INTO Users (username, password, email, role) 
VALUES ('myUserName', 'helloW0rld!', 'myEmailAddress@website.net', 'Admin');

-- Sets
INSERT INTO Sets (name, description, theme_id, piece_count, item_id, image_url, owner_id) 
VALUES ('The Lord of the Rings: Barad-dur', 'Saurons Tower of Barad-dur from the Lord of the Rings Trilogy',
        (SELECT theme_id FROM Themes WHERE theme_name = 'Icons'), 5471, 10333,
        'https://www.lego.com/cdn/cs/set/assets/blt862a9ecc5d52d2e5/10333_boxprod_v39_sha.jpg?format=webply&fit=bounds&quality=70&width=800&height=800&dpr=1.5', 
        (SELECT user_id FROM Users WHERE username = 'myUserName'));

INSERT INTO Sets (name, description, theme_id, piece_count, item_id, image_url, owner_id) 
VALUES ('The Burrow – Collectors Edition', 'The Weasleys house from Harry Potter', 
        (SELECT theme_id FROM Themes WHERE theme_name = 'Harry Potter'), 2405, 76437,
        'https://www.lego.com/cdn/cs/set/assets/blt71539a237ba49671/76437_Box1_v39.png?format=webply&fit=bounds&quality=70&width=800&height=800&dpr=1.5', 
        (SELECT user_id FROM Users WHERE username = 'johnDoe'));

INSERT INTO Sets (name, description, theme_id, piece_count, item_id, image_url, owner_id) 
VALUES ('McLaren P1', 'LEGO Technic set of the luxury car, McLaren P1', 
        (SELECT theme_id FROM Themes WHERE theme_name = 'Technic'), 3893, 42172,
        'https://www.lego.com/cdn/cs/set/assets/bltaf11a3ec76040cc5/42172_boxprod_v39_sha.jpg?format=webply&fit=bounds&quality=70&width=800&height=800&dpr=1.5', 
        (SELECT user_id FROM Users WHERE username = 'johnDoe'));
        
INSERT INTO Sets (name, description, theme_id, piece_count, item_id, image_url, owner_id) 
VALUES ('Piranha Plant', 'Piranha Plant coming out of a pipe from Super Mario', 
        (SELECT theme_id FROM Themes WHERE theme_name = 'Super Mario'), 540, 71426,
        'https://www.lego.com/cdn/cs/set/assets/bltd35dabc7e2fb692e/71426_alt1.png?format=webply&fit=bounds&quality=70&width=800&height=800&dpr=1.5', 
        (SELECT user_id FROM Users WHERE username = 'johnDoe'));
        

-- Images
INSERT INTO Images (set_id, image_url) 
VALUES ((SELECT set_id FROM Sets WHERE name = 'The Lord of the Rings: Barad-dur'), 
        'https://www.lego.com/cdn/cs/set/assets/blt370b7e8cc1fcceb2/10333.png?format=webply&fit=bounds&quality=70&width=800&height=800&dpr=1.5');
        
INSERT INTO Images (set_id, image_url) 
VALUES ((SELECT set_id FROM Sets WHERE name = 'The Burrow – Collectors Edition'), 
        'https://www.lego.com/cdn/cs/set/assets/bltf77db79fda588d75/76437_Prod.png?format=webply&fit=bounds&quality=70&width=800&height=800&dpr=1.5');

INSERT INTO Images (set_id, image_url) 
VALUES ((SELECT set_id FROM Sets WHERE name = 'McLaren P1'), 
        'https://www.lego.com/cdn/cs/set/assets/blt519dac201a3dd4c1/42172.png?format=webply&fit=bounds&quality=70&width=800&height=800&dpr=1.5');
        
INSERT INTO Images (set_id, image_url) 
VALUES ((SELECT set_id FROM Sets WHERE name = 'Piranha Plant'), 
        'https://www.lego.com/cdn/cs/set/assets/bltcd23f2cb070b6d8c/71426.png?format=webply&fit=bounds&quality=70&width=800&height=800&dpr=1.5');
