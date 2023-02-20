create database WCT;


MariaDB [(none)]> use WCT;
Database changed

MariaDB [WCT]> create table UserDetails(
 UserName varchar(40),
 Password varchar(40),
 Email varchar(40),
 PhoneNumber varchar(13));


 create table login(
  UserName varchar(40),
 Password varchar(40));


MariaDB [WCT]> create table WorldcupCricketTournament(
 TournamentID varchar(10),
 Year varchar(10),
 Location varchar(20),
 StadiumID varchar(50),
 CountryID varchar(10),
 TeamID varchar(10));



CREATE TABLE `wct`.`admin` ( `userId` INT NOT NULL AUTO_INCREMENT , `username` VARCHAR(100) NOT NULL , `pwd` VARCHAR(100) 
NOT NULL , PRIMARY KEY (`userId`)) ;

 insert into admin values(username,pwd),
 ('rashinshan','1234');

MariaDB [WCT]> insert into WorldcupCricketTournament values
 ('T01','1975','London','Lords Cricket Ground','WestIndies','WestIndies'),
 ('T02','1979','London','Lords Cricket Ground','WestIndies','WestIndies'),
 ('T03','1983','London','Lords Cricket Ground','India','India'),
 ('T04','1987','Kolkata','Eden Gardens Stadium','Australia','Australia'),
 ('T05','1992','Melbourne','Melbourne Cricket Ground','Pakistan','Pakistan'),
 ('T06','1996','Lahore','Gadaffi Stadium','Srilanka','Srilanka'),
 ('T07','1999','London','Lords Cricket Ground','Australia','Australia'),
 ('T08','2003','Johannesburg','Wanderers Stadium','Australia','Australia'),
 ('T09','2007','Jamaica','Wanderers Stadium','Australia','Australia'),
 ('T10','2011','Mumbai','Whankede Stadium','India','India'),
 ('T11','2015','Melbourne','Melbourne Cricket Ground','Australia','Australia'),
 ('T12','2019','London','Lords Cricket Ground','England','England');


Create table Country(
 CountryID varchar(10),
 Name varchar(20),
 Players varchar(40),
 TournamentID varchar(10),
 TeamID varchar(10),
 StadiumID varchar(50));


insert into Country values
 ('C01','WestIndies','Clive Lloyd, Keith Boyce, Roy Fedricks, Lance Gibbs, Gorden Greenidge, Vanburn Holder, Bernard Jalien, Alvin Kallicharan, Rohan Kanhai, Deryck Murray, Viv Richards, Andy Roberts, Dasmond Haynes, Lawrence Rowe, Lorry Gomes, Collis King, Derick Parry, Michael Holding, Joel Gainer, Colin Groff, Malcolm Marshall','1975,1979','WestIndies','Lords Cricket Ground'),
 ('C02','India','Kapil Dev, Madan Lal, Mohider Amarnath, Sunil Gavasker, Sandeep Patil, Rage Binny, Krishnakumar Srikanth, Syed Kirmani, Vashpal Sharma, Balwinder Sandha, Kirti Azad, Ravi Shastri, Dilip Vangsanker, Sunil Valson, PR Mansingh, Foud Bacchus, Rumesh Ratnayake, MS Dhoni, Virendar Sehwag, Ravichandran Ashwin, Piyush Shawla, Gautam Gambhir, Harbajan Singh, Zaheer Khan, Virat Kohli, Ashish Nehra, Manaf Patel, Yusuf Pathan, Suresh Raina, Sreesanth, Sachin Tendulkar, Yuvaraj Singh, Praveen Kumar','1983,2011','India','Lords Cricket Ground,Whankede Stadium'),
 ('C03','Australia','Allen Border, David Boon, Grey Dyer, Dean Janes, Geaff Marsh, Tim May, Craig McDermatt, Tom Moody, Simon O Dannel, Bruce Reid, Peter Taylor, Mike Veletto, Steve Waugh, Andrew Zesers, Stephan Waugh, Shane Warne, Michael Bevan, Adam Dale, Damien Fleming, Adam Gilchrist, Brendan Julian, Shane Lee, Darren Lahman, Glenn McGrath, Damien Martyn, Ricky Ponting, Poul Reiffel, Mark Waugh, Andy Bichel, Nathan Bracken, Ian Harvey, Nathan Houritz, Mathew Hoyden, Brad Hogg, Bett Lee, Jimy Maher, Andrew Symonds, Jason Gillespie, Shane Watson, Stuart Clark, Michael Clarke, Brad Haddin, Brad Hodge, Michael Hussay, Mitchell Johnson, Shaun Tait, George Barley, Pat Cummins, Xavier Doherty, James Faulkner, Aaron Finch, Josh Hazlewood, Mitchell Marsh, Glenn Maxwell, Steven Smith, Mitchell Starc, David Warner','1987,1999,2003,2007,2015','Australia','Eden Gardens Stadium,Lords Cricket Ground,Wanderers Stadium,Trelaway Stadium,Melbourne Cricket Ground'),
 ('C04','Pakistan','Imran Khan, Aamer Suhail, Aaqih Javed, Ijaz Ahmed, Inzamam-ul-Haq, Iqbal Sikendar, Javed Miandad, Moin Khan, Mushtaq Ahmed, Ramiz Raja, Saleem Malik, Wasim Akram, Wasim Haider, Zahid Fazal','1992','Pakistan','Melbourne Cricket Ground'),
 ('C05','Srilanka','Arjuna Ranatunga, Marvan Atapatu, Upul Chandana, Aravinde de Silva, Kumar Dharmasena, Asanka Gurusinha, Sanath Jayasuriya, Ramesh Kaluwitharana, Roshan Mahanama, Muthiah Muralitharan, Ravinda Pushpakumara, Hashan Tilakaratne, Chaminda Vaas, Pramodya Wickramasinghe','1996','Srilanka','Gadaffi Stadium'),
 ('C06','England','Eoin Morgan, Moen Ali, Jafia Bairstow, Jos Buttler, Tom Curran, Liam Dawson, Liam Plunkett, Adil Rashid, Joe Root, Jason Roy, Ben Strokes,James Vince, Chris Woakes,Mark Wood, Joe Denly, Alen Hales, David Willey','2019','England','Lords Cricket Ground');


 create table Matches(
    MatchID varchar(10),
     Date date,
    NumberofGoals varchar(20),
     Type varchar(10),
    Duration varchar(10),
   TeamID varchar(10),
    StadiumID varchar(50));


insert into Matches values
     ('M01','1975/6/21','17runs','ODI','ONE DAY','WestIndies','Lords Cricket Ground'),
    ('M02','1979/6/23','92runs','ODI','ONE DAY','WestIndies','Lords Cricket Ground'),
    ('M03','1983/6/25','43runs','ODI','ONE DAY','India','Lords Cricket Ground'),
   ('M04','1987/11/8','17runs','ODI','ONE DAY','Australia','Eden Gardens Stadium'),
    ('M05','1992/03/25','22runs','ODI','ONE DAY','Pakistan','Melbourne Cricket Ground'),
     ('M06','1996/03/17','7wickets','ODI','ONE DAY','Srilanka','Gadaffi Stadium'),
    ('M07','1999/06/20','8wickets','ODI','ONE DAY','Australia','Lords Cricket Ground'),
    ('M08','2003/03/23','125runs','ODI','ONE DAY','Australia','Wanderers Stadium'),
    ('M09','2007/04/21','1wicket','ODI','ONE DAY','Australia','Trelaway Stadium'),
   ('M10','2011/04/2','6wicket','ODI','ONE DAY','India','Whankede Stadium'),
    ('M11','2015/03/24','7wicket','ODI','ONE DAY','Australia','Melbourne Cricket Ground'),
  ('M12','2019/07/14','15runs','ODI','ONE DAY','England','Lords Cricket Ground');

create table Team(
 TeamID varchar(10),
 Name varchar(20),
 NumberofPlayers varchar(10),
 MatchID varchar(10),
 TournamnetID varchar(10),
 Player_captain varchar(40),
 CountryID varchar(10));
 
insert into Team values
 ('TEAM1','WestIndies','21','M01,M02','1975,1979','Clive Lloyd','WestIndies'),
 ('TEAM2','India','33','M03,M10','1983,2011','Kapil Dev, MS Dhoni','India'),
 ('TEAM3','Australia','57','M04,M07,M08,M09,M11','1987,1999,2003,2007,2015','Allen Border,Stephan Waugh,Ricky Ponting,Michael Clarke','Australia'),
 ('TEAM4','Pakistan','14','M05','1992','Imran Khan','Pakistan'),
 ('TEAM5','Srilanka','14','M06','1996','Arjuna Ranatunga','Srilanka'),
 ('TEAM6','England','17','M12','2019','Eoin Morgan','England');
 
create table Player_Captain(
 PlayerID varchar(10),
 Name varchar(40),
 Role varchar(30),
 TeamID varchar(20),
 Year varchar(20));
 
insert into Player_Captain values
 ('W1','Clive Lloyd','Batsman','WestIndies','1975,1979'),
('I1','Kapil Dev','All_rounder','India','1983'),
('A1','Allen Border','Middle_order Batsman','Australia','1987'),
('P1','Imran Khan','All_rounder','Pakistan','1992'),
('S1','Arjuna Ranatunga','Batsman','Srilanka','1996'),
('A2','Stephan Waugh','Middle_order Batsman','Australia','1999'),
('A3','Ricky Ponting','Batsman','Australia','2003,2007'),
('I2','MS Dhoni','Wicket_keeper Batsman','India','2011'),
('A4','Michael Clarke','Middle_order Batsman','Australia','2015'),
('E1','Eoin Morgan','Middle_order Batsman','England','2019'); 

create table Stadium(
StadiumID varchar(10),
Name varchar(40),
TournamentID varchar(20),
MatchID varchar(10),
CountryID varchar(20));

insert into Stadium values
('S01','Lords Cricket Ground','1975,1979,1983,2011,2019','M01,M02,M03,M07,M12','England'),
('S02','Eden Gardens Stadium','1987','M04','India'),
('S03','Melbourne Cricket Ground','1992,2015','M05,M11','Australia'),
('S04','Gadaffi Stadium','1996','M06','Pakistan'),
('S05','Wanderers Stadium','2003','M08','North America'),
('S06','Trelaway Stadium','2007','M09','WestIndies'),
('S07','Whankede Stadium','2011','M10','India');

create table Plays(
 TournamentID varchar(10),
 TeamID varchar(10));
 
insert into Plays values
('1975','WestIndies'),
('1979','WestIndies'),
('1983','India'),
('1987','Australia'),
('1992','Pakistan'),
('1996','Srilanka'),
('1999','Australia'),
('2003','Australia'),
('2007','Australia'),
('2011','India'),
('2015','Australia'),
('2019','England');
 
create table Hosts(
 TournamentID varchar(10),
 CountryID varchar(20));
 
insert into Hosts values
('1975','England'),
('1979','England'),
('1983','England'),
('1987','India'),
('1992','Australia'),
('1996','India'),
('1999','England'),
('2003','South Africa'),
('2007','WestIndies'),
('2011','India'),
('2015','Australia'),
('2019','England');

create table PlaysFor(
 TeamID varchar(20),
 PlayerID varchar(40));
 
insert into PlaysFor values
 ('WestIndies','W1'),
 ('India','I1'),
 ('India','I2'),
 ('Australia','A1'),
 ('Australia','A2'),
 ('Australia','A3'),
 ('Australia','A4'),
 ('Pakistan','P1'),
 ('Srilanka','S1'),
 ('England','E1');
 
create table Plays_for(
 CountryID varchar(20),
 PlayerID varchar(10));
 
insert into Plays_for values
 ('WestIndies','W1'),
 ('India','I1'),
 ('India','I2'),
 ('Australia','A1'),
 ('Australia','A2'),
 ('Australia','A3'),
 ('Australia','A4'),
 ('Pakistan','P1'),
 ('Srilanka','S1'),
 ('England','E1');
 
create table Visitor(
 TeamID varchar(20),
 MatchID varchar(10));

insert into Visitor values
('WestIndies','M01'),
('WestIndies','M02'),
('India','M03'),
('Australia','M04'),
('Pakistan','M05'),
('Srilanka','M06'),
('Australia','M07'),
('Australia','M08'),
('Australia','M09'),
('India','M10'),
('Australia','M11'),
('England','M12');

create table Home(
 TeamID varchar(20),
 MatchID varchar(10));

insert into Home values
('WestIndies','M01'),
('WestIndies','M02'),
('India','M03'),
('Australia','M04'),
('Pakistan','M05'),
('Srilanka','M06'),
('Australia','M07'),
('Australia','M08'),
('Australia','M09'),
('India','M10'),
('Australia','M11'),
('England','M12');

create table Location(
 StadiumID varchar(30),
 TournamentID varchar(10));
 
insert into Location values
 ('Lords Cricket Ground','1975,1979,1983,2011,2019'),
 ('Eden Gardens Stadium','1987'),
 ('Melbourne Cricket Ground','1992,2015'),
 ('Gadaffi Stadium','1996'),
 ('Wanderers Stadium','2003'),
 ('Trelaway Stadium','2007'),
 ('Whankede Stadium','2011');
 
create table Llocation(
 StadiumID varchar(30),
 MatchID varchar(10));
 
insert into LLocation values
 ('Lords Cricket Ground','M01,M02,M03,M07,M12'),
 ('Eden Gardens Stadium','M04'),
 ('Melbourne Cricket Ground','M05,M11'),
 ('Gadaffi Stadium','M06'),
 ('Wanderers Stadium','M08'),
 ('Trelaway Stadium','M09'),
 ('Whankede Stadium','M10');
 
create table LocatedIn(
 CountryID varchar(20),
 StadiumID varchar(30));

insert into LocatedIn values
 ('England','Lords Cricket Ground'),
 ('India','Eden Gardens Stadium'),
 ('Australia','Melbourne Cricket Ground'),
 ('Pakistan','Gadaffi Stadium'),
 ('South Africa','Wanderers Stadium'),
 ('WestIndies','Trelaway Stadium'),
 ('India','Whankede Stadium');