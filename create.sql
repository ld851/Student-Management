--创建数据库
CREATE DATABASE newdatabase;
--创建表
CREATE TABLE `students` (
`id`  int(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
`name`  char(30) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL ,
`sex`  char(10) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL ,
`age`  tinyint(3) UNSIGNED NOT NULL ,
`tel`  char(13) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '-' ,
`qq`  varchar(40) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '-' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=gb2312 COLLATE=gb2312_chinese_ci
AUTO_INCREMENT=19
ROW_FORMAT=COMPACT
;
--插入十条记录
INSERT INTO students (id,name,sex,age,tel,qq) VALUES (null,'小李','男','20','13333333333','1212121122');
INSERT INTO students (id,name,sex,age,tel,qq) VALUES (null,'小黄','女','21','13345433333','1212000122');
INSERT INTO students (id,name,sex,age,tel,qq) VALUES (null,'James','f','20','156565333','1212888122');
INSERT INTO students (id,name,sex,age,tel,qq) VALUES (null,'金牛','男','23','188888833','1000000002');
INSERT INTO students (id,name,sex,age,tel,qq) VALUES (null,'天天','女','30','132369203333','122215822');
INSERT INTO students (id,name,sex,age,tel,qq) VALUES (null,'意义','m','20','133787833333','16666666');
INSERT INTO students (id,name,sex,age,tel,qq) VALUES (null,'长子','男','20','156565633333','122323122');
INSERT INTO students (id,name,sex,age,tel,qq) VALUES (null,'患儿','男','25','13000011113','18888778122');
INSERT INTO students (id,name,sex,age,tel,qq) VALUES (null,'杨洋','女','23','18340854746','1111033122');
INSERT INTO students (id,name,sex,age,tel,qq) VALUES (null,'纪委','男','24','132164501223','18832588122');