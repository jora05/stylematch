DROP TABLE IF EXISTS collected CASCADE;
DROP TABLE IF EXISTS matches CASCADE;
DROP TABLE IF EXISTS photos CASCADE;
DROP TABLE IF EXISTS styles CASCADE;


CREATE TABLE photos(
	photo_id  INT PRIMARY KEY,
	photo_name VARCHAR(225) NOT NULL,
	photo_url TEXT
);

CREATE TABLE styles (
	style_id  INT PRIMARY KEY,
	style_name VARCHAR(255) NOT NULL
);

CREATE TABLE matches ( 
	photo_id INT NOT NULL,
	style_id INT NOT NULL,
	CONSTRAINT fk_photo FOREIGN KEY(photo_id) REFERENCES photos(photo_id) ON DELETE CASCADE,
	CONSTRAINT fk_style FOREIGN KEY(style_id) REFERENCES styles(style_id) ON DELETE CASCADE,
	UNIQUE(photo_id, style_id)
);

CREATE TABLE collected(
	photo_id INT NOT NULL,
    style_id INT NOT NULL,
	CONSTRAINT fk_collected_photo FOREIGN KEY(photo_id) REFERENCES photos(photo_id) ON DELETE CASCADE,
    CONSTRAINT fk_collected_style FOREIGN KEY(style_id) REFERENCES styles(style_id) ON DELETE CASCADE,
	UNIQUE(photo_id, style_id)
);

-- Insert styles
INSERT INTO styles (style_id, style_name) VALUES (01, 'oldmoney');
INSERT INTO styles (style_id, style_name) VALUES (02, 'ppp');
INSERT INTO styles (style_id, style_name) VALUES (03, 'glam');
INSERT INTO styles (style_id, style_name) VALUES (04, 'streetwear');
INSERT INTO styles (style_id, style_name) VALUES (05, 'gothic');
INSERT INTO styles (style_id, style_name) VALUES (06, 'sporty');

-- Insert photos
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (1, 'o-8', 'OldMoney/-8.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (2, 'oUnknown-13', 'OldMoney/Unknown-13.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (3, 'o-1', 'OldMoney/-1.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (4, 'o-6', 'OldMoney/-6.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (5, 'o-7', 'OldMoney/-7.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (6, 'oatt.MDZo2c56lu1hFX1It8gtkBL8SDJqAfSwtYkDE3tuf7w', 'OldMoney/att.MDZo2c56lu1hFX1It8gtkBL8SDJqAfSwtYkDE3tuf7w.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (7, 'o-5', 'OldMoney/-5.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (8, 'o-4', 'OldMoney/-4.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (9, 'pUnknown-5', 'PPP/Unknown-5.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (10, 'p-3', 'PPP/ -3.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (11, 'p-2', 'PPP/ -2.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (12, 'pUnknown-4', 'PPP/Unknown-4.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (13, 'paesthetic it girl pink pilates princess ballet…', 'PPP/aesthetic it girl pink pilates princess ballet….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (14, 'pUnknown-6', 'PPP/Unknown-6.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (15, 'pEver wonder what my pink Pilates princess…', 'PPP/Ever wonder what my pink Pilates princess….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (16, 'pUnknown-7', 'PPP/Unknown-7.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (17, 'pUnknown-3', 'PPP/Unknown-3.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (18, 'p-5', 'PPP/ -5.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (19, 'p-4', 'PPP/ -4.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (20, 'pUnknown-2', 'PPP/Unknown-2.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (21, 'p-6', 'PPP/ -6.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (22, 'pAll your favorites on sale just now!! 🥹💓', 'PPP/All your favorites on sale just now!! 🥹💓.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (23, 'pUnknown', 'PPP/Unknown.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (24, 'pUnknown-10', 'PPP/Unknown-10.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (25, 'pSummer Outfits for Men | Mens Outfits', 'PPP/Summer Outfits for Men | Mens Outfits.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (26, 'pPastel Yellow for Spring  IG_ @kellirosee…', 'PPP/Pastel Yellow for Spring  IG_ @kellirosee….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (27, 'pPink | Pink Pilates Princess Aesthetic | Health I…', 'PPP/Pink | Pink Pilates Princess Aesthetic | Health I….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (28, 'pActive Outfit', 'PPP/Active Outfit.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (29, 'pLevel up your style with aesthetic and stylish…', 'PPP/Level up your style with aesthetic and stylish….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (30, 'pUnknown-9', 'PPP/Unknown-9.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (31, 'pUnknown-8', 'PPP/Unknown-8.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (32, 'lUnknown-12', 'Glam/Unknown-12.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (33, 'llook 45', 'Glam/look 45.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (34, 'lUnknown-14', 'Glam/Unknown-14.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (35, 'lUnknown-28', 'Glam/Unknown-28.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (36, 'lUnknown-29', 'Glam/Unknown-29.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (37, 'lUnknown-16', 'Glam/Unknown-16.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (38, 'lUnknown-27', 'Glam/Unknown-27.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (39, 'lUnknown-33', 'Glam/Unknown-33.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (40, 'lUnknown-32', 'Glam/Unknown-32.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (41, 'l#teyanataylor #metgala2025', 'Glam/#teyanataylor #metgala2025.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (42, 'lUnknown-30', 'Glam/Unknown-30.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (43, 'lUnknown-31', 'Glam/Unknown-31.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (44, 'lUnknown-35', 'Glam/Unknown-35.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (45, 'lUnknown-34', 'Glam/Unknown-34.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (46, 'lUnknown-36', 'Glam/Unknown-36.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (47, 'lUnknown-37', 'Glam/Unknown-37.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (48, 'lUnknown-42', 'Glam/Unknown-42.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (49, 'lUnknown-41', 'Glam/Unknown-41.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (50, 'l♡♡', 'Glam/♡♡.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (51, 'tone n only ♟️ @styledbyurbane   #styledbyurbane…', 'Streetwear/one n only ♟️ @styledbyurbane   #styledbyurbane….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (52, 't#streetstyle #fashion #style', 'Streetwear/#streetstyle #fashion #style.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (53, 'tZara trendy outfit inspiration for men_ Stylish…', 'Streetwear/Zara trendy outfit inspiration for men_ Stylish….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (54, 'tShapewear like tank top, find dupe here _)…', 'Streetwear/Shapewear like tank top, find dupe here _)….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (55, 'tUnknown-38', 'Streetwear/Unknown-38.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (56, 'tUnknown-17', 'Streetwear/Unknown-17.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (57, 'tUtnknown-26', 'Streetwear/Unknown-26.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (58, 'tUnknown-18', 'Streetwear/Unknown-18.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (59, 'tUnknown-24', 'Streetwear/Unknown-24.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (60, 'tUnknown-25', 'Streetwear/Unknown-25.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (61, 'tUnknown-19', 'Streetwear/Unknown-19.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (62, 'tUnknown-21', 'Streetwear/Unknown-21.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (63, 'tUnknown-20', 'Streetwear/Unknown-20.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (64, 't30 Tom Boy Femme Outfits You Need to Try 2024', 'Streetwear/30 Tom Boy Femme Outfits You Need to Try 2024.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (65, 'tUnknown-22', 'Streetwear/Unknown-22.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (66, 'tUnknown-23', 'Streetwear/Unknown-23.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (67, 'tnot my pic - fashion, outfit inspo', 'Streetwear/not my pic - fashion, outfit inspo.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (68, 'gUnknown-5', 'Gothic/Unknown-5.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (69, 'gasymmetrical top faux leather berlin core rave…', 'Gothic/asymmetrical top faux leather berlin core rave….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (70, 'gUnknown-4', 'Gothic/Unknown-4.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (71, 'gUnknown-6', 'Gothic/Unknown-6.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (72, 'gUnknown-7', 'Gothic/Unknown-7.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (73, 'gUnknown-3', 'Gothic/Unknown-3.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (74, 'gUnknown-2', 'Gothic/Unknown-2.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (75, 'gblack skirt black corset gothic outfit', 'Gothic/black skirt black corset gothic outfit.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (76, 'gUnknown', 'Gothic/Unknown.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (77, 'gUnknown-39', 'Gothic/Unknown-39.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (78, 'gUnknown-11', 'Gothic/Unknown-11.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (79, 'gUnknown-10', 'Gothic/Unknown-10.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (80, 'gUnknown-15', 'Gothic/Unknown-15.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (81, 'gMilan Fashion Week_ desfile Dolce & Gabbana…', 'Gothic/Milan Fashion Week_ desfile Dolce & Gabbana….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (82, 'gEmbrace the perfect fusion of gothic and…', 'Gothic/Embrace the perfect fusion of gothic and….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (83, 'g🖤', 'Gothic/🖤.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (84, 'gUnknown-44', 'Gothic/Unknown-44.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (85, 'g10 Casual Goth Business Outfits You Have To See! –…', 'Gothic/10 Casual Goth Business Outfits You Have To See! –….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (86, 'gUnknown-43', 'Gothic/Unknown-43.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (87, 'gUnknown-9', 'Gothic/Unknown-9.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (88, 'gUnknown-40', 'Gothic/Unknown-40.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (89, 'gUnknown-8', 'Gothic/Unknown-8.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (90, 'sUnknown-5', 'Sporty/Unknown-5.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (91, 'sUnknown-4', 'Sporty/Unknown-4.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (92, 'sUnknown-6', 'Sporty/Unknown-6.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (93, 'sเสื้อเจอร์ซีย์กีฬาของนักออกแบบ…', 'Sporty/เสื้อเจอร์ซีย์กีฬาของนักออกแบบ….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (94, 'sUnknown-7', 'Sporty/Unknown-7.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (95, 'sUnknown-3', 'Sporty/Unknown-3.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (96, 's👟 Discover 20+ Athleisure Outfits every fashion…', 'Sporty/👟 Discover 20+ Athleisure Outfits every fashion….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (97, 'sUnknown-2', 'Sporty/Unknown-2.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (98, 'sUnknown-4 copy', 'Sporty/Unknown-4 copy.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (99, 'sUnknown', 'Sporty/Unknown.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (100, 'sUnknown-3 copy', 'Sporty/Unknown-3 copy.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (101, 'sUnknown-2 copy', 'Sporty/Unknown-2 copy.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (102, 'sUnknown copy', 'Sporty/Unknown copy.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (103, 'sThe ultimate sporty-meets-chic outfit 🔥 This…', 'Sporty/The ultimate sporty-meets-chic outfit 🔥 This….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (104, 'sTee time attire_ Our classic fleece style…', 'Sporty/Tee time attire_ Our classic fleece style….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (105, 's2024 Spring Streetwear Trends_ Chic Outfits for…', 'Sporty/2024 Spring Streetwear Trends_ Chic Outfits for….jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (106, 'sUnknown-9', 'Sporty/Unknown-9.jpg');
INSERT INTO photos (photo_id, photo_name, photo_url) VALUES (107, 'sUnknown-8', 'Sporty/Unknown-8.jpg');




--Insert in match

INSERT INTO matches (photo_id, style_id) VALUES (1, 01);
INSERT INTO matches (photo_id, style_id) VALUES (2, 01);
INSERT INTO matches (photo_id, style_id) VALUES (3, 01);
INSERT INTO matches (photo_id, style_id) VALUES (4, 01);
INSERT INTO matches (photo_id, style_id) VALUES (5, 01);
INSERT INTO matches (photo_id, style_id) VALUES (6, 01);
INSERT INTO matches (photo_id, style_id) VALUES (7, 01);
INSERT INTO matches (photo_id, style_id) VALUES (8, 01);
INSERT INTO matches (photo_id, style_id) VALUES (9, 02);
INSERT INTO matches (photo_id, style_id) VALUES (10, 02);
INSERT INTO matches (photo_id, style_id) VALUES (11, 02);
INSERT INTO matches (photo_id, style_id) VALUES (12, 02);
INSERT INTO matches (photo_id, style_id) VALUES (13, 02);
INSERT INTO matches (photo_id, style_id) VALUES (14, 02);
INSERT INTO matches (photo_id, style_id) VALUES (15, 02);
INSERT INTO matches (photo_id, style_id) VALUES (16, 02);
INSERT INTO matches (photo_id, style_id) VALUES (16, 06);
INSERT INTO matches (photo_id, style_id) VALUES (17, 02);
INSERT INTO matches (photo_id, style_id) VALUES (18, 02);
INSERT INTO matches (photo_id, style_id) VALUES (19, 02);
INSERT INTO matches (photo_id, style_id) VALUES (19, 06);
INSERT INTO matches (photo_id, style_id) VALUES (20, 02);
INSERT INTO matches (photo_id, style_id) VALUES (21, 02);
INSERT INTO matches (photo_id, style_id) VALUES (22, 02);
INSERT INTO matches (photo_id, style_id) VALUES (23, 02);
INSERT INTO matches (photo_id, style_id) VALUES (24, 02);
INSERT INTO matches (photo_id, style_id) VALUES (25, 02);
INSERT INTO matches (photo_id, style_id) VALUES (25, 04);
INSERT INTO matches (photo_id, style_id) VALUES (26, 02);
INSERT INTO matches (photo_id, style_id) VALUES (27, 02);
INSERT INTO matches (photo_id, style_id) VALUES (28, 02);
INSERT INTO matches (photo_id, style_id) VALUES (29, 02);
INSERT INTO matches (photo_id, style_id) VALUES (30, 02);
INSERT INTO matches (photo_id, style_id) VALUES (31, 02);
INSERT INTO matches (photo_id, style_id) VALUES (32, 03);
INSERT INTO matches (photo_id, style_id) VALUES (33, 03);
INSERT INTO matches (photo_id, style_id) VALUES (34, 03);
INSERT INTO matches (photo_id, style_id) VALUES (34, 01);
INSERT INTO matches (photo_id, style_id) VALUES (35, 03);
INSERT INTO matches (photo_id, style_id) VALUES (36, 03);
INSERT INTO matches (photo_id, style_id) VALUES (37, 03);
INSERT INTO matches (photo_id, style_id) VALUES (38, 03);
INSERT INTO matches (photo_id, style_id) VALUES (39, 03);
INSERT INTO matches (photo_id, style_id) VALUES (40, 03);
INSERT INTO matches (photo_id, style_id) VALUES (41, 03);
INSERT INTO matches (photo_id, style_id) VALUES (42, 03);
INSERT INTO matches (photo_id, style_id) VALUES (43, 03);
INSERT INTO matches (photo_id, style_id) VALUES (44, 03);
INSERT INTO matches (photo_id, style_id) VALUES (44, 04);
INSERT INTO matches (photo_id, style_id) VALUES (45, 03);
INSERT INTO matches (photo_id, style_id) VALUES (46, 03);
INSERT INTO matches (photo_id, style_id) VALUES (46, 04);
INSERT INTO matches (photo_id, style_id) VALUES (47, 03);
INSERT INTO matches (photo_id, style_id) VALUES (48, 03);
INSERT INTO matches (photo_id, style_id) VALUES (49, 03);
INSERT INTO matches (photo_id, style_id) VALUES (50, 03);
INSERT INTO matches (photo_id, style_id) VALUES (50, 05);
INSERT INTO matches (photo_id, style_id) VALUES (51, 04);
INSERT INTO matches (photo_id, style_id) VALUES (52, 04);
INSERT INTO matches (photo_id, style_id) VALUES (53, 04);
INSERT INTO matches (photo_id, style_id) VALUES (54, 04);
INSERT INTO matches (photo_id, style_id) VALUES (55, 04);
INSERT INTO matches (photo_id, style_id) VALUES (56, 04);
INSERT INTO matches (photo_id, style_id) VALUES (57, 04);
INSERT INTO matches (photo_id, style_id) VALUES (58, 04);
INSERT INTO matches (photo_id, style_id) VALUES (58, 01);
INSERT INTO matches (photo_id, style_id) VALUES (59, 04);
INSERT INTO matches (photo_id, style_id) VALUES (60, 04);
INSERT INTO matches (photo_id, style_id) VALUES (61, 04);
INSERT INTO matches (photo_id, style_id) VALUES (62, 04);
INSERT INTO matches (photo_id, style_id) VALUES (63, 04);
INSERT INTO matches (photo_id, style_id) VALUES (64, 04);
INSERT INTO matches (photo_id, style_id) VALUES (65, 04);
INSERT INTO matches (photo_id, style_id) VALUES (66, 04);
INSERT INTO matches (photo_id, style_id) VALUES (66, 03);
INSERT INTO matches (photo_id, style_id) VALUES (67, 04);
INSERT INTO matches (photo_id, style_id) VALUES (68, 05);
INSERT INTO matches (photo_id, style_id) VALUES (69, 05);
INSERT INTO matches (photo_id, style_id) VALUES (70, 05);
INSERT INTO matches (photo_id, style_id) VALUES (71, 05);
INSERT INTO matches (photo_id, style_id) VALUES (71, 04);
INSERT INTO matches (photo_id, style_id) VALUES (72, 05);
INSERT INTO matches (photo_id, style_id) VALUES (73, 05);
INSERT INTO matches (photo_id, style_id) VALUES (74, 05);
INSERT INTO matches (photo_id, style_id) VALUES (74, 01);
INSERT INTO matches (photo_id, style_id) VALUES (75, 05);
INSERT INTO matches (photo_id, style_id) VALUES (75, 01);
INSERT INTO matches (photo_id, style_id) VALUES (76, 05);
INSERT INTO matches (photo_id, style_id) VALUES (77, 05);
INSERT INTO matches (photo_id, style_id) VALUES (78, 05);
INSERT INTO matches (photo_id, style_id) VALUES (79, 05);
INSERT INTO matches (photo_id, style_id) VALUES (79, 03);
INSERT INTO matches (photo_id, style_id) VALUES (80, 05);
INSERT INTO matches (photo_id, style_id) VALUES (81, 05);
INSERT INTO matches (photo_id, style_id) VALUES (82, 05);
INSERT INTO matches (photo_id, style_id) VALUES (83, 05);
INSERT INTO matches (photo_id, style_id) VALUES (84, 05);
INSERT INTO matches (photo_id, style_id) VALUES (84, 03);
INSERT INTO matches (photo_id, style_id) VALUES (85, 05);
INSERT INTO matches (photo_id, style_id) VALUES (85, 01);
INSERT INTO matches (photo_id, style_id) VALUES (86, 05);
INSERT INTO matches (photo_id, style_id) VALUES (87, 05);
INSERT INTO matches (photo_id, style_id) VALUES (87, 04);
INSERT INTO matches (photo_id, style_id) VALUES (88, 05);
INSERT INTO matches (photo_id, style_id) VALUES (89, 05);
INSERT INTO matches (photo_id, style_id) VALUES (90, 06);
INSERT INTO matches (photo_id, style_id) VALUES (91, 06);
INSERT INTO matches (photo_id, style_id) VALUES (92, 06);
INSERT INTO matches (photo_id, style_id) VALUES (93, 06);
INSERT INTO matches (photo_id, style_id) VALUES (93, 04);
INSERT INTO matches (photo_id, style_id) VALUES (94, 06);
INSERT INTO matches (photo_id, style_id) VALUES (95, 06);
INSERT INTO matches (photo_id, style_id) VALUES (96, 06);
INSERT INTO matches (photo_id, style_id) VALUES (97, 06);
INSERT INTO matches (photo_id, style_id) VALUES (98, 06);
INSERT INTO matches (photo_id, style_id) VALUES (99, 06);
INSERT INTO matches (photo_id, style_id) VALUES (100, 06);
INSERT INTO matches (photo_id, style_id) VALUES (101, 06);
INSERT INTO matches (photo_id, style_id) VALUES (101, 04);
INSERT INTO matches (photo_id, style_id) VALUES (102, 06);
INSERT INTO matches (photo_id, style_id) VALUES (103, 06);
INSERT INTO matches (photo_id, style_id) VALUES (103, 03);
INSERT INTO matches (photo_id, style_id) VALUES (104, 06);
INSERT INTO matches (photo_id, style_id) VALUES (104, 01);
INSERT INTO matches (photo_id, style_id) VALUES (105, 06);
INSERT INTO matches (photo_id, style_id) VALUES (106, 06);
INSERT INTO matches (photo_id, style_id) VALUES (106, 01);
INSERT INTO matches (photo_id, style_id) VALUES (107, 06);
INSERT INTO matches (photo_id, style_id) VALUES (107, 02);