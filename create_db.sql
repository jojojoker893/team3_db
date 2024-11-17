
--データベース作成
CREATE DATABASE health_vision;

--ユーザテーブル
CREATE TABLE users(
id INT AUTO_INCREMENT NOT NULL,
user_name VARCHAR(50) NOT NULL,
user_pass VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

--運動テーブル
CREATE TABLE motions (
  id INT AUTO_INCREMENT NOT NULL,
  motion_name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

--運動履歴テーブル
CREATE TABLE motion_logs(
id INT AUTO_INCREMENT NOT NULL,
motion_count INT NOT NULL,
motion_date DATE NOT NULL,
user_id INT NOT NULL,
motion_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (motion_id) REFERENCES motions(id)
);

--カロリーテーブル
CREATE TABLE calories(
  id INT AUTO_INCREMENT NOT NULL,
  calorie NUMERIC(10,2) NOT NULL, --合計十桁、少数点二桁
  motion_id INT NOT NULL,
  FOREIGN KEY (motion_id) REFERENCES motions(id)
);