create database articfacts;
use articfacts;

create table airports (
id int(20) not null,
  ident varchar(40) default null,
  type varchar(40) default null,
  name varchar(50) default null,
  latitude_deg double default null,
  longitude_deg double default null,
  elevation_ft int(20) default null,
  continent varchar(20) default null,
  iso_country varchar(10) default null,
  iso_region varchar(40) default null,
  municipality varchar(40) default null,
  scheduled_service varchar(40) default null,
  gps_code varchar(40) default null,
  iata_code varchar(40) default null,
  local_code varchar(40) default null,
  home_link varchar(60) default null,
  wikipedia_link varchar(60) default null,
  keywords varchar(40) default null,
  primary key (ident)
);

create table goal (
  id int(20) not null,
  name varchar(40) default null,
  description varchar(200) default null,
  icon varchar(20) default null,
  target varchar(40) default null,
  target_text varchar(40) default null,
  primary key (id)
  );
  
 create table scoreboard (
 id int(20) not null,
  username varchar(40) default null,
  characters varchar(40) default null,
  score int(10) default null,
  goal varchar(20) default null,
  primary key (id)
);

 
