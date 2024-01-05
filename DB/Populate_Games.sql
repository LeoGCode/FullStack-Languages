INSERT INTO Genre (name) VALUES
('Action'),
('Adventure'),
('Casual'),
('Indie'),
('Massively Multiplayer'),
('Racing'),
('RPG'),
('Simulation'),
('Sports'),
('Strategy'),
('Free to Play'),
('Early Access'),
('Single-player'),
('Multi-player'),
('Online Multi-Player'),
('Local Multi-Player'),
('Co-op'),
('Online Co-op'),
('Local Co-op'),
('Shared/Split Screen'),
('Cross-Platform Multiplayer'),
('Metroidvania');

INSERT INTO Genre_Genre (genre_id, upper_genre_id)
VALUES
(22, 1),
(22, 2);


INSERT INTO Games (name, release_date, description)
VALUES
('Hollow Knight', '2017-02-24', 'Forge your own path in Hollow Knight! An epic action adventure through a vast ruined kingdom of insects and heroes. Explore twisting caverns, battle tainted creatures and befriend bizarre bugs, all in a classic, hand-drawn 2D style.'),
('The Witcher 3: Wild Hunt', '2015-05-19', 'The Witcher: Wild Hunt is a story-driven open world RPG set in a visually stunning fantasy universe full of meaningful choices and impactful consequences. In The Witcher, you play as professional monster hunter Geralt of Rivia tasked with finding a child of prophecy in a vast open world rich with merchant cities, pirate islands, dangerous mountain passes, and forgotten caverns to explore.'),
('The Elder Scrolls V: Skyrim', '2011-11-10', 'EPIC FANTASY REBORN The next chapter in the highly anticipated Elder Scrolls saga arrives from the makers of the 2006 and 2008 Games of the Year, Bethesda Game Studios. Skyrim reimagines and revolutionizes the open-world fantasy epic, bringing to life a complete virtual world open for you to explore any way you choose.'),
('The Elder Scrolls IV: Oblivion', '2006-03-20', 'The Elder Scrolls IV: Oblivion® Game of the Year Edition presents one of the best RPGs of all time like never before. Step inside the most richly detailed and vibrant game-world ever created. With a powerful combination of freeform gameplay and unprecedented graphics, you can unravel the main quest at your own pace or explore the vast world and find your own challenges.'),
('The Elder Scrolls III: Morrowind', '2002-05-01', 'An epic, open-ended single-player RPG, Morrowind allows you to create and play any kind of character imaginable. You can choose to follow the main storyline and find the source of the evil blight that plagues the land, or set off on your own to explore strange locations and develop your character based on their actions throughout the game. Featuring stunning 3D graphics, open-ended gameplay, and an incredible level of detail and interactivity, Morrowind offers a gameplay experience like no other.');

INSERT INTO Games (name, release_date)
VALUES
('God of war', '2005-03-22'),
('God of war', '2018-04-20');

INSERT INTO Games_Genre (game_id, genre_id)
VALUES
(1, 22),
(1, 1),
(1, 2);

INSERT INTO Platforms (name, abbreviation)
VALUES
('Microsoft Windows', 'Windows'),
('Linux', 'Linux'),
('macOS', 'macOS'),
('PlayStation', 'PS'),
('PlayStation 2', 'PS2'),
('PlayStation 3', 'PS3'),
('PlayStation 4', 'PS4'),
('PlayStation 5', 'PS5'),
('Xbox', 'Xbox'),
('Xbox 360', 'Xbox 360'),
('Xbox One', 'Xbox One'),
('Nintendo Switch', 'Switch');

INSERT INTO Stores (name, url)
VALUES
('Steam', 'https://store.steampowered.com/'),
('GOG', 'https://www.gog.com/'),
('Epic Games', 'https://www.epicgames.com/store/en-US/'),
('PlayStation Store', 'https://store.playstation.com/en-us/home/games'),
('Xbox Store', 'https://www.xbox.com/en-US/games/all-games'),
('Nintendo Store', 'https://www.nintendo.com/games/'),
('Origin', 'https://www.origin.com/usa/en-us/store'),
('Ubisoft Store', 'https://store.ubi.com/us/home'),
('Bethesda Store', 'https://bethesda.net/en/store'),
('Rockstar Games Launcher', 'https://socialclub.rockstargames.com/rockstar-games-launcher'),
('Humble Bundle', 'https://www.humblebundle.com/store'),
('itch.io', 'https://itch.io/'),
('Game Jolt', 'https://gamejolt.com/'),
('Indie Gala', 'https://www.indiegala.com/store'),
('Indie Game Stand', 'https://indiegamestand.com/');

INSERT INTO Games_Platforms (game_id, platform_id, release_date)
VALUES
(1, 1, '2017-02-24'),
(1, 2, '2017-04-11'),
(1, 3, '2017-04-11'),
(1, 7, '2018-06-12'),
(1, 11, '2018-09-25'),
(1, 12, '2018-09-25');
