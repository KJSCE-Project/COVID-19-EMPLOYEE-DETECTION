INSERT INTO  `DEPARTMENT` (`DEPT_ID`, `DEPT_NAME`) VALUES ('1', 'Marketing');
INSERT INTO  `DEPARTMENT` (`DEPT_ID`, `DEPT_NAME`) VALUES ('2', 'Sales');


INSERT INTO `Covid_19_local`.`COVID` (`EMPLOYEE_ID`,`SHORT_BREATH`,`DRY_COUGH`,`TEMP`,`FATIGUE`,`PREGNANT`)
 
VALUES ('2','Y','N','Y','N','Y'),
 
('3','N','Y','N','Y','N'),
 
('4','Y','Y','Y','Y','Y'),
 
('5','N','N','N','N','N'),
 
('6','Y','Y','Y','N','N'),
 
('7','Y','Y','Y','N','N'),
 
('8','Y','Y','Y','N','N'),
 
('9','Y','Y','Y','N','N'),
 
('10','Y','Y','Y','N','N'),
 
('11','Y','Y','Y','N','N'),
 
('12','Y','Y','Y','N','N'),
 
('13','Y','Y','Y','N','N'),
 
('14','Y','Y','Y','N','N'),
 
('15','Y','Y','Y','N','N'),
 
('16','Y','Y','Y','N','N'),
 
 
('17','Y','Y','Y','N','N'),
 
('18','Y','Y','Y','N','N'),
 
('19','Y','Y','Y','N','N'),
 
('20','Y','Y','Y','N','N'),
 
('21','Y','Y','Y','N','N');

/EMPLOYEE DATA/
INSERT INTO `Covid_19_local`.`EMPLOYEE` (`FIRST_NAME`, `LAST_NAME`, `GENDER`, `PASSWORD`, `DEPT_ID`, `PUBLIC_EXPOSURE`, `AGE`) 
VALUES ('Abhiraj', 'Kale', 'Male', 'abhiraj123', '1', 'N', '28');

INSERT INTO `Covid_19_local`.`EMPLOYEE` (`FIRST_NAME`, `LAST_NAME`, `GENDER`, `PASSWORD`, `DEPT_ID`, `PUBLIC_EXPOSURE`, `AGE`) 
VALUES ('Avanindra', 'Patil', 'Male', 'ava@123', '2', 'N', '19'  ),
('Mukesh', 'Ambani', 'Male', 'dalal129', '1', 'Y', '59'  ),
('Sonu', 'Pradhan', 'Male', 'mynameissonu', '2', 'N', '69'  ),
('Abhiraj', 'Kale', 'Male', 'yespasspls', '2', 'N', '19'  ),
('Chinu', 'Patil', 'Male', 'smallboy', '1', 'N', '21'  ),
('Ram', 'Patel', 'Male', '1234@123', '2', 'Y', '53'  ),
('Om', 'Salvi', 'Male', 'dombivalibolte', '2', 'N', '25'  ),
('Bheem', 'Kale', 'Male', 'shaktipal', '1', 'N', '29'  ),
('Sonu', 'Bote', 'Male', 'puneas2', '2', 'Y', '34'  ),
('Nikita', 'Mundaye', 'Female', 'veganlover89', '1', 'N', '19'  ),
('Rancho', 'Chanchad', 'Male', '3idnm', '2', 'N', '26'  ),
('Sid', 'Tompe', 'Male', 'yessa', '2', 'N', '19'  ),
('Manav', 'Rupani', 'Male', 'banana@67', '1', 'N', '35'  ),
('Srushti', 'Patil', 'Female', 'lovoffice', '2', 'Y', '19'  ),
('Baburao', 'Boraste', 'Male', '12345', '1', 'N', '60'  ),
('Ganpatrao', 'Kolhe', 'Male', 'ava@123', '2', 'N', '32'  ),
('Sabu', 'Thomas', 'Male', 'cardinal2', '2', 'Y', '30'  ),
('Ali', 'Shaikh', 'Male', 'ghat23@!', '1', 'N', '33'  ),
('Salman', 'Khan', 'Male', 'wannabeactor101', '2', 'N', '32'  ),
('Gopal', 'Gangurde', 'Male', 'bestme$2', '2', 'N', '43'  );

SELECT * FROM Covid_19_local.COVID 	WHERE FATIGUE='Y';
SELECT EMPLOYEE_ID, TEMP FROM COVID GROUP BY TEMP;
SELECT DISTINCT EMPLOYEE_ID, TEMP FROM COVID GROUP BY TEMP;
SELECT EMPLOYEE_ID, TEMP FROM COVID GROUP BY TEMP HAVING EMPLOYEE_ID >=5 ;
SELECT Max(EMPLOYEE_ID) FROM COVID GROUP BY TEMP;
SELECT Max(EMPLOYEE_ID) FROM COVID GROUP BY TEMP;
SELECT COUNT(EMPLOYEE_ID) FROM COVID GROUP BY TEMP;
SELECT SUM(EMPLOYEE_ID) FROM COVID GROUP BY TEMP;

DELETE FROM EMPLOYEE WHERE EMPLOYEE_ID = 2;

SELECT * FROM COVID WHERE DEPT_ID NOT IN (2);
SELECT * FROM EMPLOYEE WHERE DEPT_ID BETWEEN 5 AND 10;
SELECT * FROM DEPARTMENT WHERE DEPT_NAME LIKE 'Mark%';

SELECT SHORT_BREATH as SYMPTOM from COVID;

SELECT TEMP FROM COVID WHERE TEMP='Y' UNION SELECT SHORT_BREATH FROM COVID WHERE SHORT_BREATH='Y';
SELECT TEMP FROM COVID WHERE TEMP='Y' UNION ALL SELECT SHORT_BREATH FROM COVID WHERE SHORT_BREATH='Y';
SELECT EMPLOYEE_ID FROM COVID WHERE TEMP='Y' INTERSECT SELECT EMPLOYEE_ID FROM COVID WHERE SHORT_BREATH='Y';