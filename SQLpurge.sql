mysqldump --host=173.194.234.205 --user=spinner --password=dayan151 spinnerDB > 19082016.sql

select * from registration where eventId in (select eventId from events where classId=2 and fromDate < '2017-04-31 00:00:00');
delete from registration where eventId in (select eventId from events where classId=2 and fromDate < '2017-04-31 00:00:00');
select * from registration where eventId in (select eventId from events where fromDate < '2017-10-31 00:00:00');
delete from registration where eventId in (select eventId from events where fromDate < '2017-10-31 00:00:00');

select * from events where eventId in (select eventId from events where fromDate < '2017-04-31 00:00:00');
delete from events where fromDate < '2017-10-31 00:00:00';


select eventId from events where classId=7 and fromDate like '2017-08-14%';
delete from events where classId=2 and (fromDate < '2017-02-28 00:00:00');
delete from events where classId=7 and eventid>=3085;

delete from events where fromDate > '2017-12-30 00:00:00' and classid=5;
delete from events where eventid >= 1878;
select % from events where eventid >= 1650;

select * from events where eventName like 'Monday - PM%' and (fromDate like '2017-07-24%') and classid=7;
select * from events where (fromDate like '2017-07-31%') and classid=1;
update events set fromDate=ADDTIME(fromDate,'00:45:00'), toDate=ADDTIME(toDate,'00:45:00') where eventId=418;

update events set openDate='2016-04-23 22:00:00' where classId=2 and eventId>481;

update events set instructorId=1078 where classId=1 and eventId=3408;
update events set instructorId=1079 where classId=7;
update events set instructorId=1079 where eventid=;

update events set openDate='2016-08-23 22:00:00' where classId=2 and eventId=718;
update events set toDate='2017-08-15 19:45:00' where eventId=3319;

update events set maxCapacity=19 where classId=1 and eventId>599;
update events set locktime=300 where classId=1;

update events set instructorId=2385 where classid=1 and eventName like 'Sunday - PM';

select * from events where classid=1 and fromDate like '2017-12-31%';
select * from registration where eventId = 3339;
select from events where classid=1 and fromDate like '%20:15%';


select * from registration where eventId in (select eventId from events where classId=1 and fromDate < '2016-08-01 00:00:00');

update events set fromdate=adddate(fromdate, INTERVAL -15 minute) where eventId=1633;
update events set fromdate=adddate(fromdate, INTERVAL 15 minute) where eventId=1633;
update personClass set personid=1883 where personid=1840;
update events set maxcapacity=10 where classid=7;
update class set className='KY SUSPENSION TRAINING' where classid=7;
update personClass set personId=1049 where personId=2216;
update personClass set type='INSTRUCTOR'  where personId=2414;

delete from registration where eventId in (select eventId from events where classid=5 and fromDate like '2016-08-21%');

//delete orphan persons that do not assign to any class
SELECT personid FROM person WHERE personid NOT IN (SELECT personid FROM personClass) and personid not in (select instructorId from events);
delete FROM person WHERE personid NOT IN (SELECT personid FROM personClass) and personid not in (select instructorId from events);


INSERT INTO spinnerDB2.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)1234567890','May','','','',NULL);

INSERT INTO personClass (classId, personId, type, numberOfValidRegistrations)
VALUES (7,1077, 'INSTRUCTOR', -999);