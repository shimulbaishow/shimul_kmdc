CREATE DATABASE Shimul;


USE Shimul;
CREATE TABLE simple(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR (150) NOT NULL,
    `price` DECIMAL(10,2) NOT NULL,
    `stock` INT DEFAULT 0,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    `update_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP()
)

SET @num1=100;
SET @num2=200;

SELECT
@num1+@num2 as Addition,
@num2-@num1 as Sub,
@num1*@num2 as Mul,
@num2/@num1 as Divion,
SQRT(@num1) as Sqrtt,
POWER(@num1,2) as Powervalue;

SET @st="We are learning";
SELECT 
 LOWER(@st) as Ltext,
 UPPER(@st) as Uptext,
 LENGTH(@st) as Lntext,
 CHAR_LENGTH(@st) as Chartext;
 --Date 
 select NOW() as Dat;
 SELECT CURTIME() as CurTime;
 select CURDATE() as CurTe;
 --Date Difference
 SET @date1="2025-10-20"; 
 SET @date2="2025-10-31";
 SELECT DATEDIFF(@date2,@date1) as DaDiff;
 SELECT DATE_ADD(@date1,INTERVAL 30 DAY) as Dadd;
 SELECT DATE_SUB(@date2,INTERVAL 11 DAY) as DDiff;