CREATE DATABASE mumbai_bank;
CREATE DATABASE pune_bank;
 
CREATE TABLE mumbai_bank.account (acc_no VARCHAR(10) PRIMARY KEY, name VARCHAR(30), balance INT);
CREATE TABLE pune_bank.account   (acc_no VARCHAR(10) PRIMARY KEY, name VARCHAR(30), balance INT);
 
INSERT INTO mumbai_bank.account VALUES ('A', 'Ravi',  20000);
INSERT INTO pune_bank.account   VALUES ('B', 'Sneha', 10000);


START TRANSACTION;
UPDATE mumbai_bank.account SET balance = balance - 5000 WHERE acc_no = 'A';
UPDATE pune_bank.account   SET balance = balance + 5000 WHERE acc_no = 'B';
COMMIT;
 
SELECT * FROM mumbai_bank.account; 
SELECT * FROM pune_bank.account;    
Transfer with ROLLBACK (failure case)
START TRANSACTION;
UPDATE mumbai_bank.account SET balance = balance - 5000 WHERE acc_no = 'A';
ROLLBACK;
 
SELECT * FROM mumbai_bank.account; 


XA START 'trf1';
UPDATE mumbai_bank.account SET balance = balance - 5000 WHERE acc_no = 'A';
UPDATE pune_bank.account   SET balance = balance + 5000 WHERE acc_no = 'B';
XA END 'trf1';
XA PREPARE 'trf1';      
XA COMMIT 'trf1';       


START TRANSACTION;
UPDATE mumbai_bank.account SET balance = balance - 1000 WHERE acc_no = 'A';
SAVEPOINT s1;
UPDATE pune_bank.account SET balance = balance + 1000 WHERE acc_no = 'B';
ROLLBACK TO s1;        
COMMIT;
