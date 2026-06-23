/*
 Navicat Premium Data Transfer

 Source Server         : spk
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : 127.0.0.1:3306
 Source Schema         : pegawai_ahp

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 23/06/2026 20:16:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_alternatif
-- ----------------------------
DROP TABLE IF EXISTS `tb_alternatif`;
CREATE TABLE `tb_alternatif`  (
  `kode_alternatif` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_alternatif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `total` double NULL DEFAULT NULL,
  `rank` int NULL DEFAULT NULL,
  PRIMARY KEY (`kode_alternatif`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_alternatif
-- ----------------------------
INSERT INTO `tb_alternatif` VALUES ('2777182', 'Arif Indrawan', '', 0, 1);
INSERT INTO `tb_alternatif` VALUES ('NIM7772026', 'Agung Budi', '', 0, 2);
INSERT INTO `tb_alternatif` VALUES ('NIM79193', 'Novan Santoso', '', 0, 3);

-- ----------------------------
-- Table structure for tb_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `tb_kriteria`;
CREATE TABLE `tb_kriteria`  (
  `kode_kriteria` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_kriteria` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kode_kriteria`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_kriteria
-- ----------------------------
INSERT INTO `tb_kriteria` VALUES ('PK002', 'Kedisiplinan');
INSERT INTO `tb_kriteria` VALUES ('PK001', 'Kinerja');
INSERT INTO `tb_kriteria` VALUES ('PK003', 'Kompetensi');
INSERT INTO `tb_kriteria` VALUES ('PK004', 'Sikap & Perilaku');
INSERT INTO `tb_kriteria` VALUES ('PK005', 'Kontribusi');

-- ----------------------------
-- Table structure for tb_rel_alternatif
-- ----------------------------
DROP TABLE IF EXISTS `tb_rel_alternatif`;
CREATE TABLE `tb_rel_alternatif`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `kode_alternatif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_kriteria` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_sub` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 67 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_rel_alternatif
-- ----------------------------
INSERT INTO `tb_rel_alternatif` VALUES (61, 'NIM7772026', 'PK005', 'KB001');
INSERT INTO `tb_rel_alternatif` VALUES (62, '2777182', 'PK001', 'K001');
INSERT INTO `tb_rel_alternatif` VALUES (60, 'NIM7772026', 'PK004', 'SP001');
INSERT INTO `tb_rel_alternatif` VALUES (63, '2777182', 'PK002', 'D001');
INSERT INTO `tb_rel_alternatif` VALUES (64, '2777182', 'PK003', 'KP001');
INSERT INTO `tb_rel_alternatif` VALUES (56, 'NIM79193', 'PK005', 'KB001');
INSERT INTO `tb_rel_alternatif` VALUES (57, 'NIM7772026', 'PK001', 'K001');
INSERT INTO `tb_rel_alternatif` VALUES (58, 'NIM7772026', 'PK002', 'D001');
INSERT INTO `tb_rel_alternatif` VALUES (59, 'NIM7772026', 'PK003', 'KP001');
INSERT INTO `tb_rel_alternatif` VALUES (54, 'NIM79193', 'PK003', 'KP001');
INSERT INTO `tb_rel_alternatif` VALUES (55, 'NIM79193', 'PK004', 'SP001');
INSERT INTO `tb_rel_alternatif` VALUES (52, 'NIM79193', 'PK001', 'K001');
INSERT INTO `tb_rel_alternatif` VALUES (53, 'NIM79193', 'PK002', 'D001');
INSERT INTO `tb_rel_alternatif` VALUES (65, '2777182', 'PK004', 'SP001');
INSERT INTO `tb_rel_alternatif` VALUES (66, '2777182', 'PK005', 'KB001');

-- ----------------------------
-- Table structure for tb_rel_kriteria
-- ----------------------------
DROP TABLE IF EXISTS `tb_rel_kriteria`;
CREATE TABLE `tb_rel_kriteria`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID1` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ID2` varchar(16) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nilai` double NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 75 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_rel_kriteria
-- ----------------------------
INSERT INTO `tb_rel_kriteria` VALUES (52, 'PK002', 'PK002', 1);
INSERT INTO `tb_rel_kriteria` VALUES (55, 'PK003', 'PK002', 2);
INSERT INTO `tb_rel_kriteria` VALUES (54, 'PK003', 'PK001', 0.5);
INSERT INTO `tb_rel_kriteria` VALUES (57, 'PK001', 'PK003', 2);
INSERT INTO `tb_rel_kriteria` VALUES (56, 'PK003', 'PK003', 1);
INSERT INTO `tb_rel_kriteria` VALUES (50, 'PK001', 'PK001', 1);
INSERT INTO `tb_rel_kriteria` VALUES (53, 'PK001', 'PK002', 3);
INSERT INTO `tb_rel_kriteria` VALUES (51, 'PK002', 'PK001', 0.333333333);
INSERT INTO `tb_rel_kriteria` VALUES (58, 'PK002', 'PK003', 0.5);
INSERT INTO `tb_rel_kriteria` VALUES (59, 'PK004', 'PK001', 0.25);
INSERT INTO `tb_rel_kriteria` VALUES (60, 'PK004', 'PK002', 0.5);
INSERT INTO `tb_rel_kriteria` VALUES (61, 'PK004', 'PK003', 0.333333333);
INSERT INTO `tb_rel_kriteria` VALUES (62, 'PK004', 'PK004', 1);
INSERT INTO `tb_rel_kriteria` VALUES (63, 'PK001', 'PK004', 4);
INSERT INTO `tb_rel_kriteria` VALUES (64, 'PK002', 'PK004', 2);
INSERT INTO `tb_rel_kriteria` VALUES (65, 'PK003', 'PK004', 3);
INSERT INTO `tb_rel_kriteria` VALUES (66, 'PK005', 'PK001', 0.2);
INSERT INTO `tb_rel_kriteria` VALUES (67, 'PK005', 'PK002', 0.333333333);
INSERT INTO `tb_rel_kriteria` VALUES (68, 'PK005', 'PK003', 0.25);
INSERT INTO `tb_rel_kriteria` VALUES (69, 'PK005', 'PK004', 1);
INSERT INTO `tb_rel_kriteria` VALUES (70, 'PK005', 'PK005', 1);
INSERT INTO `tb_rel_kriteria` VALUES (71, 'PK001', 'PK005', 5);
INSERT INTO `tb_rel_kriteria` VALUES (72, 'PK002', 'PK005', 3);
INSERT INTO `tb_rel_kriteria` VALUES (73, 'PK003', 'PK005', 4);
INSERT INTO `tb_rel_kriteria` VALUES (74, 'PK004', 'PK005', 1);

-- ----------------------------
-- Table structure for tb_rel_sub
-- ----------------------------
DROP TABLE IF EXISTS `tb_rel_sub`;
CREATE TABLE `tb_rel_sub`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID1` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ID2` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nilai` double NULL DEFAULT NULL,
  `bobot` double NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1092 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_rel_sub
-- ----------------------------
INSERT INTO `tb_rel_sub` VALUES (593, 'KP002', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (592, 'KP002', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (591, 'KP002', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (590, 'KP002', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (589, 'KP002', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (588, 'KP002', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (587, 'K005', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (586, 'K004', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (585, 'K003', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (584, 'K002', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (583, 'K001', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (582, 'D005', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (547, 'K005', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (581, 'D004', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (580, 'D003', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (579, 'D002', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (578, 'D001', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (546, 'K004', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (545, 'K003', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (577, 'KP001', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (576, 'KP001', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (544, 'K002', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (575, 'KP001', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (574, 'KP001', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (543, 'K001', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (542, 'D003', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (541, 'D002', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (573, 'KP001', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (572, 'KP001', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (540, 'D001', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (539, 'D004', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (571, 'KP001', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (570, 'KP001', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (538, 'D004', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (537, 'D004', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (536, 'D004', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (502, 'K005', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (569, 'KP001', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (568, 'KP001', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (535, 'D004', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (534, 'D004', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (533, 'D004', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (567, 'KP001', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (566, 'K005', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (532, 'D004', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (531, 'D004', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (530, 'K005', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (501, 'K004', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (500, 'K003', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (565, 'K004', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (564, 'K003', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (529, 'K004', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (528, 'K003', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (527, 'K002', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (499, 'K002', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (563, 'K002', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (562, 'K001', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (526, 'K001', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (525, 'D002', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (524, 'D001', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (498, 'K001', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (497, 'D001', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (496, 'D001', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (561, 'D004', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (560, 'D003', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (523, 'D003', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (522, 'D003', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (521, 'D003', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (495, 'D001', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (494, 'D001', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (559, 'D002', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (558, 'D001', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (520, 'D003', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (519, 'D003', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (518, 'D003', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (493, 'D001', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (492, 'D001', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (491, 'K004', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (475, 'K002', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (557, 'D005', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (556, 'D005', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (517, 'D003', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (516, 'D003', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (515, 'K005', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (490, 'K003', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (489, 'K002', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (488, 'K001', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (555, 'D005', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (554, 'D005', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (514, 'K004', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (513, 'K003', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (512, 'K002', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (487, 'K005', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (486, 'K005', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (485, 'K005', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (474, 'K001', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (473, 'K003', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (553, 'D005', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (552, 'D005', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (511, 'K001', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (510, 'D001', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (509, 'D002', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (484, 'K005', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (483, 'K005', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (482, 'K003', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (472, 'K003', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (551, 'D005', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (550, 'D005', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (508, 'D002', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (507, 'D002', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (506, 'D002', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (481, 'K002', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (480, 'K001', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (479, 'K004', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (471, 'K003', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (470, 'K001', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (469, 'K002', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (549, 'D005', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (548, 'D005', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (505, 'D002', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (504, 'D002', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (503, 'D002', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (478, 'K004', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (477, 'K004', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (476, 'K004', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (468, 'K002', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (467, 'K001', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (594, 'KP002', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (595, 'KP002', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (596, 'KP002', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (597, 'KP002', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (598, 'KP002', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (599, 'KP002', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (600, 'D001', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (601, 'D002', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (602, 'D003', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (603, 'D004', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (604, 'D005', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (605, 'K001', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (606, 'K002', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (607, 'K003', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (608, 'K004', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (609, 'K005', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (610, 'KP001', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (611, 'KP003', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (612, 'KP003', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (613, 'KP003', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (614, 'KP003', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (615, 'KP003', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (616, 'KP003', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (617, 'KP003', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (618, 'KP003', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (619, 'KP003', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (620, 'KP003', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (621, 'KP003', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (622, 'KP003', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (623, 'KP003', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (624, 'D001', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (625, 'D002', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (626, 'D003', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (627, 'D004', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (628, 'D005', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (629, 'K001', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (630, 'K002', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (631, 'K003', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (632, 'K004', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (633, 'K005', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (634, 'KP001', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (635, 'KP002', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (636, 'KP004', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (637, 'KP004', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (638, 'KP004', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (639, 'KP004', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (640, 'KP004', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (641, 'KP004', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (642, 'KP004', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (643, 'KP004', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (644, 'KP004', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (645, 'KP004', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (646, 'KP004', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (647, 'KP004', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (648, 'KP004', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (649, 'KP004', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (650, 'D001', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (651, 'D002', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (652, 'D003', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (653, 'D004', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (654, 'D005', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (655, 'K001', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (656, 'K002', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (657, 'K003', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (658, 'K004', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (659, 'K005', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (660, 'KP001', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (661, 'KP002', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (662, 'KP003', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (663, 'KP005', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (664, 'KP005', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (665, 'KP005', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (666, 'KP005', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (667, 'KP005', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (668, 'KP005', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (669, 'KP005', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (670, 'KP005', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (671, 'KP005', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (672, 'KP005', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (673, 'KP005', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (674, 'KP005', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (675, 'KP005', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (676, 'KP005', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (677, 'KP005', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (678, 'D001', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (679, 'D002', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (680, 'D003', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (681, 'D004', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (682, 'D005', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (683, 'K001', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (684, 'K002', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (685, 'K003', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (686, 'K004', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (687, 'K005', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (688, 'KP001', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (689, 'KP002', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (690, 'KP003', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (691, 'KP004', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (692, 'SP001', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (693, 'SP001', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (694, 'SP001', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (695, 'SP001', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (696, 'SP001', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (697, 'SP001', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (698, 'SP001', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (699, 'SP001', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (700, 'SP001', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (701, 'SP001', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (702, 'SP001', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (703, 'SP001', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (704, 'SP001', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (705, 'SP001', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (706, 'SP001', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (707, 'SP001', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (708, 'D001', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (709, 'D002', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (710, 'D003', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (711, 'D004', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (712, 'D005', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (713, 'K001', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (714, 'K002', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (715, 'K003', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (716, 'K004', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (717, 'K005', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (718, 'KP001', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (719, 'KP002', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (720, 'KP003', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (721, 'KP004', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (722, 'KP005', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (723, 'SP002', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (724, 'SP002', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (725, 'SP002', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (726, 'SP002', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (727, 'SP002', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (728, 'SP002', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (729, 'SP002', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (730, 'SP002', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (731, 'SP002', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (732, 'SP002', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (733, 'SP002', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (734, 'SP002', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (735, 'SP002', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (736, 'SP002', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (737, 'SP002', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (738, 'SP002', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (739, 'SP002', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (740, 'D001', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (741, 'D002', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (742, 'D003', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (743, 'D004', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (744, 'D005', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (745, 'K001', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (746, 'K002', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (747, 'K003', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (748, 'K004', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (749, 'K005', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (750, 'KP001', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (751, 'KP002', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (752, 'KP003', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (753, 'KP004', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (754, 'KP005', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (755, 'SP001', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (756, 'SP003', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (757, 'SP003', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (758, 'SP003', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (759, 'SP003', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (760, 'SP003', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (761, 'SP003', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (762, 'SP003', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (763, 'SP003', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (764, 'SP003', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (765, 'SP003', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (766, 'SP003', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (767, 'SP003', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (768, 'SP003', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (769, 'SP003', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (770, 'SP003', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (771, 'SP003', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (772, 'SP003', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (773, 'SP003', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (774, 'D001', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (775, 'D002', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (776, 'D003', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (777, 'D004', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (778, 'D005', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (779, 'K001', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (780, 'K002', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (781, 'K003', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (782, 'K004', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (783, 'K005', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (784, 'KP001', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (785, 'KP002', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (786, 'KP003', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (787, 'KP004', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (788, 'KP005', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (789, 'SP001', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (790, 'SP002', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (791, 'SP004', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (792, 'SP004', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (793, 'SP004', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (794, 'SP004', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (795, 'SP004', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (796, 'SP004', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (797, 'SP004', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (798, 'SP004', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (799, 'SP004', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (800, 'SP004', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (801, 'SP004', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (802, 'SP004', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (803, 'SP004', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (804, 'SP004', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (805, 'SP004', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (806, 'SP004', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (807, 'SP004', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (808, 'SP004', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (809, 'SP004', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (810, 'D001', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (811, 'D002', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (812, 'D003', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (813, 'D004', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (814, 'D005', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (815, 'K001', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (816, 'K002', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (817, 'K003', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (818, 'K004', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (819, 'K005', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (820, 'KP001', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (821, 'KP002', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (822, 'KP003', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (823, 'KP004', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (824, 'KP005', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (825, 'SP001', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (826, 'SP002', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (827, 'SP003', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (828, 'SP005', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (829, 'SP005', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (830, 'SP005', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (831, 'SP005', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (832, 'SP005', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (833, 'SP005', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (834, 'SP005', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (835, 'SP005', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (836, 'SP005', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (837, 'SP005', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (838, 'SP005', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (839, 'SP005', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (840, 'SP005', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (841, 'SP005', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (842, 'SP005', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (843, 'SP005', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (844, 'SP005', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (845, 'SP005', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (846, 'SP005', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (847, 'SP005', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (848, 'D001', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (849, 'D002', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (850, 'D003', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (851, 'D004', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (852, 'D005', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (853, 'K001', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (854, 'K002', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (855, 'K003', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (856, 'K004', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (857, 'K005', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (858, 'KP001', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (859, 'KP002', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (860, 'KP003', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (861, 'KP004', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (862, 'KP005', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (863, 'SP001', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (864, 'SP002', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (865, 'SP003', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (866, 'SP004', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (867, 'KB001', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (868, 'KB001', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (869, 'KB001', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (870, 'KB001', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (871, 'KB001', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (872, 'KB001', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (873, 'KB001', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (874, 'KB001', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (875, 'KB001', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (876, 'KB001', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (877, 'KB001', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (878, 'KB001', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (879, 'KB001', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (880, 'KB001', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (881, 'KB001', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (882, 'KB001', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (883, 'KB001', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (884, 'KB001', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (885, 'KB001', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (886, 'KB001', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (887, 'KB001', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (888, 'D001', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (889, 'D002', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (890, 'D003', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (891, 'D004', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (892, 'D005', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (893, 'K001', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (894, 'K002', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (895, 'K003', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (896, 'K004', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (897, 'K005', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (898, 'KP001', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (899, 'KP002', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (900, 'KP003', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (901, 'KP004', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (902, 'KP005', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (903, 'SP001', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (904, 'SP002', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (905, 'SP003', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (906, 'SP004', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (907, 'SP005', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (908, 'KB002', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (909, 'KB002', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (910, 'KB002', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (911, 'KB002', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (912, 'KB002', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (913, 'KB002', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (914, 'KB002', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (915, 'KB002', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (916, 'KB002', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (917, 'KB002', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (918, 'KB002', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (919, 'KB002', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (920, 'KB002', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (921, 'KB002', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (922, 'KB002', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (923, 'KB002', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (924, 'KB002', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (925, 'KB002', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (926, 'KB002', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (927, 'KB002', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (928, 'KB002', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (929, 'KB002', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (930, 'D001', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (931, 'D002', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (932, 'D003', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (933, 'D004', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (934, 'D005', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (935, 'K001', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (936, 'K002', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (937, 'K003', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (938, 'K004', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (939, 'K005', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (940, 'KB001', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (941, 'KP001', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (942, 'KP002', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (943, 'KP003', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (944, 'KP004', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (945, 'KP005', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (946, 'SP001', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (947, 'SP002', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (948, 'SP003', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (949, 'SP004', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (950, 'SP005', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (951, 'KB003', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (952, 'KB003', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (953, 'KB003', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (954, 'KB003', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (955, 'KB003', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (956, 'KB003', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (957, 'KB003', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (958, 'KB003', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (959, 'KB003', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (960, 'KB003', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (961, 'KB003', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (962, 'KB003', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (963, 'KB003', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (964, 'KB003', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (965, 'KB003', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (966, 'KB003', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (967, 'KB003', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (968, 'KB003', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (969, 'KB003', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (970, 'KB003', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (971, 'KB003', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (972, 'KB003', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (973, 'KB003', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (974, 'D001', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (975, 'D002', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (976, 'D003', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (977, 'D004', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (978, 'D005', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (979, 'K001', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (980, 'K002', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (981, 'K003', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (982, 'K004', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (983, 'K005', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (984, 'KB001', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (985, 'KB002', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (986, 'KP001', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (987, 'KP002', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (988, 'KP003', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (989, 'KP004', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (990, 'KP005', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (991, 'SP001', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (992, 'SP002', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (993, 'SP003', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (994, 'SP004', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (995, 'SP005', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (996, 'KB004', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (997, 'KB004', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (998, 'KB004', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (999, 'KB004', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1000, 'KB004', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1001, 'KB004', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1002, 'KB004', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1003, 'KB004', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1004, 'KB004', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1005, 'KB004', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1006, 'KB004', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1007, 'KB004', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1008, 'KB004', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1009, 'KB004', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1010, 'KB004', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1011, 'KB004', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1012, 'KB004', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1013, 'KB004', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1014, 'KB004', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1015, 'KB004', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1016, 'KB004', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1017, 'KB004', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1018, 'KB004', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1019, 'KB004', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1020, 'D001', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1021, 'D002', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1022, 'D003', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1023, 'D004', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1024, 'D005', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1025, 'K001', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1026, 'K002', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1027, 'K003', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1028, 'K004', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1029, 'K005', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1030, 'KB001', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1031, 'KB002', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1032, 'KB003', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1033, 'KP001', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1034, 'KP002', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1035, 'KP003', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1036, 'KP004', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1037, 'KP005', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1038, 'SP001', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1039, 'SP002', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1040, 'SP003', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1041, 'SP004', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1042, 'SP005', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1043, 'KB005', 'D001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1044, 'KB005', 'D002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1045, 'KB005', 'D003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1046, 'KB005', 'D004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1047, 'KB005', 'D005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1048, 'KB005', 'K001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1049, 'KB005', 'K002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1050, 'KB005', 'K003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1051, 'KB005', 'K004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1052, 'KB005', 'K005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1053, 'KB005', 'KB001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1054, 'KB005', 'KB002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1055, 'KB005', 'KB003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1056, 'KB005', 'KB004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1057, 'KB005', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1058, 'KB005', 'KP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1059, 'KB005', 'KP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1060, 'KB005', 'KP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1061, 'KB005', 'KP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1062, 'KB005', 'KP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1063, 'KB005', 'SP001', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1064, 'KB005', 'SP002', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1065, 'KB005', 'SP003', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1066, 'KB005', 'SP004', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1067, 'KB005', 'SP005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1068, 'D001', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1069, 'D002', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1070, 'D003', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1071, 'D004', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1072, 'D005', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1073, 'K001', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1074, 'K002', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1075, 'K003', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1076, 'K004', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1077, 'K005', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1078, 'KB001', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1079, 'KB002', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1080, 'KB003', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1081, 'KB004', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1082, 'KP001', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1083, 'KP002', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1084, 'KP003', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1085, 'KP004', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1086, 'KP005', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1087, 'SP001', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1088, 'SP002', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1089, 'SP003', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1090, 'SP004', 'KB005', 1, NULL);
INSERT INTO `tb_rel_sub` VALUES (1091, 'SP005', 'KB005', 1, NULL);

-- ----------------------------
-- Table structure for tb_sub
-- ----------------------------
DROP TABLE IF EXISTS `tb_sub`;
CREATE TABLE `tb_sub`  (
  `kode_sub` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_kriteria` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_sub` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nilai_sub` double NULL DEFAULT NULL,
  PRIMARY KEY (`kode_sub`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_sub
-- ----------------------------
INSERT INTO `tb_sub` VALUES ('D001', 'PK002', 'Kehadiran', NULL);
INSERT INTO `tb_sub` VALUES ('D002', 'PK002', 'Ketaatan Aturan', NULL);
INSERT INTO `tb_sub` VALUES ('D003', 'PK002', 'Ketepatan Waktu', NULL);
INSERT INTO `tb_sub` VALUES ('D004', 'PK002', 'Tanggung Jawab', NULL);
INSERT INTO `tb_sub` VALUES ('D005', 'PK002', 'Tertib Administrasi', NULL);
INSERT INTO `tb_sub` VALUES ('K001', 'PK001', 'Pencapaian Target', 0.2);
INSERT INTO `tb_sub` VALUES ('K002', 'PK001', 'Kualitas Kerja', 0.2);
INSERT INTO `tb_sub` VALUES ('K003', 'PK001', 'Produktivitas', 0.2);
INSERT INTO `tb_sub` VALUES ('K004', 'PK001', 'Efektivitas Kerja', 0.2);
INSERT INTO `tb_sub` VALUES ('K005', 'PK001', 'Waktu Penyelesaian', 0.2);
INSERT INTO `tb_sub` VALUES ('KB001', 'PK005', 'Inovasi', NULL);
INSERT INTO `tb_sub` VALUES ('KB002', 'PK005', 'Inisiatif', NULL);
INSERT INTO `tb_sub` VALUES ('KB003', 'PK005', 'Kreativitas', NULL);
INSERT INTO `tb_sub` VALUES ('KB004', 'PK005', 'Partisipasi', NULL);
INSERT INTO `tb_sub` VALUES ('KB005', 'PK005', 'Pencapaian', NULL);
INSERT INTO `tb_sub` VALUES ('KP001', 'PK003', 'Pengetahuan', NULL);
INSERT INTO `tb_sub` VALUES ('KP002', 'PK003', 'Problem Solving', NULL);
INSERT INTO `tb_sub` VALUES ('KP003', 'PK003', 'Kemampuan Belajar', NULL);
INSERT INTO `tb_sub` VALUES ('KP004', 'PK003', 'Pengambilan Keputusan', NULL);
INSERT INTO `tb_sub` VALUES ('KP005', 'PK003', 'Penguasaan Pekerjaan', NULL);
INSERT INTO `tb_sub` VALUES ('SP001', 'PK004', 'Kerjasama Tim', NULL);
INSERT INTO `tb_sub` VALUES ('SP002', 'PK004', 'Komunikasi', NULL);
INSERT INTO `tb_sub` VALUES ('SP003', 'PK004', 'Integritas', NULL);
INSERT INTO `tb_sub` VALUES ('SP004', 'PK004', 'Loyalitas', NULL);
INSERT INTO `tb_sub` VALUES ('SP005', 'PK004', 'Adaptabilitas', NULL);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `kode_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `level` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('A1', 'admin@ubl.id', 'password', 'administrator', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
