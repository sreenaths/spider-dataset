DROP TABLE IF EXISTS pilot;
CREATE TABLE pilot (
  Pilot_Id int,
  Name varchar(50),
  Age int
)
row format delimited fields terminated by ','
location '/opt/hive/data/warehouse/spider-dataset/aircraft/data/pilot'
tblproperties ('serialization.null.format'='', 'skip.header.line.count'='1');

DROP TABLE IF EXISTS aircraft;
CREATE TABLE aircraft (
  Aircraft_ID int,
  Aircraft varchar(50),
  Description varchar(50),
  Max_Gross_Weight varchar(50),
  Total_disk_area varchar(50),
  Max_disk_Loading varchar(50)
)
row format delimited fields terminated by ','
location '/opt/hive/data/warehouse/spider-dataset/aircraft/data/aircraft'
tblproperties ('serialization.null.format'='', 'skip.header.line.count'='1');

DROP TABLE IF EXISTS match;
CREATE TABLE match (
  Round int,
  Location varchar(50),
  Country varchar(50),
  Match_Date varchar(50),
  Fastest_Qualifying varchar(50),
  Winning_Pilot varchar(50),
  Winning_Aircraft varchar(50)
)
row format delimited fields terminated by ','
location '/opt/hive/data/warehouse/spider-dataset/aircraft/data/match'
tblproperties ('serialization.null.format'='', 'skip.header.line.count'='1');

DROP TABLE IF EXISTS airport;
CREATE TABLE airport (
  Airport_ID int,
  Airport_Name varchar(50),
  Total_Passengers int,
  Change_2007 varchar(50),
  International_Passengers int,
  Domestic_Passengers int,
  Transit_Passengers int,
  Aircraft_Movements int,
  Freight_Metric_Tonnes int
)
row format delimited fields terminated by ','
location '/opt/hive/data/warehouse/spider-dataset/aircraft/data/airport'
tblproperties ('serialization.null.format'='', 'skip.header.line.count'='1');

DROP TABLE IF EXISTS airport_aircraft;
CREATE TABLE airport_aircraft (
  ID int,
  Airport_ID int,
  Aircraft_ID int
)
row format delimited fields terminated by ','
location '/opt/hive/data/warehouse/spider-dataset/aircraft/data/airport_aircraft'
tblproperties ('serialization.null.format'='', 'skip.header.line.count'='1');
