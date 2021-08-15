SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
USE `ffxiv2`;

INSERT INTO `aetherytes_shb` (`id`, `xivdb_id`, `name`, `name_en`, `name_fr`, `name_de`, `name_jp`, `name_ch`, `id_zone`, `x`, `y`, `z`, `cost`) VALUES
(1, 3335, 'The Crystarium => Tessellation (Lakeland)', 'The Crystarium => Tessellation (Lakeland)', 'Cristarium => Le Pavage', 'Crystarium => Mosaikbrücke (ins Seenland)', 'クリスタリウム => テセレーション鉄橋（レイクランド方面）', NULL, 1, 38.0, 29.6, 0.3, 5.2),
(2, 3044, 'Fort Jobb', 'Fort Jobb', 'Fort Jobb', 'Jobb-Feste', 'ジョッブ砦', '乔布要塞', 1, 36.5, 20.9, 0.2, 0.0),
(3, 3057, 'The Ostall Imperative', 'The Ostall Imperative', 'L\'Impératif d\'Ostall', 'Ostalls Befehl', 'オスタル厳命城', '奥斯塔尔严命城', 1, 6.7, 16.8, 0.5, 0.0),
(4, 3351, 'Eulmore => The Path to Glory (Kholusia)', 'Eulmore => The Path to Glory (Kholusia)', 'Eulmore => Marches de la Gloire (Kholusia)', 'Eulmore => Pfad zum Ruhm (Kholusia)', 'ユールモア => 栄光の道（コルシア島方面）', NULL, 2, 24.9, 38.4, 0.5, 5.2),
(5, 3075, 'Stilltide', 'Stilltide', 'Douceonde', 'Stillwasser', 'スティルタイド', '滞潮村', 2, 34.8, 27.2, 0.2, 0.0),
(6, 3094, 'Wright', 'Wright', 'Cherpant', 'Werfting', 'ライト村', '工匠村', 2, 16.6, 29.1, 0.1, 0.0),
(7, 3105, 'Tomra', 'Tomra', 'Tomra', 'Tomra', 'トメラの村', '图姆拉村', 2, 12.9, 8.9, 4.1, 0.0),
(8, 3122, 'Mord Souq', 'Mord Souq', 'Mord Souq', 'Mordh Souq', 'モルド・スーク', '鼹灵集市', 3, 26.4, 17.0, 1.2, 0.0),
(9, 3129, 'The Inn At Journey\'s Head', 'The Inn At Journey\'s Head', 'Auberge du Grand Départ', 'Ruhstatt vor der Langen Reise', '旅立ちの宿', '上路客店', 3, 29.4, 27.6, 0.9, 0.0),
(10, 3135, 'Twine', 'Twine', 'Queues-liées', 'Pfotenschlag', 'トゥワイン', '络尾聚落', 3, 11.2, 17.1, 1.6, 0.0),
(11, 3147, 'Lydha Lran', 'Lydha Lran', 'Lydha Lran', 'Lydha Lran', 'リダ・ラーン', '群花馆', 4, 14.5, 31.6, 0.4, 0.0),
(12, 3156, 'Pla Enni', 'Pla Enni', 'Pla Enni', 'Pla Enni', 'プラ・エンニ茸窟', NULL, 4, 20.0, 4.3, 1.0, 6.4),
(13, 3157, 'Wolekdorf', 'Wolekdorf', 'Wolekdorf', 'Wolekdorf', 'ヴォレクドルフ', '云村', 4, 29.1, 7.7, 0.8, 0.0),
(14, 3170, 'Slitherbough', 'Slitherbough', 'Serpentige', 'Schlangenzweig', 'スリザーバウ', '蛇行枝', 5, 19.3, 27.4, -0.2, 0.0),
(15, 3179, 'Fanow', 'Fanow', 'Fanow', 'Fanow', 'ファノヴの里', '法诺村', 5, 29.1, 17.6, 0.2, 0.0),
(16, 3195, 'The Ondo Cups', 'The Ondo Cups', 'Baïne', 'Ondo-Becken', 'オンドの潮溜まり', '鳍人潮池', 6, 32.6, 17.4, -2.0, 0.0),
(17, 3205, 'The Macarenses Angle', 'The Macarenses Angle', 'Carré macarien', 'Macarenses-Forum', 'マカレンサス広場', '马克连萨斯广场', 6, 18.6, 25.9, -8.3, 0.0);


INSERT INTO `mobs_shb` (`id`, `xivdb_id`, `name`, `name_en`, `name_fr`, `name_de`, `name_jp`, `name_ch`, `id_zone`, `x`, `y`, `z`, `lvl`, `slain`) VALUES
(1, 8507, 'Hoptrap', 'Hoptrap', 'saute-piège', 'Sprungfalle', 'ホップトラップ', '阱蛇麻', 1, 35.6, 24.1, 0.1, 71, 3),
(2, 8502, 'Violet Triffid', 'Violet Triffid', 'triffide violet', 'violett[a] Triffid', 'ヴァイオレット・トリフィド', '紫罗兰三尖树', 1, 35.3, 25.4, 0.1, 71, NULL),
(3, 8500, 'Giant Iguana', 'Giant Iguana', 'iguane géant', 'Riesenleguan', 'ジャイアント・イグアナ', '巨型鬣蜥', 1, 27.0, 28.6, 0.0, 71, NULL),
(4, 8407, 'Wolverine', 'Wolverine', 'wolvérène féroce', 'wild[a] Vielfraß', 'ウルヴァリン', '貂熊', 1, 27.8, 36.8, 0.1, 71, 2),
(5, 8514, 'Ya-te-veo', 'Ya-te-veo', 'yateveo', 'Yateveo', 'ヤテベオ', '食人花', 1, 32.9, 19.2, 0.1, 71, 3),
(6, 8499, 'Grey Draco', 'Grey Draco', 'draco gris', 'grau[a] Draco', 'グレイ・ドラコ', '灰蜥龙', 1, 37.1, 16.6, 0.4, 71, NULL),
(7, 8505, 'White Gremlin', 'White Gremlin', 'gremlin blanc', 'weiß[a] Gremlin', 'ホワイト・グレムリン', '白色格雷姆林', 1, 33.6, 12.3, 0.5, 71, 2),
(8, 8515, 'Proterosuchus', 'Proterosuchus', 'proterosuchus', 'Proterosuchus', 'プロテロスクス', '古鳄', 1, 28.4, 17.8, 1.1, 71, 1),
(9, 8516, 'Elven Knight', 'Elven Knight', 'chevalier elfe', 'Elfenritter', 'エルヴンナイト', '菁灵骑士', 1, 26.2, 17.5, 1.5, 71, NULL),
(10, 8513, 'Irrlicht', 'Irrlicht', 'Irrlicht', 'Irrwisch', 'イルリヒト', '迷光', 1, 25.6, 17.2, 1.5, 71, NULL),
(11, 8512, 'Coelurosaur', 'Coelurosaur', 'coelurosaure', 'Coelurosaurus', 'コエルロサウルス', '虚骨龙', 1, 22.7, 11.7, 1.0, 71, NULL),
(12, 8504, 'Wetland Warg', 'Wetland Warg', 'warg des plaines humides', 'Sumpfwarg', 'ウェットランド・ワーグ', '湿地座狼', 1, 22.4, 21.0, 0.0, 71, 2),
(13, 8506, 'Silkmoth', 'Silkmoth', 'bombyx', 'Seidenmotte', 'シルクモス', '丝蛾', 1, 10.4, 15.5, 0.2, 71, NULL),
(14, 8786, 'Lake Viper', 'Lake Viper', 'vipère lacustre', 'Seeviper', 'レイクバイパー', '湖畔蝰蛇', 1, 15.6, 22.1, 0.0, 71, 2),
(15, 8498, 'Chiliad Cama', 'Chiliad Cama', 'chama des mille Lacis', 'Chiliad Cama', 'チリアド・キャマ', '千年卡玛', 1, 17.8, 9.5, 0.9, 71, 2),
(16, 8439, 'Smilodon', 'Smilodon', 'smilodon affamé', 'ausgehungert[a] Smilodon', 'スミロドン', '斯剑虎', 1, 10.5, 12.3, 0.6, 71, 2),
(17, 8509, 'Zonure', 'Zonure', 'zonure', 'Zonure', 'ゾヌール', '缠尾蛟', 1, 11.5, 16.9, 0.1, 71, NULL),
(18, 8501, 'Lake Anemone', 'Lake Anemone', 'anémone lacustre', 'Seeanemone', 'レイク・アネモネ', '湖畔风花', 1, 10.2, 20.3, 0.0, 71, NULL),
(19, 8518, 'Hobgoblin', 'Hobgoblin', 'hobgobelin', 'Hobgoblin', 'ホブゴブリン', '大哥布林', 2, 34.1, 30.5, 0.0, 70, 3),
(20, 8523, 'Maultasche', 'Maultasche', 'maultasche', 'Maultasch', 'マウルタッシュ', '饭袋猩猩', 2, 36.0, 29.3, 0.0, 70, 2),
(21, 8536, 'Whiptail', 'Whiptail', 'fouette-queue', 'Peitschenschwanz', 'ウィップテール', '鞭尾跳蜥', 2, 35.5, 24.7, 0.3, 70, 3),
(22, 8521, 'Kholusian Iguana', 'Kholusian Iguana', 'iguane de Kholusia', 'Kholusia-Leguan', 'コルシアイグアナ', '珂露西亚鬣蜥', 2, 29.4, 28.8, 0.1, 70, NULL),
(23, 8539, 'Tragopan', 'Tragopan', 'tragopan', 'Tragopan', 'トラゴパン', '角雉', 2, 26.2, 29.4, 0.1, 70, NULL),
(24, 8542, 'Germinant', 'Germinant', 'germinateur', 'Germinant', 'ジェルミナンツ', '发芽大口花', 2, 26.9, 32.8, 0.2, 70, 2),
(25, 8531, 'Toucalibri', 'Toucalibri', 'toucanlibri', 'Tukalibri', 'トゥカリブリ', '巨喙蜂鸟', 2, 15.9, 31.4, 0.1, 70, NULL),
(26, 8532, 'Wood Eyes', 'Wood Eyes', 'œil des bois', 'Waldwandler', 'ウッドアイズ', '林眼树精', 2, 15.4, 32.5, 0.1, 70, 2),
(27, 8787, 'Big Claw', 'Big Claw', 'grosse pince', 'Mörderkrabbe', 'ビッグクロウ', '大螯陆蟹', 2, 7.4, 33.1, 0.0, 70, NULL),
(28, 8534, 'Kholusian Bison', 'Kholusian Bison', 'bison de Kholusia', 'Kholusia-Büffel', 'コルシア・バイソン', '珂露西亚野牛', 2, 10.7, 29.8, 0.2, 70, 2),
(29, 8537, 'Lowland Hyssop', 'Lowland Hyssop', 'hyssop des basses terres', 'Tiefland-Ysop', 'ロウランド・ヒソプ', '低地海索草', 2, 14.1, 28.2, 0.1, 70, NULL),
(30, 8525, 'Island Rail', 'Island Rail', 'râle insulaire', 'Inselralle', 'アイランド・レイル', '岛屿秧鸡', 2, 18.1, 28.4, 0.1, 70, 3),
(31, 8533, 'Island Wolf', 'Island Wolf', 'loup insulaire', 'Inselwolf', 'アイランド・ウルフ', '岛屿黑狼', 2, 28.1, 23.2, 0.3, 70, 3),
(32, 8529, 'Scree Gnome', 'Scree Gnome', 'gnome des plateaux', 'Schreignom', 'スクリー・ノーム', '碎石诺姆', 2, 8.3, 16.8, 3.6, 78, 1),
(33, 8526, 'Hobgoblin Guard', 'Hobgoblin Guard', 'garde hobgobelin', 'Hobgoblin-Wache', 'ホブゴブリン・ガード', '大哥布林守卫', 2, 25.2, 8.8, 3.4, 78, NULL),
(34, 8527, 'Cliffkite', 'Cliffkite', 'milan des falaises', 'Gratgleiter', 'クリフカイト', '壁崖鼹鼠', 2, 17.4, 9.1, 4.3, 78, 2),
(35, 8528, 'Cliffmole', 'Cliffmole', 'taupe des falaises', 'Klippenmull', 'クリフモール', '壁崖飞鸢', 2, 27.2, 11.6, 3.1, 78, 2),
(36, 8519, 'Calx', 'Calx', 'calx', 'Calx', 'カルックス', '石灰灵', 2, 18.1, 8.0, 4.4, 78, NULL),
(37, 8541, 'Gulgnu', 'Gulgnu', 'goulgnou', 'Gulgnu', 'グルグヌー', '格鲁格角马', 2, 19.1, 7.6, 4.4, 78, 3),
(38, 8245, 'Huldu', 'Huldu', 'huldu du puits', 'Brunnen-Huldu', 'ウェル・フルドゥ', '爆岩怪', 2, 12.7, 11.1, 4.0, 78, 3),
(39, 8517, 'Ironbeard', 'Ironbeard', 'automate nain', 'Eisenbart', 'ドワーヴン・オートマトン', '矮人自走人偶', 2, 29.8, 16.9, 2.9, 78, 1),
(40, 8540, 'Saichania', 'Saichania', 'saichania', 'Saichania', 'サイカニア', '美甲兽', 2, 12.5, 13.5, 3.7, 78, NULL),
(41, 8520, 'Defective Talos', 'Defective Talos', 'talos défectueux', 'fehlerhaft[a] Talos', 'デフェクティブ・タロース', '次品塔罗斯', 2, 13.8, 18.8, 3.3, 78, 2),
(42, 8535, 'Gulg Knocker', 'Gulg Knocker', 'frappeur du mont Gulg', 'Gulg-Klopfer', 'グルグ・ノッカー', '格鲁格敲石虫', 2, 28.9, 13.8, 3.1, 78, NULL),
(43, 8522, 'Sulfur Byrgen', 'Sulfur Byrgen', 'byrgen de sulfure', 'Schwefelspross', 'サルファー・ビルゲン', '硫磺坟灵', 2, 34.2, 10.8, 2.8, 78, 1),
(44, 8543, 'Desert Armadillo', 'Desert Armadillo', 'tatou du désert', 'Wüsten-Gürteltier', 'デザート・アルマジロ', '荒漠犰狳', 3, 32.9, 9.8, 0.6, 70, NULL),
(45, 8547, 'Gigantender', 'Gigantender', 'gigapampa', 'Riesenkaktor', 'ギガテンダー', '巨人掌', 3, 31.7, 10.9, 0.5, 70, 1),
(46, 8405, 'Sibilus', 'Sibilus', 'sibilus sablon', 'Sandhaut-Sibilus', 'サンドスキン・シビルス', '蛇蜥蜴', 3, 29.8, 13.3, 0.8, 70, NULL),
(47, 8551, 'Tolba', 'Tolba', 'tolba', 'Tolba', 'トルバ', '托儿巴龟', 3, 29.7, 20.2, 0.9, 70, NULL),
(48, 8556, 'Sand Mole', 'Sand Mole', 'taupe des sables', 'Sandmull', 'サンドモール', '沙鼹鼠', 3, 29.7, 20.2, 0.9, 70, 3),
(49, 8549, 'Amber Iguana', 'Amber Iguana', 'iguane d\'ambre', 'Bernsteinleguan', 'アンバーイグアナ', '琥珀鬣蜥', 3, 13.3, 13.6, 1.1, 76, NULL),
(50, 8552, 'Ovim Billy', 'Ovim Billy', 'bouquetin ovim', 'Ovim-Bock', 'オヴィム・ビリー', '公力山羊', 3, 14.7, 13.7, 1.2, 76, NULL),
(51, 8565, 'Phorusrhacos', 'Phorusrhacos', 'phorusrhacos', 'Phorusrhacos', 'フォルスラコス', '恐鹤', 3, 14.7, 13.8, 1.2, 76, 2),
(52, 8369, 'Gnome', 'Gnome', 'gnome des mines', 'Minengnom', 'ノーム', '诺姆', 3, 20.3, 10.2, 1.6, 76, 2),
(53, 8566, 'Desert Coyote', 'Desert Coyote', 'coyote', 'Kojote', 'コヨーテ', '郊狼', 3, 20.8, 10.0, 1.6, 76, 1),
(54, 8561, 'Debitage', 'Debitage', 'débitage', 'Geröllhauser', 'デビタージュ', '废片', 3, 13.7, 17.4, 1.4, 76, 1),
(55, 8557, 'Thistle Mole', 'Thistle Mole', 'taupépine', 'Dornenmull', 'スパイクモール', '棘刺鼹鼠 ', 3, 11.9, 19.2, 1.4, 76, 2),
(56, 8790, 'Dryspine Gigantender', 'Dryspine Gigantender', 'gigapampa à épines sèches', 'ausgedörrt[a] Riesenkaktor', 'ドライスパイン・ギガテンダー', '干刺巨人掌', 3, 17.3, 20.7, 1.1, 76, NULL),
(57, 8545, 'Evil Weapon', 'Evil Weapon', 'arme maligne', 'Bös[a] Waffe', 'イビルウェポン', '恶魔并', 3, 18.3, 21.2, 1.0, 76, 2),
(58, 8564, 'Harvester', 'Harvester', 'récolteur', 'Ernter', 'ハーベスター', '收割蟹', 3, 17.9, 22.8, 0.9, 76, NULL),
(59, 8568, 'Megalobat', 'Megalobat', 'chauve-souris mégalo', 'Megalomaus', 'メガロバット', '大型蝙蝠', 3, 13.3, 22.1, 1.3, 76, NULL),
(60, 8567, 'Molamander', 'Molamander', 'salataupe', 'Molamander', 'モラマンダー', '摩拉曼达', 3, 23.5, 31.6, 0.1, 77, 3),
(61, 8563, 'Flame Zonure', 'Flame Zonure', 'zonure des flammes', 'lohend[a] Zonure', 'フレイム・ゾヌール', '火焰缠尾蛟', 3, 24.2, 34.5, 0.4, 77, 2),
(62, 8546, 'Long-tailed Armadillo', 'Long-tailed Armadillo', 'tatou longue-queue', 'Panzerschwanz-Gürteltier', 'ロングテール・アルマジロ', '长尾犰狳', 3, 17.6, 29.9, 0.5, 77, NULL),
(63, 8544, 'Masterless Talos', 'Masterless Talos', 'talos sans maître', 'herrenlos[a] Talos', 'マスターレス・タロース', '无主塔罗斯', 3, 12.3, 30.6, 0.3, 77, NULL),
(64, 8151, 'Echevore', 'Echevore', 'échevore de Dohn Mheg', 'Dohn-Echevore', 'エケボア', '石莲猬', 4, 14.8, 34.7, 0.7, 72, 3),
(65, 8585, 'Rosebear', 'Rosebear', 'ours-rose', 'Rosenbär', 'ローズベアー', '玫瑰熊', 4, 19.9, 32.8, 0.2, 72, 1),
(66, 8153, 'Undine', 'Undine', 'ondine de Dohn Mheg', 'Dohn-Undine', 'ドォーヌ・ウンディーネ', '温蒂尼', 4, 21.1, 30.7, 0.1, 72, NULL),
(67, 8589, 'Psammead', 'Psammead', 'psammead', 'Samiad', 'サミアド', '赛米德', 4, 11.3, 36.6, 1.2, 72, NULL),
(68, 8155, 'Flower Basket', 'Flower Basket', 'panier fleuri', 'Blumenkorb', 'フラワーバスケット', '花束篮筐', 4, 9.5, 31.0, 0.7, 72, 2),
(69, 8156, 'Etainmoth', 'Etainmoth', 'noctuétain de Dohn Mheg', 'Dohn-Edianmotte', 'エーディンモス', '爱蒂恩蛾', 4, 14.0, 26.5, 0.2, 72, 1),
(70, 8571, 'Garden Anemone', 'Garden Anemone', 'anémone des jardins', 'Garten-Anemone', 'ガーデン・アネモネ', '庭园风花', 4, 15.1, 25.3, 0.0, 72, NULL),
(71, 8788, 'Blood Morpho', 'Blood Morpho', 'morpho sang', 'Blut-Morpho', 'ブラッドモルフォ', '血闪蝶', 4, 10.2, 23.1, 0.3, 72, NULL),
(72, 5891, 'Purple Morpho', 'Purple Morpho', 'morpho violet', 'Purpur-Morpho', 'パープルモルフォ', '紫闪蝶', 4, 10.2, 23.1, 0.3, 72, NULL),
(73, 8581, 'Hawker', 'Hawker', 'æschne', 'Mosaikjungfer', 'ホーカー', '鹰蜓', 4, 9.7, 20.1, 0.1, 72, 1),
(74, 8590, 'Killer Bee', 'Killer Bee', 'abeille tueuse', 'Killerbiene', 'キラービー', '杀人蜂', 4, 11.0, 16.6, 0.2, 72, 1),
(75, 8588, 'Witchweed', 'Witchweed', 'herbe des sorcières', 'Hexenkraut', 'ウィッチウィード', '独脚金', 4, 14.2, 11.5, 0.8, 73, NULL),
(76, 8152, 'Moss Fungus', 'Moss Fungus', 'mycose moisie de Dohn Mheg', 'Dohn-Moosfungus', 'モスフングス', '苔菇', 4, 19.4, 8.8, 0.5, 73, 2),
(77, 8582, 'Rainbow Lorikeet', 'Rainbow Lorikeet', 'loriquet arc-en-ciel', 'Regenbogen-Lorikeet', 'レインボー・ロリキート', '彩虹鹦鹉', 4, 24.4, 7.8, 0.7, 73, 1),
(78, 8586, 'Garden Crocota', 'Garden Crocota', 'crocotta des jardins', 'Garten-Crocuta', 'ガーデン・コロコッタ', '庭园犬狮', 4, 27.2, 6.2, 0.8, 73, 2),
(79, 8587, 'Werewood', 'Werewood', 'arbre-garou', 'lebend[a] Ebenhöh', 'ウェアウッド', '变种树', 4, 30.1, 4.8, 0.9, 73, 2),
(80, 8584, 'Rabbit\'s Tail', 'Rabbit\'s Tail', 'queue-de-lièvre', 'Hasenbommel', 'ラビットテール', '兔尾', 4, 32.0, 10.4, 0.9, 73, 1),
(81, 8583, 'Tot Aevis', 'Tot Aevis', 'toteibis', 'Schillermähnen-Avis', 'トートエイビス', '幼体龙鸟', 4, 31.3, 11.2, 0.8, 73, 1),
(82, 8577, 'Green Glider', 'Green Glider', 'planeur vert', 'grün[a] Gleiter', 'グリーングライダー', '绿飘龙', 4, 28.9, 12.6, 0.6, 73, 2),
(83, 8574, 'Garden Porxie', 'Garden Porxie', 'porxie des jardins', 'Garten-Quiexie', 'ガーデン・ポークシー', '庭园仙子猪', 4, 31.0, 14.7, 0.9, 73, 1),
(84, 8573, 'Nu Mou Potter', 'Nu Mou Potter', 'potier nu mou', 'Bücherwurm[p] der Nu Mou', 'ン・モゥ・ポッター', '恩莫闲人', 4, 31.8, 16.5, 0.9, 73, NULL),
(85, 8572, 'Nu Mou Fungimancer', 'Nu Mou Fungimancer', 'fongimancien nu mou', 'Fungimant[p] der Nu Mou', 'ン・モゥ・フンギマンサー', '恩莫菌菇术士', 4, 31.3, 16.7, 0.9, 73, NULL),
(86, 8575, 'Phooka', 'Phooka', 'phooka', 'Phookah', 'プーカ', '普卡精', 4, 20.1, 17.1, 1.0, 73, 1),
(87, 8457, 'Tomatl', 'Tomatl', 'tomatl tueur', 'Killertomatl', 'キラートマトル', '酸浆果', 5, 10.1, 19.6, 0.1, 74, 2),
(88, 8609, 'Helm Beetle', 'Helm Beetle', 'coccinelle casquée', 'Helmkäfer', 'ヘルムビートル', '盔甲虫', 5, 15.6, 28.5, 0.0, 74, 2),
(89, 8600, 'Vampire Vine', 'Vampire Vine', 'vigne vampire', 'Vampirranke', 'ヴァンパイアヴァイン', '吸血藤树', 5, 15.2, 28.4, 0.0, 74, 2),
(90, 8456, 'Atrociraptor', 'Atrociraptor', 'atrociraptor décharné', 'ausgemergelt[a] Atrociraptor', 'アトロシラプトル', '野蛮盗龙', 5, 12.6, 35.5, -0.1, 74, NULL),
(91, 8591, 'Djinn', 'Djinn', 'djinn', 'Dschinn', 'ジン', '镇尼', 5, 14.8, 25.1, 0.1, 74, NULL),
(92, 8615, 'Forest Flamingo', 'Forest Flamingo', 'flamant rose des forêts', 'Waldflamingo', 'フォレスト・フラミンゴ', '丛林红鹳', 5, 17.7, 20.6, 0.1, 74, NULL),
(93, 8611, 'Wild Swine', 'Wild Swine', 'cochon sauvage', 'rasend[a] Wildschwein', 'ワイルドスワイン', '狂野豚猪', 5, 16.9, 19.7, 0.2, 74, 2),
(94, 8605, 'Hoarmite', 'Hoarmite', 'foamite', 'Hoarmit', 'ホーマイト', '霜蛛蝎', 5, 12.7, 22.3, 0.1, 74, NULL),
(95, 8613, 'Vampire Cup', 'Vampire Cup', 'coupe du vampire', 'Vampirkelch', 'ヴァンパイアカップ', '吸血草杯', 5, 9.6, 21.3, -0.1, 74, NULL),
(96, 8614, 'Woodbat', 'Woodbat', 'chauve-souris des bois', 'Waldfledermaus', 'ウッドバット', '森林蝙蝠', 5, 8.2, 15.9, 0.3, 74, 2),
(97, 8594, 'Dreamer of the Everlasting Dark', 'Dreamer of the Everlasting Dark', 'endormeur des Ténèbres éternelles', 'Traummagier[p] der Ewigen Dunkelheit', '常闇の夢使い', '永暗梦术师', 5, 6.1, 16.4, 0.3, 74, NULL),
(98, 8593, 'Doomsayer of the Everlasting Dark', 'Doomsayer of the Everlasting Dark', 'ensorceleur des Ténèbres éternelles', 'Fluchmagier[p] der Ewigen Dunkelheit', '常闇の呪使い', '永暗咒术师', 5, 6.1, 16.4, 0.3, 74, NULL),
(99, 8595, 'Dart of the Everlasting Dark', 'Dart of the Everlasting Dark', 'maître d\'hast des Ténèbres éternelles', 'Lanzenkämpfer[p] der Ewigen Dunkelheit', '常闇の槍使い', '永暗枪术师', 5, 5.2, 17.0, 0.3, 74, NULL),
(100, 8459, 'Gizamaluk', 'Gizamaluk', 'jeune gisamark', 'brütend[a] Gizamaluk', 'ギザマルーク', '基札玛路克', 5, 26.6, 29.5, 0.2, 75, 1),
(101, 8612, 'Caracal', 'Caracal', 'caracal', 'Calacal', 'カラカル', '狞猫', 5, 25.0, 29.2, -0.2, 75, 1),
(102, 8597, 'Forest Echo', 'Forest Echo', 'écho', 'Wald-Echo', 'エコー', '回声', 5, 25.3, 28.0, -0.1, 75, 2),
(103, 8287, 'Snapweed', 'Snapweed', 'balsamine artificielle', 'erzeugt[a] Springkraut', 'スナップウィード', '捕捉草', 5, 32.1, 24.2, 0.2, 75, 1),
(104, 8607, 'Blue Deer Stag', 'Blue Deer Stag', 'daim bleu', 'Blauantilopenbock', 'ブルーディアー・スタッグ', '雄蓝鹿', 5, 32.4, 20.7, 0.1, 75, NULL),
(105, 8608, 'Blue Deer Doe', 'Blue Deer Doe', 'daine bleue', 'Blauantilopenkuh', 'ブルーディアー・ドゥ', '雌蓝鹿', 5, 32.5, 21.1, 0.2, 75, NULL),
(106, 8789, 'Cracked Ronkan Vessel', 'Cracked Ronkan Vessel', 'réceptacle ronka fissuré', 'kaputt[a] Ruinenquader', 'クラックド・ロンカヴェッセル', '破裂的隆卡器皿', 5, 28.4, 14.3, -0.1, 75, 1),
(107, 8598, 'Cracked Ronkan Doll', 'Cracked Ronkan Doll', 'poupée ronka fissurée', 'kaputt[a] Ronka-Totem', 'クラックド・ロンカドール', '破裂的隆卡人偶', 5, 27.6, 13.6, -0.1, 75, 1),
(108, 8599, 'Cracked Ronkan Thorn', 'Cracked Ronkan Thorn', 'épine ronka fissurée', 'kaputt[a] Ruinenquadroquader', 'クラックド・ロンカソーン', '破裂的隆卡石蒺藜', 5, 27.2, 12.8, -0.2, 75, 1),
(109, 8610, 'Floor Mandrill', 'Floor Mandrill', 'mandrill métayer', 'Erd-Mandrill', 'フロア・マンドリル', '地山魈', 5, 33.7, 16.4, -0.5, 75, 1),
(110, 8466, 'Tarichuk', 'Tarichuk', 'tarichuk déplumé', 'gehäutet[a] Tarichuk', 'タリチャック', '塔里丘魔鸟', 5, 25.2, 21.7, 0.2, 75, 1),
(111, 8601, 'Greatwood Rail', 'Greatwood Rail', 'râle de forêt', 'Waldralle', 'グレートウッドレイル', '大森林秧鸡', 5, 22.6, 7.1, -0.2, 75, NULL),
(112, 8631, 'Blue Swimmer', 'Blue Swimmer', 'crabe nageur', 'Schwimmkrabbe', 'スイミングクラブ', '泳蟹', 6, 36.7, 7.8, -1.0, 79, 1),
(113, 8277, 'Clionid', 'Clionid', 'clionide artificielle', 'erzeugt[a] Clionid', 'クリオニッド', '冰海天使', 6, 26.7, 7.3, -1.7, 79, NULL),
(114, 8630, 'Tempest Swallow', 'Tempest Swallow', 'hirondelle de La Tempête', 'Sturmschwalbe', 'テンペストスワロー', '黑风海燕', 6, 29.2, 16.6, -2.0, 79, 1),
(115, 8314, 'Dagon', 'Dagon', 'dagon fétide', 'faulig[a] Dagon', 'ダゴン', '大衮', 6, 28.6, 14.0, -1.9, 79, 1),
(117, 8626, 'Trilobite', 'Trilobite', 'trilobite', 'Trilobit', 'トリロバイト', '三叶虫', 6, 36.0, 14.6, -1.6, 79, 2),
(118, 8633, 'Mnyiri', 'Mnyiri', 'mnyiri', 'Myniri', 'ムニリ', '触手鮟', 6, 31.3, 7.9, -1.5, 79, NULL),
(119, 5139, 'Morgawr', 'Morgawr', 'Morgawr', 'Aquapolis-Morgawr', 'モーゴウル', '莫高海怪', 6, 31.1, 21.1, -1.9, 79, 1),
(120, 8315, 'Nauplius', 'Nauplius', 'nauplius purpurin', 'Purpur-Nauplius', 'プルプラ・ナウプリウス', '无节幼体', 6, 30.8, 15.6, -2.4, 79, NULL),
(121, 8629, 'Sea Gelatin', 'Sea Gelatin', 'gélatine de mer', 'Meeresgelatine', 'シーゼラチン', '海胶螺', 6, 27.5, 8.4, -1.8, 79, 1),
(122, 8319, 'Hydrozoan', 'Hydrozoan', 'hydrozoaire furibond', 'erzürnt[a] Hydrozoa', 'ロス・ヒドロゾア', '水螅虫', 6, 19.5, 11.8, -1.6, 79, NULL),
(123, 8333, 'Mantis Shrimp', 'Mantis Shrimp', 'squille pondeuse', 'laichend[a] Mantis-Garnele', 'スポーニング・マンティスシュリンプ', '螳螂虾', 6, 18.8, 14.5, -2.0, 79, NULL),
(124, 8329, 'Sea Anemone', 'Sea Anemone', 'anémone des profondeurs', 'Tiefsee-Anemone', 'ディープシーアネモネ', '海风花', 6, 24.5, 17.7, -3.5, 79, NULL),
(125, 8627, 'Stingray', 'Stingray', 'raie', 'Stachelrochen', 'スティングレイ', '刺魟', 6, 15.5, 17.7, -4.3, 79, NULL),
(126, 8624, 'Urchinfish', 'Urchinfish', 'hérisson de mer', 'Igelfisch', 'アーチンフィッシュ', '海胆', 6, 9.8, 16.4, -4.3, 79, NULL),
(127, 8279, 'Danbania', 'Danbania', 'dambanha artificiel', 'erzeugt[a] Danbania', 'ダンバニア', '刺枪鱼', 6, 6.3, 13.5, -4.7, 79, NULL),
(128, 8621, 'Cubus', 'Cubus', 'oléofuror', 'Kubus', 'カブス', '卡部斯', 6, 21.9, 36.3, -8.2, 79, 1),
(129, 8555, 'Shorttail Sibilus', 'Shorttail Sibilus', 'sibilus courte-queue', 'Kurzschwanz-Sibilus', 'ショートテイル・シビルス', '短尾蛇蜥蜴', 3, 30.4, 15.9, 0.8, 70, NULL),
(130, 8558, 'Scissorjaws', 'Scissorjaws', 'mandicisaille', 'Scherenmaul', 'シザージョウ', '铰颌蚁', 3, 31.4, 26.1, 0.7, 70, 1),
(131, 8548, 'Ngozi', 'Ngozi', 'ngozi', 'Ngozi', 'ンゴツィ', '恩戈齐', 3, 31.8, 25.5, 0.6, 70, NULL),
(132, 8550, 'Ancient Lizard', 'Ancient Lizard', 'lézard ancestral', 'uralt[a] Eidechse', 'エンシェント・リザード', '古代蜥蜴', 3, 31.9, 27.2, 0.6, 70, 3),
(133, 8562, 'Ghilman', 'Ghilman', 'ghilman', 'Ghulam', 'グラーム', '古拉姆', 3, 27.2, 30.3, 0.4, 70, 1),
(134, 8560, 'Sandsucker', 'Sandsucker', 'mange-sable', 'Sandschlucker', 'サンドイーター', '噬沙蠕虫', 3, 27.9, 25.4, 0.7, 70, NULL),
(135, 8503, 'Gnole', 'Gnole', 'gnole', 'Gnoll', 'ノール', '异豺', 1, 14.2, 16.5, 0.2, 71, 1),
(136, 8538, 'Highland Hyssop', 'Highland Hyssop', 'hyssop des hautes terres', 'Hochland-Ysop', 'ハイランド・ヒソプ', '高地海索草', 2, 23.9, 10.4, 3.6, 78, 3),
(116, 8328, 'Amphisbaena', 'Amphisbaena', 'amphisbène perlé', 'alt[a] Amphisbaena', 'アンフィスバエナ', '双向海龙', 6, 36.6, 12.9, -1.5, 79, 1);

INSERT INTO `zones_shb` (`id`, `xivdb_id`, `name`, `name_en`, `name_fr`, `name_de`, `name_jp`, `name_ch`, `size_x`, `size_y`) VALUES
(1, 2953, 'Lakeland', 'Lakeland', 'Grand-Lac', 'Seenland', 'レイクランド', '雷克兰德', 41.9, 41.9),
(2, 2954, 'Kholusia', 'Kholusia', 'Kholusia', 'Kholusia', 'コルシア島', '珂露西亚岛', 41.9, 41.9),
(3, 2955, 'Amh Araeng', 'Amh Araeng', 'Amh Araeng', 'Amh Araeng', 'アム・アレーン', '安穆·艾兰', 41.9, 41.9),
(4, 2956, 'Il Mheg', 'Il Mheg', 'Il Mheg', 'Il Mheg', 'イル・メグ', '伊尔美格', 41.9, 41.9),
(5, 2957, 'The Rak\'tika Greatwood', 'The Rak\'tika Greatwood', 'Rak\'tika', 'Der Große Wald Rak\'tika', 'ラケティカ大森林', '拉凯提卡大森林', 41.9, 41.9),
(6, 2958, 'The Tempest', 'The Tempest', 'La Tempête', 'Tempest', 'テンペスト', '黑风海', 41.9, 41.9);

COMMIT;
