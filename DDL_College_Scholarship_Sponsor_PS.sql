Drop Table Scholarship;

Drop Table Sponsor;

Create Table Sponsor(
Sponsor_Id	Number(2),
Name		Varchar2(30) Constraint Sponsor_Name_Nn Not Null,
Town		Varchar2(15),
County		Varchar2(11),
Email		Varchar2(35) Constraint Sponsor_Email_Uq Unique,
Business_Type	Varchar2(13),
Num_Emp		Number(5),
Turnover	Number(10),
Costs		Number(9),
Main_Market	Varchar2(7),
Constraint Sponsor_Sponsor_Id_Pk Primary Key (Sponsor_Id),
Constraint Sponsor_Sponsor_Id_Ck Check (Sponsor_Id > 0),
Constraint Sponsor_Town_Initcap_Ck Check (Town = Initcap(Town)),
Constraint Sponsor_County_Initcap_Ck Check (County = Initcap(County)),
Constraint Sponsor_Business_Initcap_Ck Check (Business_Type = Initcap(Business_Type)),
Constraint Sponsor_Business_Type_Ck Check (Business_Type In ('Retail', 'Manufacturing', 'Service', 'Leisure')),
Constraint Sponsor_Email_Ck Check (Email Is Null Or Email LIKE '_%@_%._%'));


Create Table Scholarship(
Sponsor_Id		Number(2),
Scholarship_Id		Number(3),
Title			Varchar2(50) Constraint Scholarship_Scholarship_Id_Nn Not Null,
Discipline		Varchar2(11),
Annual_Value		Number(5),
Duration		Number(1),
Initial_Payment_Date	Date,
Num_Instalments		Number(2),
Category		Varchar2(13),
Condition		Varchar2(32),
University		Varchar2(35),
Constraint Scholarship_Sponsor_Id_Fk Foreign Key (Sponsor_Id) References Sponsor (Sponsor_Id),
Constraint Scholarship_Scholarship_Id_Pk Primary Key (Scholarship_Id),
Constraint Scholarship_Scholarship_Id_Ck Check (Scholarship_Id > 0),
Constraint Scholarship_Discipline_Ck Check (Discipline In ('Medical', 'Engineering', 'Psychology', 'Science')),
Constraint Scholarship_Number_Ck Check (Duration > 0 And Annual_Value > 0 And Num_Instalments > 0),
Constraint Scholarship_Condition_Ck Check (Condition In ('Must get average above 70%', 'Must pass exams', 'Reviewed at the end of each year')));

Insert Into Sponsor Values(1,'Eircom','Courtmacsherry','Dublin 2','1stinitialsurname@eircom.ie','Service',8000,168000000,23520000,'Ireland');
Insert Into Sponsor Values(2,'Analog Devices','Annacotty','Limerick','1stname.surname@analog.com','Manufacturing',1500,156000000,21840000,'UK');
Insert Into Sponsor Values(3,'Glen Dimplex','Graiguenamanagh','Louth','1stname.surname@glendimplex.com','Manufacturing',8500,150000000,21000000,'Germany');
Insert Into Sponsor Values(4,'Intel Ireland','Graiguenamanagh','Kildare','1stname.surname@intel.com','Manufacturing',3200,150000000,21000000,'Ireland');
Insert Into Sponsor Values(5,'Grafton Group','Courtmacsherry','Dublin 18','Istname.surname@graftonplc.com','Retail',3987,149600000,20944000,'Germany');
Insert Into Sponsor Values(6,'Greencore','Courtmacsherry','Dublin 2','mail@greencore.ie','Retail',5000,147331000,20626340,'UK');
Insert Into Sponsor Values(7,'Dell','Annacotty','Limerick','1stname_surname@dell.com','Manufacturing',4300,850000000,119000000,'UK');
Insert Into Sponsor Values(8,'Microsoft European Operations','Courtmacsherry','Dublin 18',null,'Manufacturing',1216,691862000,96860680,'Ireland');
Insert Into Sponsor Values(9,'Jefferson Smurfit Group','Courtmacsherry','Dublin 4','info@smurfit.ie','Manufacturing',30000,474600000,66444000,'Germany');
Insert Into Sponsor Values(10,'Kerry Group','Graiguenamanagh','Kerry','corpaffairs@kerry.ie','Manufacturing',20000,369340000,51707600,'Ireland');
Insert Into Sponsor Values(11,'Musgrave','Ballingeary','Cork','group@musgrave.ie','Retail',9000,277550000,38857000,'Ireland');
Insert Into Sponsor Values(12,'Dunnes Stores','Courtmacsherry','Dublin 2','Istinitialsurname@dunnes-stores.ie','Retail',12000,272500000,38150000,'UK');
Insert Into Sponsor Values(13,'Irish Continental Group','Courtmacsherry','Dublin 1','info@icg.ie','Leisure',1200,30500000,4270000,'Ireland');
Insert Into Sponsor Values(14,'United Drug','Courtmacsherry','Dublin 24','info@united-drug.ie','Retail',525,144640000,20249600,'UK');
Insert Into Sponsor Values(15,'IAWS Group','Courtmacsherry','Dublin 8','info@iaws.ie','Retail',2579,125082000,17511480,'Germany');
Insert Into Sponsor Values(16,'Swords Laboratories','Graiguenamanagh','Dublin',null,'Manufacturing',500,125000000,17500000,'Ireland');
Insert Into Sponsor Values(17,'Forest Laboratories Ireland','Courtmacsherry','Dublin 17','forest@forest-labs.ie','Manufacturing',150,121933000,17070620,'UK');
Insert Into Sponsor Values(18,'Primark','Courtmacsherry','Dublin 1','1stinitialsurname@primark.ie','Retail',2500,113900000,15946000,'Ireland');
Insert Into Sponsor Values(19,'Vodafone Ireland','Courtmacsherry','Dublin 18','firstname.surname@vodafone.com','Service',1300,110000000,15400000,'Ireland');
Insert Into Sponsor Values(20,'Dairygold Co-op Society','Graiguenamanagh','Cork','1stinitialsurname@dairygold.ie','Manufacturing',2500,98919000,13848660,'Germany');
Insert Into Sponsor Values(21,'Diageo Ireland','Courtmacsherry','Dublin 8',null,'Manufacturing',2500,97000000,13580000,'Ireland');
Insert Into Sponsor Values(22,'Waterford Wedgwood','Ardmore','Waterford','1stinitialsurname@waterford.ie','Manufacturing',9000,95130000,13318200,'Ireland');
Insert Into Sponsor Values(23,'Paddy Power','Courtmacsherry','Dublin 24','support@paddypower.com','Retail',1000,91300000,12782000,'UK');
Insert Into Sponsor Values(24,'Irish Shell','Courtmacsherry','Dublin 4',null,'Retail',200,90000000,12600000,'Ireland');
Insert Into Sponsor Values(25,'Statoil (Ireland)','Courtmacsherry','Dublin 1','info@statoil.com','Service',1200,90000000,12600000,'Ireland');
Insert Into Sponsor Values(26,'Aer Lingus','Graiguenamanagh','Dublin','1stname.surname@aerlingus.ie','Service',4600,88830000,12436200,'Ireland');
Insert Into Sponsor Values(27,'Irish Food Processors','Graiguenamanagh','Louth','Istinitialsurname@ifp.ie','Retail',3050,87400000,12236000,'Ireland');
Insert Into Sponsor Values(28,'Cadbury Ireland','Courtmacsherry','Dublin 5','1stname.surname@csplc.com','Manufacturing',1600,38200000,5348000,'Ireland');
Insert Into Sponsor Values(29,'Century Homes','Graiguenamanagh','Monaghan','enquiries@century.ie','Manufacturing',250,4856000,679840,'UK');
Insert Into Sponsor Values(30,'Air Contractors','Graiguenamanagh','Dublin','info@aircontractors.com','Service',76,4800000,672000,'Germany');
Insert Into Sponsor Values(31,'Capital Bars','Courtmacsherry','Dublin 2','reception@capitalbars.com','Retail',700,4800000,672000,'Germany');


Insert Into Scholarship Values(21,1,'Diageo Ireland Student Scholarship','Medical',16500,3,'19-Apr-2024',41,'Undergraduate','Must get average above 70%','University of Westminster');
Insert Into Scholarship Values(10,2,'Kerry Group Student Scholarship','Medical',22100,1,'10-Dec-2024',42,'Postgraduate','Must pass exams','University of wolvwrhampton');
Insert Into Scholarship Values(12,3,'Dunnes Stores Student Scholarship','Engineering',14700,2,'14-Aug-2023',47,'Postgraduate','Must pass exams','Trinity College Dublin');
Insert Into Scholarship Values(3,4,'Glen Dimplex Student Scholarship','Engineering',23600,3,'21-Jul-2024',42,'Undergraduate','Reviewed at the end of each year','Cork Institute of Technology');
Insert Into Scholarship Values(12,5,'Dunnes Stores Student Scholarship','Medical',21200,2,'04-Feb-2023',42,'Postgraduate','Reviewed at the end of each year','University of wolvwrhampton');
Insert Into Scholarship Values(8,6,'Microsoft European Operations Student Scholarship','Engineering',27700,1,'27-Dec-2024',60,'Postgraduate','Reviewed at the end of each year','NUI, Galway');
Insert Into Scholarship Values(13,7,'Irish Continental Group Student Scholarship','Medical',16000,4,'10-Feb-2023',47,'Undergraduate','Must get average above 70%','University of Westminster');
Insert Into Scholarship Values(27,8,'Irish Food Processors Student Scholarship','Psychology',26600,4,'12-Jan-2024',37,'Undergraduate','Reviewed at the end of each year','Oslo University College');
Insert Into Scholarship Values(22,9,'Waterford Wedgwood Student Scholarship','Psychology',24300,2,'26-May-2023',57,'Postgraduate','Must pass exams','UCD');
Insert Into Scholarship Values(2,10,'Analog Devices Student Scholarship','Psychology',16700,3,'08-Mar-2024',53,'Undergraduate','Must get average above 70%','Cork Institute of Technology');
Insert Into Scholarship Values(16,11,'Swords Laboratories Student Scholarship','Medical',21000,2,'05-Oct-2023',52,'Postgraduate','Reviewed at the end of each year','University of wolvwrhampton');
Insert Into Scholarship Values(1,12,'Eircom Student Scholarship','Engineering',14800,4,'02-Jun-2024',57,'Undergraduate','Must pass exams','Oslo University College');
Insert Into Scholarship Values(16,13,'Swords Laboratories Student Scholarship','Medical',16800,3,'22-Aug-2023',38,'Undergraduate','Reviewed at the end of each year','Oslo University College');
Insert Into Scholarship Values(29,14,'Century Homes Student Scholarship','Science',23200,2,'27-Nov-2024',57,'Postgraduate','Must pass exams','Cork Institute of Technology');
Insert Into Scholarship Values(2,15,'Analog Devices Student Scholarship','Engineering',24200,4,'01-Dec-2023',45,'Undergraduate','Reviewed at the end of each year','Cork Institute of Technology');
Insert Into Scholarship Values(26,16,'Aer Lingus Student Scholarship','Medical',22800,2,'24-Apr-2024',41,'Postgraduate','Reviewed at the end of each year','Technological University Of Shannon');
Insert Into Scholarship Values(8,17,'Microsoft European Operations Student Scholarship','Medical',19000,2,'11-Apr-2023',47,'Postgraduate','Reviewed at the end of each year','Trinity College Dublin');
Insert Into Scholarship Values(2,18,'Analog Devices Student Scholarship','Medical',21300,1,'24-May-2024',43,'Postgraduate','Must pass exams','Dublin Institute of Technolkogy');
Insert Into Scholarship Values(14,19,'United Drug Student Scholarship','Science',17700,2,'12-Apr-2023',59,'Postgraduate','Reviewed at the end of each year','University of wolvwrhampton');
Insert Into Scholarship Values(9,20,'Jefferson Smurfit Group Student Scholarship','Science',27300,2,'07-Aug-2023',41,'Postgraduate','Must pass exams','DCU');
Insert Into Scholarship Values(3,21,'Glen Dimplex Student Scholarship','Engineering',19400,4,'30-May-2024',60,'Undergraduate','Must get average above 70%','Institute of Technology Sligo');
Insert Into Scholarship Values(19,22,'Vodafone Ireland Student Scholarship','Science',21200,1,'21-Jul-2023',42,'Postgraduate','Must pass exams','UCD');
Insert Into Scholarship Values(26,23,'Aer Lingus Student Scholarship','Psychology',26400,4,'24-Jun-2023',60,'Undergraduate','Must get average above 70%','University of Bradford');
Insert Into Scholarship Values(10,24,'Kerry Group Student Scholarship','Science',21500,4,'04-Jul-2024',60,'Undergraduate','Must get average above 70%','University of Westminster');
Insert Into Scholarship Values(4,25,'Intel Ireland Student Scholarship','Medical',23000,3,'03-Sep-2024',56,'Undergraduate','Reviewed at the end of each year','University of wolvwrhampton');
Insert Into Scholarship Values(24,26,'Irish Shell Student Scholarship','Psychology',15800,3,'28-Dec-2023',55,'Undergraduate','Must pass exams','Dublin Institute of Technolkogy');
Insert Into Scholarship Values(2,27,'Analog Devices Student Scholarship','Science',27800,1,'08-May-2023',56,'Postgraduate','Reviewed at the end of each year','Trinity College Dublin');
Insert Into Scholarship Values(16,28,'Swords Laboratories Student Scholarship','Psychology',26900,4,'18-Jun-2023',51,'Undergraduate','Must pass exams','University of Westminster');
Insert Into Scholarship Values(24,29,'Irish Shell Student Scholarship','Science',17100,3,'25-Jul-2023',46,'Undergraduate','Reviewed at the end of each year','DCU');
Insert Into Scholarship Values(25,30,'Statoil (Ireland) Student Scholarship','Medical',17100,3,'22-Jan-2023',38,'Undergraduate','Reviewed at the end of each year','Dublin City University');
Insert Into Scholarship Values(25,31,'Statoil (Ireland) Student Scholarship','Medical',16000,4,'16-Mar-2024',50,'Undergraduate','Reviewed at the end of each year','DCU');
Insert Into Scholarship Values(10,32,'Kerry Group Student Scholarship','Science',16700,2,'14-Sep-2024',42,'Postgraduate','Must get average above 70%','Cork Institute of Technology');
Insert Into Scholarship Values(30,33,'Air Contractors Student Scholarship','Engineering',13600,4,'24-Jan-2024',51,'Undergraduate','Must pass exams','DCU');
Insert Into Scholarship Values(16,34,'Swords Laboratories Student Scholarship','Engineering',19300,3,'07-Oct-2023',46,'Undergraduate','Reviewed at the end of each year','University of Westminster');
Insert Into Scholarship Values(1,35,'Eircom Student Scholarship','Engineering',14700,2,'07-Feb-2024',44,'Postgraduate','Must pass exams','University of wolvwrhampton');
Insert Into Scholarship Values(24,36,'Irish Shell Student Scholarship','Psychology',15400,1,'25-Nov-2024',58,'Postgraduate','Reviewed at the end of each year','UCD');
Insert Into Scholarship Values(7,37,'Dell Student Scholarship','Science',21300,1,'25-May-2023',38,'Postgraduate','Must get average above 70%','Institute of Technology Sligo');
Insert Into Scholarship Values(2,38,'Analog Devices Student Scholarship','Science',18300,2,'05-Sep-2023',42,'Postgraduate','Must pass exams','Dublin Institute of Technolkogy');
Insert Into Scholarship Values(13,39,'Irish Continental Group Student Scholarship','Science',25400,4,'22-May-2023',55,'Undergraduate','Reviewed at the end of each year','Oslo University College');
Insert Into Scholarship Values(16,40,'Swords Laboratories Student Scholarship','Medical',23900,4,'07-Jan-2023',40,'Undergraduate','Must pass exams','Technological University Of Shannon');
Insert Into Scholarship Values(17,41,'Forest Laboratories Ireland Student Scholarship','Psychology',18600,3,'12-Aug-2024',58,'Undergraduate','Reviewed at the end of each year','Technological University Of Shannon');
Insert Into Scholarship Values(18,42,'Primark Student Scholarship','Engineering',21800,2,'08-May-2024',40,'Postgraduate','Must pass exams','Trinity College Dublin');
Insert Into Scholarship Values(10,43,'Kerry Group Student Scholarship','Medical',25300,4,'27-Mar-2023',47,'Undergraduate','Must get average above 70%','Oslo University College');
Insert Into Scholarship Values(27,44,'Irish Food Processors Student Scholarship','Medical',25600,2,'12-Oct-2023',41,'Postgraduate','Reviewed at the end of each year','NUI, Galway');
Insert Into Scholarship Values(23,45,'Paddy Power Student Scholarship','Medical',22300,2,'28-Nov-2023',44,'Postgraduate','Must get average above 70%','DCU');
Insert Into Scholarship Values(27,46,'Irish Food Processors Student Scholarship','Psychology',16300,2,'30-Jan-2023',44,'Postgraduate','Reviewed at the end of each year','NUI, Galway');
Insert Into Scholarship Values(7,47,'Dell Student Scholarship','Science',19200,3,'05-Aug-2023',45,'Undergraduate','Must get average above 70%','UCD');
Insert Into Scholarship Values(23,48,'Paddy Power Student Scholarship','Psychology',25200,4,'23-Apr-2023',39,'Undergraduate','Must get average above 70%','Cork Institute of Technology');
Insert Into Scholarship Values(25,49,'Statoil (Ireland) Student Scholarship','Engineering',24200,3,'12-Jan-2023',38,'Undergraduate','Reviewed at the end of each year','University of Bradford');
Insert Into Scholarship Values(31,50,'Capital Bars Student Scholarship','Medical',19200,4,'21-Mar-2023',37,'Undergraduate','Must pass exams','University of Bradford');
Insert Into Scholarship Values(29,51,'Century Homes Student Scholarship','Psychology',21100,3,'14-Dec-2023',56,'Undergraduate','Must get average above 70%','DCU');
Insert Into Scholarship Values(16,52,'Swords Laboratories Student Scholarship','Engineering',22100,4,'30-May-2023',36,'Undergraduate','Reviewed at the end of each year','UCD');
Insert Into Scholarship Values(31,53,'Capital Bars Student Scholarship','Science',27600,4,'22-Nov-2023',54,'Undergraduate','Reviewed at the end of each year','Dublin Institute of Technolkogy');
Insert Into Scholarship Values(2,54,'Analog Devices Student Scholarship','Psychology',24400,4,'20-Jan-2024',43,'Undergraduate','Reviewed at the end of each year','DCU');
Insert Into Scholarship Values(25,55,'Statoil (Ireland) Student Scholarship','Medical',19900,1,'15-May-2023',37,'Postgraduate','Must get average above 70%','Technological University Of Shannon');
Insert Into Scholarship Values(23,56,'Paddy Power Student Scholarship','Psychology',17700,3,'13-Feb-2023',42,'Undergraduate','Must get average above 70%','Oslo University College');
Insert Into Scholarship Values(3,57,'Glen Dimplex Student Scholarship','Medical',21700,1,'05-Nov-2024',57,'Postgraduate','Must pass exams','Cork Institute of Technology');
Insert Into Scholarship Values(21,58,'Diageo Ireland Student Scholarship','Science',25400,4,'28-Aug-2023',50,'Undergraduate','Must pass exams','Dublin City University');
Insert Into Scholarship Values(10,59,'Kerry Group Student Scholarship','Science',23400,4,'13-Mar-2023',47,'Undergraduate','Must get average above 70%','University of wolvwrhampton');
Insert Into Scholarship Values(9,60,'Jefferson Smurfit Group Student Scholarship','Engineering',16600,1,'28-Jun-2023',41,'Postgraduate','Must pass exams','Trinity College Dublin');
Insert Into Scholarship Values(21,61,'Diageo Ireland Student Scholarship','Science',15000,1,'30-Oct-2024',36,'Postgraduate','Must pass exams','University of wolvwrhampton');
Insert Into Scholarship Values(2,62,'Analog Devices Student Scholarship','Psychology',14600,3,'02-Aug-2024',47,'Undergraduate','Must pass exams','University of Bradford');
Insert Into Scholarship Values(12,63,'Dunnes Stores Student Scholarship','Engineering',21400,2,'09-Nov-2023',53,'Postgraduate','Must pass exams','Oslo University College');
Insert Into Scholarship Values(31,64,'Capital Bars Student Scholarship','Science',15900,1,'14-Feb-2024',49,'Postgraduate','Must get average above 70%','Technological University Of Shannon');
Insert Into Scholarship Values(16,65,'Swords Laboratories Student Scholarship','Psychology',22700,3,'17-May-2023',58,'Undergraduate','Must pass exams','Trinity College Dublin');
Insert Into Scholarship Values(1,66,'Eircom Student Scholarship','Science',15500,1,'25-Jul-2024',41,'Postgraduate','Reviewed at the end of each year','Dublin Institute of Technolkogy');
Insert Into Scholarship Values(9,67,'Jefferson Smurfit Group Student Scholarship','Medical',24200,4,'03-May-2024',57,'Undergraduate','Must pass exams','Technological University Of Shannon');
Insert Into Scholarship Values(9,68,'Jefferson Smurfit Group Student Scholarship','Engineering',24900,3,'04-Apr-2024',45,'Undergraduate','Must get average above 70%','NUI, Galway');
Insert Into Scholarship Values(4,69,'Intel Ireland Student Scholarship','Medical',17700,1,'27-Aug-2024',49,'Postgraduate','Reviewed at the end of each year','Dublin City University');
Insert Into Scholarship Values(3,70,'Glen Dimplex Student Scholarship','Psychology',23500,3,'28-Jul-2023',41,'Undergraduate','Must get average above 70%','Dublin City University');
Insert Into Scholarship Values(16,71,'Swords Laboratories Student Scholarship','Psychology',26600,3,'10-Jan-2023',58,'Undergraduate','Reviewed at the end of each year','Dublin City University');
Insert Into Scholarship Values(4,72,'Intel Ireland Student Scholarship','Engineering',24900,3,'29-Mar-2023',56,'Undergraduate','Must pass exams','Trinity College Dublin');
Insert Into Scholarship Values(18,73,'Primark Student Scholarship','Medical',20300,2,'27-Aug-2023',47,'Postgraduate','Must get average above 70%','Technological University Of Shannon');
Insert Into Scholarship Values(1,74,'Eircom Student Scholarship','Engineering',24700,4,'15-Mar-2023',37,'Undergraduate','Must pass exams','Cork Institute of Technology');
Insert Into Scholarship Values(29,75,'Century Homes Student Scholarship','Engineering',25400,1,'14-Dec-2024',45,'Postgraduate','Must pass exams','Oslo University College');
Insert Into Scholarship Values(25,76,'Statoil (Ireland) Student Scholarship','Science',19200,3,'05-Sep-2024',51,'Undergraduate','Reviewed at the end of each year','Dublin Institute of Technolkogy');
Insert Into Scholarship Values(12,77,'Dunnes Stores Student Scholarship','Science',21100,1,'09-Apr-2024',60,'Postgraduate','Reviewed at the end of each year','Technological University Of Shannon');
Insert Into Scholarship Values(3,78,'Glen Dimplex Student Scholarship','Psychology',21400,1,'21-Oct-2024',55,'Postgraduate','Must pass exams','Institute of Technology Sligo');
Insert Into Scholarship Values(17,79,'Forest Laboratories Ireland Student Scholarship','Science',19900,2,'15-Jan-2024',37,'Postgraduate','Reviewed at the end of each year','Trinity College Dublin');
Insert Into Scholarship Values(16,80,'Swords Laboratories Student Scholarship','Psychology',18900,3,'30-Dec-2024',55,'Undergraduate','Reviewed at the end of each year','NUI, Galway');
Insert Into Scholarship Values(17,81,'Forest Laboratories Ireland Student Scholarship','Psychology',22000,2,'20-May-2023',55,'Postgraduate','Must get average above 70%','Cork Institute of Technology');
Insert Into Scholarship Values(23,82,'Paddy Power Student Scholarship','Psychology',27000,2,'20-Nov-2023',42,'Postgraduate','Must pass exams','University of wolvwrhampton');
Insert Into Scholarship Values(26,83,'Aer Lingus Student Scholarship','Medical',24000,3,'01-Mar-2023',56,'Undergraduate','Must get average above 70%','Institute of Technology Sligo');
Insert Into Scholarship Values(29,84,'Century Homes Student Scholarship','Psychology',18200,4,'31-Mar-2024',49,'Undergraduate','Must pass exams','Cork Institute of Technology');
Insert Into Scholarship Values(31,85,'Capital Bars Student Scholarship','Engineering',25200,4,'10-Oct-2023',53,'Undergraduate','Must get average above 70%','University of Bradford');
Insert Into Scholarship Values(13,86,'Irish Continental Group Student Scholarship','Psychology',15100,3,'06-Nov-2024',59,'Undergraduate','Reviewed at the end of each year','NUI, Galway');
Insert Into Scholarship Values(3,87,'Glen Dimplex Student Scholarship','Science',21800,4,'18-Jan-2023',47,'Undergraduate','Must pass exams','University of Bradford');
Insert Into Scholarship Values(30,88,'Air Contractors Student Scholarship','Engineering',19300,4,'01-Jan-2023',40,'Undergraduate','Must get average above 70%','Oslo University College');
Insert Into Scholarship Values(9,89,'Jefferson Smurfit Group Student Scholarship','Medical',27700,3,'15-Nov-2023',41,'Undergraduate','Must pass exams','NUI, Galway');
Insert Into Scholarship Values(10,90,'Kerry Group Student Scholarship','Engineering',27300,4,'11-Jun-2023',42,'Undergraduate','Reviewed at the end of each year','UCD');
Insert Into Scholarship Values(28,91,'Cadbury Ireland Student Scholarship','Psychology',22700,1,'21-Apr-2023',54,'Postgraduate','Reviewed at the end of each year','Cork Institute of Technology');
Insert Into Scholarship Values(13,92,'Irish Continental Group Student Scholarship','Engineering',22900,2,'27-Oct-2023',57,'Postgraduate','Reviewed at the end of each year','Institute of Technology Sligo');
Insert Into Scholarship Values(1,93,'Eircom Student Scholarship','Psychology',25000,4,'08-Jul-2023',41,'Undergraduate','Reviewed at the end of each year','University of Westminster');
Insert Into Scholarship Values(13,94,'Irish Continental Group Student Scholarship','Psychology',19500,2,'29-Mar-2024',43,'Postgraduate','Reviewed at the end of each year','Dublin Institute of Technolkogy');
Insert Into Scholarship Values(12,95,'Dunnes Stores Student Scholarship','Medical',14600,2,'27-Jul-2023',43,'Postgraduate','Must get average above 70%','Trinity College Dublin');
Insert Into Scholarship Values(16,96,'Swords Laboratories Student Scholarship','Medical',13800,1,'29-Jul-2023',43,'Postgraduate','Must pass exams','Oslo University College');
Insert Into Scholarship Values(13,97,'Irish Continental Group Student Scholarship','Medical',13300,4,'22-Sep-2024',36,'Undergraduate','Reviewed at the end of each year','University of wolvwrhampton');
Insert Into Scholarship Values(24,98,'Irish Shell Student Scholarship','Medical',18400,1,'20-Apr-2023',50,'Postgraduate','Reviewed at the end of each year','University of Westminster');
Insert Into Scholarship Values(31,99,'Capital Bars Student Scholarship','Medical',17400,1,'18-Apr-2024',53,'Postgraduate','Must get average above 70%','Trinity College Dublin');
Insert Into Scholarship Values(15,100,'IAWS Group Student Scholarship','Medical',16900,2,'25-Sep-2023',40,'Postgraduate','Must get average above 70%','Trinity College Dublin');








