/*
 Source Server         : books
 Source Server Type    : SQLite
 File Encoding         : utf-8
 Date: 07/03/2015 10:04:14 AM
*/

PRAGMA foreign_keys = false;

-- ----------------------------
--  Table structure for authors
-- ----------------------------
DROP TABLE IF EXISTS "authors";
CREATE TABLE authors (
	id INTEGER NOT NULL, 
	name VARCHAR(50) NOT NULL, 
	PRIMARY KEY (id)
);

-- ----------------------------
--  Records of authors
-- ----------------------------
BEGIN;
INSERT INTO "authors" VALUES (1, 'James Joyce');
INSERT INTO "authors" VALUES (2, 'F. Scott Fitzgerald');
INSERT INTO "authors" VALUES (3, 'Vladimir Nabokov');
INSERT INTO "authors" VALUES (4, 'Aldous Huxley');
INSERT INTO "authors" VALUES (5, 'William Faulkner');
INSERT INTO "authors" VALUES (6, 'Joseph Heller');
INSERT INTO "authors" VALUES (7, 'Arthur Koestler');
INSERT INTO "authors" VALUES (8, 'D.H. Lawrence');
INSERT INTO "authors" VALUES (9, 'John Steinbeck');
INSERT INTO "authors" VALUES (10, 'Malcolm Lowry');
INSERT INTO "authors" VALUES (11, 'Samuel Butler');
INSERT INTO "authors" VALUES (12, 'George Orwell');
INSERT INTO "authors" VALUES (13, 'Robert Graves');
INSERT INTO "authors" VALUES (14, 'Virginia Woolf');
INSERT INTO "authors" VALUES (15, 'Theodore Dreiser');
INSERT INTO "authors" VALUES (16, 'Carson McCullers');
INSERT INTO "authors" VALUES (17, 'Kurt Vonnegut');
INSERT INTO "authors" VALUES (18, 'Ralph Ellison');
INSERT INTO "authors" VALUES (19, 'Richard Wright');
INSERT INTO "authors" VALUES (20, 'Saul Bellow');
INSERT INTO "authors" VALUES (21, 'John O’Hara');
INSERT INTO "authors" VALUES (22, 'John Dos Passos');
INSERT INTO "authors" VALUES (23, 'Sherwood Anderson');
INSERT INTO "authors" VALUES (24, 'E.M. Forster');
INSERT INTO "authors" VALUES (25, 'Henry James');
INSERT INTO "authors" VALUES (26, 'James T. Farrell');
INSERT INTO "authors" VALUES (27, 'Ford Madox Ford');
INSERT INTO "authors" VALUES (28, 'Evelyn Waugh');
INSERT INTO "authors" VALUES (29, 'Robert Penn Warren');
INSERT INTO "authors" VALUES (30, 'Thornton Wilder');
INSERT INTO "authors" VALUES (31, 'James Baldwin');
INSERT INTO "authors" VALUES (32, 'Graham Greene');
INSERT INTO "authors" VALUES (33, 'William Golding');
INSERT INTO "authors" VALUES (34, 'James Dickey');
INSERT INTO "authors" VALUES (35, 'Anthony Powell');
INSERT INTO "authors" VALUES (36, 'Ernest Hemingway');
INSERT INTO "authors" VALUES (37, 'Joseph Conrad');
INSERT INTO "authors" VALUES (38, 'Henry Miller');
INSERT INTO "authors" VALUES (39, 'Norman Mailer');
INSERT INTO "authors" VALUES (40, 'Philip Roth');
INSERT INTO "authors" VALUES (41, 'Jack Kerouac');
INSERT INTO "authors" VALUES (42, 'Dashiell Hammett');
INSERT INTO "authors" VALUES (43, 'Edith Wharton');
INSERT INTO "authors" VALUES (44, 'Max Beerbohm');
INSERT INTO "authors" VALUES (45, 'Walker Percy');
INSERT INTO "authors" VALUES (46, 'Willa Cather');
INSERT INTO "authors" VALUES (47, 'James Jones');
INSERT INTO "authors" VALUES (48, 'John Cheever');
INSERT INTO "authors" VALUES (49, 'J.D. Salinger');
INSERT INTO "authors" VALUES (50, 'Anthony Burgess');
INSERT INTO "authors" VALUES (51, 'W. Somerset Maugham');
INSERT INTO "authors" VALUES (52, 'Sinclair Lewis');
INSERT INTO "authors" VALUES (53, 'Lawrence Durell');
INSERT INTO "authors" VALUES (54, 'Richard Hughes');
INSERT INTO "authors" VALUES (55, 'V.S. Naipaul');
INSERT INTO "authors" VALUES (56, 'Nathanael West');
INSERT INTO "authors" VALUES (57, 'Muriel Spark');
INSERT INTO "authors" VALUES (58, 'Rudyard Kipling');
INSERT INTO "authors" VALUES (59, 'Wallace Stegner');
INSERT INTO "authors" VALUES (60, 'Elizabeth Bowen');
INSERT INTO "authors" VALUES (61, 'E.L. Doctorow');
INSERT INTO "authors" VALUES (62, 'Arnold Bennett');
INSERT INTO "authors" VALUES (63, 'Jack London');
INSERT INTO "authors" VALUES (64, 'Henry Green');
INSERT INTO "authors" VALUES (65, 'Salman Rushdie');
INSERT INTO "authors" VALUES (66, 'Erskine Caldwell');
INSERT INTO "authors" VALUES (67, 'William Kennedy');
INSERT INTO "authors" VALUES (68, 'John Fowles');
INSERT INTO "authors" VALUES (69, 'Jean Rhys');
INSERT INTO "authors" VALUES (70, 'Iris Murdoch');
INSERT INTO "authors" VALUES (71, 'William Styron');
INSERT INTO "authors" VALUES (72, 'Paul Bowles');
INSERT INTO "authors" VALUES (73, 'James M. Cain');
INSERT INTO "authors" VALUES (74, 'J.P. Donleavy');
INSERT INTO "authors" VALUES (75, 'Booth Tarkington');
INSERT INTO "authors" VALUES (76, 'Ayn Rand');
INSERT INTO "authors" VALUES (77, 'L. Ron Hubbard');
INSERT INTO "authors" VALUES (78, 'J.R.R. Tolkien');
INSERT INTO "authors" VALUES (79, 'Harper Lee');
INSERT INTO "authors" VALUES (80, 'Frank Herbert');
INSERT INTO "authors" VALUES (81, 'Robert Heinlein');
INSERT INTO "authors" VALUES (82, 'Nevil Shute');
INSERT INTO "authors" VALUES (83, 'Thomas Pynchon');
INSERT INTO "authors" VALUES (84, 'Margaret Mitchell');
INSERT INTO "authors" VALUES (85, 'Jack Schaefer');
INSERT INTO "authors" VALUES (86, 'John Irving');
INSERT INTO "authors" VALUES (87, 'Stephen King');
INSERT INTO "authors" VALUES (88, 'Toni Morrison');
INSERT INTO "authors" VALUES (89, 'E.R. Eddison');
INSERT INTO "authors" VALUES (90, 'Charles de Lint');
INSERT INTO "authors" VALUES (91, 'Flannery O’Connor');
INSERT INTO "authors" VALUES (92, 'Robertson Davies');
INSERT INTO "authors" VALUES (93, 'H.P. Lovecraft');
INSERT INTO "authors" VALUES (94, 'Mickey Spillane');
INSERT INTO "authors" VALUES (95, 'Douglas Adams');
INSERT INTO "authors" VALUES (96, 'Margaret Atwood');
INSERT INTO "authors" VALUES (97, 'Cormac McCarthy');
INSERT INTO "authors" VALUES (98, 'Orson Scott Card');
INSERT INTO "authors" VALUES (99, 'William Gaddis');
INSERT INTO "authors" VALUES (100, 'Ray Bradbury');
INSERT INTO "authors" VALUES (101, 'Shirley Jackson');
INSERT INTO "authors" VALUES (102, 'Terri Windling');
INSERT INTO "authors" VALUES (103, 'Robert Pirsig');
INSERT INTO "authors" VALUES (104, 'Flann O’Brien');
INSERT INTO "authors" VALUES (105, 'Richard Adams');
INSERT INTO "authors" VALUES (106, 'William S. Burroughs');
INSERT INTO "authors" VALUES (107, 'Tom Clancy');
INSERT INTO "authors" VALUES (108, 'Laurell K. Hamilton');
INSERT INTO "authors" VALUES (109, 'Ken Kesey');
INSERT INTO "authors" VALUES (110, 'Robert Holdstock');
INSERT INTO "authors" VALUES (111, 'Richard Bach');
COMMIT;

-- ----------------------------
--  Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS "books";
CREATE TABLE books (
	id INTEGER NOT NULL, 
	title VARCHAR(50) NOT NULL, 
	PRIMARY KEY (id)
);

-- ----------------------------
--  Records of books
-- ----------------------------
BEGIN;
INSERT INTO "books" VALUES (1, 'Ulysses');
INSERT INTO "books" VALUES (2, 'The Great Gatsby');
INSERT INTO "books" VALUES (3, 'A Portrait of the Artist as a Young Man');
INSERT INTO "books" VALUES (4, 'Lolita');
INSERT INTO "books" VALUES (5, 'Brave New World');
INSERT INTO "books" VALUES (6, 'The Sound And the Fury');
INSERT INTO "books" VALUES (7, 'Catch-22');
INSERT INTO "books" VALUES (8, 'Darkness At Noon');
INSERT INTO "books" VALUES (9, 'Sons And Lovers');
INSERT INTO "books" VALUES (10, 'The Grapes of Wrath');
INSERT INTO "books" VALUES (11, 'Under the Volcano');
INSERT INTO "books" VALUES (12, 'The Way of All Flesh');
INSERT INTO "books" VALUES (13, 1984);
INSERT INTO "books" VALUES (14, 'I, Claudius');
INSERT INTO "books" VALUES (15, 'To the Lighthouse');
INSERT INTO "books" VALUES (16, 'An American Tragedy');
INSERT INTO "books" VALUES (17, 'The Heart Is a Lonely Hunter');
INSERT INTO "books" VALUES (18, 'Slaughterhouse-Five');
INSERT INTO "books" VALUES (19, 'Invisible Man');
INSERT INTO "books" VALUES (20, 'Native Son');
INSERT INTO "books" VALUES (21, 'Henderson the Rain King');
INSERT INTO "books" VALUES (22, 'Appointment In Samarra');
INSERT INTO "books" VALUES (23, 'U.S.A.(trilogy)');
INSERT INTO "books" VALUES (24, 'Winesburg, Ohio');
INSERT INTO "books" VALUES (25, 'A Passage To India');
INSERT INTO "books" VALUES (26, 'The Wings of the Dove');
INSERT INTO "books" VALUES (27, 'The Ambassadors');
INSERT INTO "books" VALUES (28, 'Tender Is the Night');
INSERT INTO "books" VALUES (29, 'The Studs Lonigan Trilogy');
INSERT INTO "books" VALUES (30, 'The Good Soldier');
INSERT INTO "books" VALUES (31, 'Animal Farm');
INSERT INTO "books" VALUES (32, 'The Golden Bowl');
INSERT INTO "books" VALUES (33, 'Sister Carrie');
INSERT INTO "books" VALUES (34, 'A Handful of Dust');
INSERT INTO "books" VALUES (35, 'As I Lay Dying');
INSERT INTO "books" VALUES (36, 'All the King’s Men');
INSERT INTO "books" VALUES (37, 'The Bridge of San Luis Rey');
INSERT INTO "books" VALUES (38, 'Howards End');
INSERT INTO "books" VALUES (39, 'Go Tell It On the Mountain');
INSERT INTO "books" VALUES (40, 'The Heart of the Matter');
INSERT INTO "books" VALUES (41, 'Lord of the Flies');
INSERT INTO "books" VALUES (42, 'Deliverance');
INSERT INTO "books" VALUES (43, 'A Dance To the Music of Time (series)');
INSERT INTO "books" VALUES (44, 'Point Counter Point');
INSERT INTO "books" VALUES (45, 'The Sun Also Rises');
INSERT INTO "books" VALUES (46, 'The Secret Agent');
INSERT INTO "books" VALUES (47, 'Nostromo');
INSERT INTO "books" VALUES (48, 'The Rainbow');
INSERT INTO "books" VALUES (49, 'Women In Love');
INSERT INTO "books" VALUES (50, 'Tropic of Cancer');
INSERT INTO "books" VALUES (51, 'The Naked And the Dead');
INSERT INTO "books" VALUES (52, 'Portnoy’s Complaint');
INSERT INTO "books" VALUES (53, 'Pale Fire');
INSERT INTO "books" VALUES (54, 'Light In August');
INSERT INTO "books" VALUES (55, 'On the Road');
INSERT INTO "books" VALUES (56, 'The Maltese Falcon');
INSERT INTO "books" VALUES (57, 'Parade’s End');
INSERT INTO "books" VALUES (58, 'The Age of Innocence');
INSERT INTO "books" VALUES (59, 'Zuleika Dobson');
INSERT INTO "books" VALUES (60, 'The Moviegoer');
INSERT INTO "books" VALUES (61, 'Death Comes For the Archbishop');
INSERT INTO "books" VALUES (62, 'From Here To Eternity');
INSERT INTO "books" VALUES (63, 'The Wapshot Chronicles');
INSERT INTO "books" VALUES (64, 'The Catcher In the Rye');
INSERT INTO "books" VALUES (65, 'A Clockwork Orange');
INSERT INTO "books" VALUES (66, 'Of Human Bondage');
INSERT INTO "books" VALUES (67, 'Heart of Darkness');
INSERT INTO "books" VALUES (68, 'Main Street');
INSERT INTO "books" VALUES (69, 'The House of Mirth');
INSERT INTO "books" VALUES (70, 'The Alexandria Quartet');
INSERT INTO "books" VALUES (71, 'A High Wind In Jamaica');
INSERT INTO "books" VALUES (72, 'A House For Mr Biswas');
INSERT INTO "books" VALUES (73, 'The Day of the Locust');
INSERT INTO "books" VALUES (74, 'A Farewell To Arms');
INSERT INTO "books" VALUES (75, 'Scoop');
INSERT INTO "books" VALUES (76, 'The Prime of Miss Jean Brodie');
INSERT INTO "books" VALUES (77, 'Finnegans Wake');
INSERT INTO "books" VALUES (78, 'Kim');
INSERT INTO "books" VALUES (79, 'A Room With a View');
INSERT INTO "books" VALUES (80, 'Brideshead Revisited');
INSERT INTO "books" VALUES (81, 'The Adventures of Augie March');
INSERT INTO "books" VALUES (82, 'Angle of Repose');
INSERT INTO "books" VALUES (83, 'A Bend In the River');
INSERT INTO "books" VALUES (84, 'The Death of the Heart');
INSERT INTO "books" VALUES (85, 'Lord Jim');
INSERT INTO "books" VALUES (86, 'Ragtime');
INSERT INTO "books" VALUES (87, 'The Old Wives’ Tale');
INSERT INTO "books" VALUES (88, 'The Call of the Wild');
INSERT INTO "books" VALUES (89, 'Loving');
INSERT INTO "books" VALUES (90, 'Midnight’s Children');
INSERT INTO "books" VALUES (91, 'Tobacco Road');
INSERT INTO "books" VALUES (92, 'Ironweed');
INSERT INTO "books" VALUES (93, 'The Magus');
INSERT INTO "books" VALUES (94, 'Wide Sargasso Sea');
INSERT INTO "books" VALUES (95, 'Under the Net');
INSERT INTO "books" VALUES (96, 'Sophie’s Choice');
INSERT INTO "books" VALUES (97, 'The Sheltering Sky');
INSERT INTO "books" VALUES (98, 'The Postman Always Rings Twice');
INSERT INTO "books" VALUES (99, 'The Ginger Man');
INSERT INTO "books" VALUES (100, 'The Magnificent Ambersons');
INSERT INTO "books" VALUES (101, 'Atlas Shrugged');
INSERT INTO "books" VALUES (102, 'The Fountainhead');
INSERT INTO "books" VALUES (103, 'Battlefield Earth');
INSERT INTO "books" VALUES (104, 'The Lord of the Rings');
INSERT INTO "books" VALUES (105, 'To Kill a Mockingbird');
INSERT INTO "books" VALUES (106, 'Anthem');
INSERT INTO "books" VALUES (107, 'We the Living');
INSERT INTO "books" VALUES (108, 'Mission Earth');
INSERT INTO "books" VALUES (109, 'Fear');
INSERT INTO "books" VALUES (110, 'Dune');
INSERT INTO "books" VALUES (111, 'The Moon Is a Harsh Mistress');
INSERT INTO "books" VALUES (112, 'Stranger In a Strange Land');
INSERT INTO "books" VALUES (113, 'A Town Like Alice');
INSERT INTO "books" VALUES (114, 'Gravity’s Rainbow');
INSERT INTO "books" VALUES (115, 'Slaughterhouse Five');
INSERT INTO "books" VALUES (116, 'Gone With the Wind');
INSERT INTO "books" VALUES (117, 'Shane');
INSERT INTO "books" VALUES (118, 'Trustee From the Toolroom');
INSERT INTO "books" VALUES (119, 'A Prayer For Owen Meany');
INSERT INTO "books" VALUES (120, 'The Stand');
INSERT INTO "books" VALUES (121, 'The French Lieutenant’s Woman');
INSERT INTO "books" VALUES (122, 'Beloved');
INSERT INTO "books" VALUES (123, 'The Worm Ouroboros');
INSERT INTO "books" VALUES (124, 'Moonheart');
INSERT INTO "books" VALUES (125, 'Absalom, Absalom!');
INSERT INTO "books" VALUES (126, 'Wise Blood');
INSERT INTO "books" VALUES (127, 'Fifth Business');
INSERT INTO "books" VALUES (128, 'Someplace To Be Flying');
INSERT INTO "books" VALUES (129, 'Yarrow');
INSERT INTO "books" VALUES (130, 'At the Mountains of Madness');
INSERT INTO "books" VALUES (131, 'One Lonely Night');
INSERT INTO "books" VALUES (132, 'Memory And Dream');
INSERT INTO "books" VALUES (133, 'Trader');
INSERT INTO "books" VALUES (134, 'The Hitchhiker’s Guide To the Galaxy');
INSERT INTO "books" VALUES (135, 'The Handmaid’s Tale');
INSERT INTO "books" VALUES (136, 'Blood Meridian');
INSERT INTO "books" VALUES (137, 'On the Beach');
INSERT INTO "books" VALUES (138, 'Greenmantle');
INSERT INTO "books" VALUES (139, 'Ender’s Game');
INSERT INTO "books" VALUES (140, 'The Little Country');
INSERT INTO "books" VALUES (141, 'The Recognitions');
INSERT INTO "books" VALUES (142, 'Starship Troopers');
INSERT INTO "books" VALUES (143, 'The World According To Garp');
INSERT INTO "books" VALUES (144, 'Something Wicked This Way Comes');
INSERT INTO "books" VALUES (145, 'The Haunting of Hill House');
INSERT INTO "books" VALUES (146, 'The Wood Wife');
INSERT INTO "books" VALUES (147, 'The Door Into Summer');
INSERT INTO "books" VALUES (148, 'Zen And the Art of Motorcycle Maintenance');
INSERT INTO "books" VALUES (149, 'At Swim-Two-Birds');
INSERT INTO "books" VALUES (150, 'Farenheit 451');
INSERT INTO "books" VALUES (151, 'Arrowsmith');
INSERT INTO "books" VALUES (152, 'Watership Down');
INSERT INTO "books" VALUES (153, 'Naked Lunch');
INSERT INTO "books" VALUES (154, 'The Hunt For Red October');
INSERT INTO "books" VALUES (155, 'Guilty Pleasures');
INSERT INTO "books" VALUES (156, 'The Puppet Masters');
INSERT INTO "books" VALUES (157, 'It');
INSERT INTO "books" VALUES (158, 'V.');
INSERT INTO "books" VALUES (159, 'Double Star');
INSERT INTO "books" VALUES (160, 'Citizen of the Galaxy');
INSERT INTO "books" VALUES (161, 'One Flew Over the Cuckoo’s Nest');
INSERT INTO "books" VALUES (162, 'Sometimes a Great Notion');
INSERT INTO "books" VALUES (163, 'My Antonia');
INSERT INTO "books" VALUES (164, 'Mulengro');
INSERT INTO "books" VALUES (165, 'Suttree');
INSERT INTO "books" VALUES (166, 'Mythago Wood');
INSERT INTO "books" VALUES (167, 'Illusions');
INSERT INTO "books" VALUES (168, 'The Cunning Man');
INSERT INTO "books" VALUES (169, 'The Satanic Verses');
COMMIT;

-- ----------------------------
--  Table structure for books_authors
-- ----------------------------
DROP TABLE IF EXISTS "books_authors";
CREATE TABLE books_authors (
	fk_book INTEGER, 
	fk_author INTEGER, 
	FOREIGN KEY(fk_book) REFERENCES books (id), 
	FOREIGN KEY(fk_author) REFERENCES authors (id)
);

-- ----------------------------
--  Records of books_authors
-- ----------------------------
BEGIN;
INSERT INTO "books_authors" VALUES (1, 1);
INSERT INTO "books_authors" VALUES (2, 2);
INSERT INTO "books_authors" VALUES (3, 1);
INSERT INTO "books_authors" VALUES (4, 3);
INSERT INTO "books_authors" VALUES (5, 4);
INSERT INTO "books_authors" VALUES (6, 5);
INSERT INTO "books_authors" VALUES (7, 6);
INSERT INTO "books_authors" VALUES (8, 7);
INSERT INTO "books_authors" VALUES (9, 8);
INSERT INTO "books_authors" VALUES (10, 9);
INSERT INTO "books_authors" VALUES (11, 10);
INSERT INTO "books_authors" VALUES (12, 11);
INSERT INTO "books_authors" VALUES (13, 12);
INSERT INTO "books_authors" VALUES (14, 13);
INSERT INTO "books_authors" VALUES (15, 14);
INSERT INTO "books_authors" VALUES (16, 15);
INSERT INTO "books_authors" VALUES (17, 16);
INSERT INTO "books_authors" VALUES (18, 17);
INSERT INTO "books_authors" VALUES (19, 18);
INSERT INTO "books_authors" VALUES (20, 19);
INSERT INTO "books_authors" VALUES (21, 20);
INSERT INTO "books_authors" VALUES (22, 21);
INSERT INTO "books_authors" VALUES (23, 22);
INSERT INTO "books_authors" VALUES (24, 23);
INSERT INTO "books_authors" VALUES (25, 24);
INSERT INTO "books_authors" VALUES (26, 25);
INSERT INTO "books_authors" VALUES (27, 25);
INSERT INTO "books_authors" VALUES (28, 2);
INSERT INTO "books_authors" VALUES (29, 26);
INSERT INTO "books_authors" VALUES (30, 27);
INSERT INTO "books_authors" VALUES (31, 12);
INSERT INTO "books_authors" VALUES (32, 25);
INSERT INTO "books_authors" VALUES (33, 15);
INSERT INTO "books_authors" VALUES (34, 28);
INSERT INTO "books_authors" VALUES (35, 5);
INSERT INTO "books_authors" VALUES (36, 29);
INSERT INTO "books_authors" VALUES (37, 30);
INSERT INTO "books_authors" VALUES (38, 24);
INSERT INTO "books_authors" VALUES (39, 31);
INSERT INTO "books_authors" VALUES (40, 32);
INSERT INTO "books_authors" VALUES (41, 33);
INSERT INTO "books_authors" VALUES (42, 34);
INSERT INTO "books_authors" VALUES (43, 35);
INSERT INTO "books_authors" VALUES (44, 4);
INSERT INTO "books_authors" VALUES (45, 36);
INSERT INTO "books_authors" VALUES (46, 37);
INSERT INTO "books_authors" VALUES (47, 37);
INSERT INTO "books_authors" VALUES (48, 8);
INSERT INTO "books_authors" VALUES (49, 8);
INSERT INTO "books_authors" VALUES (50, 38);
INSERT INTO "books_authors" VALUES (51, 39);
INSERT INTO "books_authors" VALUES (52, 40);
INSERT INTO "books_authors" VALUES (53, 3);
INSERT INTO "books_authors" VALUES (54, 5);
INSERT INTO "books_authors" VALUES (55, 41);
INSERT INTO "books_authors" VALUES (56, 42);
INSERT INTO "books_authors" VALUES (57, 27);
INSERT INTO "books_authors" VALUES (58, 43);
INSERT INTO "books_authors" VALUES (59, 44);
INSERT INTO "books_authors" VALUES (60, 45);
INSERT INTO "books_authors" VALUES (61, 46);
INSERT INTO "books_authors" VALUES (62, 47);
INSERT INTO "books_authors" VALUES (63, 48);
INSERT INTO "books_authors" VALUES (64, 49);
INSERT INTO "books_authors" VALUES (65, 50);
INSERT INTO "books_authors" VALUES (66, 51);
INSERT INTO "books_authors" VALUES (67, 37);
INSERT INTO "books_authors" VALUES (68, 52);
INSERT INTO "books_authors" VALUES (69, 43);
INSERT INTO "books_authors" VALUES (70, 53);
INSERT INTO "books_authors" VALUES (71, 54);
INSERT INTO "books_authors" VALUES (72, 55);
INSERT INTO "books_authors" VALUES (73, 56);
INSERT INTO "books_authors" VALUES (74, 36);
INSERT INTO "books_authors" VALUES (75, 28);
INSERT INTO "books_authors" VALUES (76, 57);
INSERT INTO "books_authors" VALUES (77, 1);
INSERT INTO "books_authors" VALUES (78, 58);
INSERT INTO "books_authors" VALUES (79, 24);
INSERT INTO "books_authors" VALUES (80, 28);
INSERT INTO "books_authors" VALUES (81, 20);
INSERT INTO "books_authors" VALUES (82, 59);
INSERT INTO "books_authors" VALUES (83, 55);
INSERT INTO "books_authors" VALUES (84, 60);
INSERT INTO "books_authors" VALUES (85, 37);
INSERT INTO "books_authors" VALUES (86, 61);
INSERT INTO "books_authors" VALUES (87, 62);
INSERT INTO "books_authors" VALUES (88, 63);
INSERT INTO "books_authors" VALUES (89, 64);
INSERT INTO "books_authors" VALUES (90, 65);
INSERT INTO "books_authors" VALUES (91, 66);
INSERT INTO "books_authors" VALUES (92, 67);
INSERT INTO "books_authors" VALUES (93, 68);
INSERT INTO "books_authors" VALUES (94, 69);
INSERT INTO "books_authors" VALUES (95, 70);
INSERT INTO "books_authors" VALUES (96, 71);
INSERT INTO "books_authors" VALUES (97, 72);
INSERT INTO "books_authors" VALUES (98, 73);
INSERT INTO "books_authors" VALUES (99, 74);
INSERT INTO "books_authors" VALUES (100, 75);
INSERT INTO "books_authors" VALUES (101, 76);
INSERT INTO "books_authors" VALUES (102, 76);
INSERT INTO "books_authors" VALUES (103, 77);
INSERT INTO "books_authors" VALUES (104, 78);
INSERT INTO "books_authors" VALUES (105, 79);
INSERT INTO "books_authors" VALUES (106, 76);
INSERT INTO "books_authors" VALUES (107, 76);
INSERT INTO "books_authors" VALUES (108, 77);
INSERT INTO "books_authors" VALUES (109, 77);
INSERT INTO "books_authors" VALUES (110, 80);
INSERT INTO "books_authors" VALUES (111, 81);
INSERT INTO "books_authors" VALUES (112, 81);
INSERT INTO "books_authors" VALUES (113, 82);
INSERT INTO "books_authors" VALUES (114, 83);
INSERT INTO "books_authors" VALUES (115, 17);
INSERT INTO "books_authors" VALUES (116, 84);
INSERT INTO "books_authors" VALUES (117, 85);
INSERT INTO "books_authors" VALUES (118, 82);
INSERT INTO "books_authors" VALUES (119, 86);
INSERT INTO "books_authors" VALUES (120, 87);
INSERT INTO "books_authors" VALUES (121, 68);
INSERT INTO "books_authors" VALUES (122, 88);
INSERT INTO "books_authors" VALUES (123, 89);
INSERT INTO "books_authors" VALUES (124, 90);
INSERT INTO "books_authors" VALUES (125, 5);
INSERT INTO "books_authors" VALUES (126, 91);
INSERT INTO "books_authors" VALUES (127, 92);
INSERT INTO "books_authors" VALUES (128, 90);
INSERT INTO "books_authors" VALUES (129, 90);
INSERT INTO "books_authors" VALUES (130, 93);
INSERT INTO "books_authors" VALUES (131, 94);
INSERT INTO "books_authors" VALUES (132, 90);
INSERT INTO "books_authors" VALUES (133, 90);
INSERT INTO "books_authors" VALUES (134, 95);
INSERT INTO "books_authors" VALUES (135, 96);
INSERT INTO "books_authors" VALUES (136, 97);
INSERT INTO "books_authors" VALUES (137, 82);
INSERT INTO "books_authors" VALUES (138, 90);
INSERT INTO "books_authors" VALUES (139, 98);
INSERT INTO "books_authors" VALUES (140, 90);
INSERT INTO "books_authors" VALUES (141, 99);
INSERT INTO "books_authors" VALUES (142, 81);
INSERT INTO "books_authors" VALUES (143, 86);
INSERT INTO "books_authors" VALUES (144, 100);
INSERT INTO "books_authors" VALUES (145, 101);
INSERT INTO "books_authors" VALUES (146, 102);
INSERT INTO "books_authors" VALUES (147, 81);
INSERT INTO "books_authors" VALUES (148, 103);
INSERT INTO "books_authors" VALUES (149, 104);
INSERT INTO "books_authors" VALUES (150, 100);
INSERT INTO "books_authors" VALUES (151, 52);
INSERT INTO "books_authors" VALUES (152, 105);
INSERT INTO "books_authors" VALUES (153, 106);
INSERT INTO "books_authors" VALUES (154, 107);
INSERT INTO "books_authors" VALUES (155, 108);
INSERT INTO "books_authors" VALUES (156, 81);
INSERT INTO "books_authors" VALUES (157, 87);
INSERT INTO "books_authors" VALUES (158, 83);
INSERT INTO "books_authors" VALUES (159, 81);
INSERT INTO "books_authors" VALUES (160, 81);
INSERT INTO "books_authors" VALUES (161, 109);
INSERT INTO "books_authors" VALUES (162, 109);
INSERT INTO "books_authors" VALUES (163, 46);
INSERT INTO "books_authors" VALUES (164, 90);
INSERT INTO "books_authors" VALUES (165, 97);
INSERT INTO "books_authors" VALUES (166, 110);
INSERT INTO "books_authors" VALUES (167, 111);
INSERT INTO "books_authors" VALUES (168, 92);
INSERT INTO "books_authors" VALUES (169, 65);
INSERT INTO "books_authors" VALUES (4, 86);
COMMIT;

-- ----------------------------
--  Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "users";
CREATE TABLE users (
	uid INTEGER NOT NULL, 
	firstname VARCHAR(100), 
	lastname VARCHAR(100), 
	email VARCHAR(120), 
	pwdhash VARCHAR(54), 
	PRIMARY KEY (uid), 
	UNIQUE (email)
);

-- ----------------------------
--  Records of users
-- ----------------------------
BEGIN;
INSERT INTO "users" VALUES (1, 'Sergey', 'Soroka', 'sergey.soroka@me.com', 'pbkdf2:sha1:1000$MnIJl4b6$beeeddcd2d9b178677809b99061450f96d4b0a18');
COMMIT;

PRAGMA foreign_keys = true;