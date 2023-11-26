DROP DATABASE BloodBank;
CREATE DATABASE BloodBank;
USE BloodBank;

CREATE TABLE Recipient ( Rec_ID INT PRIMARY KEY AUTO_INCREMENT, Rec_Name VARCHAR(120) NOT NULL, Rec_DoB DATE NOT NULL,
                         Rec_Gender VARCHAR(20) NOT NULL, Rec_Blood_Type VARCHAR(20) NOT NULL,
                         Rec_Email VARCHAR(120) NOT NULL, Rec_Phone_No BIGINT NOT NULL);
                        
          
CREATE TABLE Donor ( D_ID INT PRIMARY KEY AUTO_INCREMENT, D_Name VARCHAR(120) NOT NULL,
					 D_DoB DATE NOT NULL, D_Gender VARCHAR(20) NOT NULL, D_Blood_Type VARCHAR(20) NOT NULL,
                     D_Email VARCHAR(120) NOT NULL, D_Phone_No BIGINT NOT NULL,
                     Last_Date_of_Donation DATE DEFAULT NULL, Medical_History VARCHAR(150) DEFAULT NULL);
  
  
  
  
SELECT * FROM Donor;


CREATE TABLE Blood_Bank (Bank_ID INT PRIMARY KEY AUTO_INCREMENT, Bank_Name VARCHAR(120) NOT NULL, 
						 Location VARCHAR(20) NOT NULL, Bank_Email VARCHAR(120) NOT NULL, 
                         Bank_Phone_No BIGINT NOT NULL, Mgr_ID INT);
                         



CREATE TABLE Staff (S_ID INT PRIMARY KEY AUTO_INCREMENT, Bank_ID INT NOT NULL, S_Name VARCHAR(120) NOT NULL,
					S_Position VARCHAR(40) NOT NULL, S_Email VARCHAR(120) NOT NULL UNIQUE, S_Password VARCHAR(40) NOT NULL,
                    S_Phone_No BIGINT NOT NULL, FOREIGN KEY (Bank_ID) REFERENCES Blood_Bank(Bank_ID));
   
select * from staff;

ALTER TABLE Blood_Bank ADD FOREIGN KEY (Mgr_ID) REFERENCES Staff(S_ID);

CREATE TABLE Blood_Inventory  ( Bld_Bag_ID BIGINT PRIMARY KEY AUTO_INCREMENT, D_ID INT NOT NULL, 
								Bank_ID INT NOT NULL,
								Date_of_Donatn DATE, Quantity INT NOT NULL,
								Price INT, Don_Status VARCHAR(20) NOT NULL,
								FOREIGN KEY (Bank_ID) REFERENCES Blood_Bank(Bank_ID),
								FOREIGN KEY (D_ID) REFERENCES Donor(D_ID) );
SELECT * FROM Blood_Inventory;

CREATE TABLE Transfusion ( T_ID INT PRIMARY KEY AUTO_INCREMENT, Bag_ID BIGINT NOT NULL,
						   Rec_ID INT NOT NULL,
						   T_Date DATE NOT NULL, Quantity INT NOT NULL, T_time TIME,
                           FOREIGN KEY (Bag_ID) REFERENCES Blood_Inventory(Bld_Bag_ID),
                           FOREIGN KEY (Rec_ID) REFERENCES Recipient(Rec_ID) );
                           

                        

UPDATE Blood_Bank 
	SET Mgr_ID = 1
		WHERE Bank_ID = 1;


-- Triggers 

-- Trigger to update Last Date of Donation of Donor

DELIMITER //
CREATE TRIGGER UpdateLastDonationDate
AFTER INSERT ON Blood_Inventory
FOR EACH ROW
BEGIN
  UPDATE Donor
  SET Last_Date_of_Donation = NEW.Date_of_Donatn
  WHERE D_ID = NEW.D_ID;
END//

DELIMITER ;

-- DROP TRIGGER UpdateLastDonationDate;

SELECT * FROM Donor 
WHERE D_ID = 1;



-- Trigger to Check if Donor's Last Date of Donation was before 90 days

DELIMITER //

CREATE TRIGGER CheckEligibilty
BEFORE INSERT ON Blood_Inventory
FOR EACH ROW 
	BEGIN 
		DECLARE Last_donatn DATE;
        
        SELECT Last_Date_of_Donation INTO Last_donatn
        FROM Donor d
        WHERE D_ID = NEW.D_ID;
        
		IF Last_Donatn IS NOT NULL AND DATEDIFF(CURDATE(),Last_Donatn) < 90 THEN 
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Person can only donate 90 days after his last donation';
		END IF;
        
    END //
    
    
    

DELIMITER ;


-- Trigger to Check if Age > 18

DELIMITER //

CREATE TRIGGER AgeChk
BEFORE INSERT ON Donor
FOR EACH ROW 
	BEGIN
		IF ((DATEDIFF(CURDATE(), NEW.D_DoB)) / 365 ) < 18 THEN 
        SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Age of Donor must be above 18';
		END IF;
        
	END//
    
DELIMITER ;


-- Trigger to Update the Status from 'Available' to 'Unavailable'

DELIMITER //
CREATE TRIGGER UpdateStatus
AFTER INSERT ON Transfusion
FOR EACH ROW
BEGIN
    DECLARE Bag_Status VARCHAR(20);
    
    -- Get the status of the blood bag
    SELECT Don_Status INTO Bag_Status
    FROM Blood_Inventory
    WHERE Bld_Bag_ID = NEW.Bag_ID;

    -- Update the status to "Unavailable" if it was "Available"

        UPDATE Blood_Inventory
        SET Don_Status = 'Unavailable'
        WHERE Bld_Bag_ID = NEW.Bag_ID;

END//
DELIMITER ;

SELECT * FROM Blood_Inventory;

-- Trigger to not allow the Usage of Unavailable Bags

DELIMITER //

CREATE TRIGGER NoUsingUnavail
BEFORE INSERT ON transfusion
FOR EACH ROW
BEGIN 
	DECLARE Bag_Status VARCHAR(20); 
	SELECT b.Don_Status INTO Bag_Status
    FROM Blood_Inventory b
    WHERE Bld_Bag_ID = NEW.Bag_ID;
    
    IF Bag_Status = 'Unavailable' THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'This Blood Bag is Unavailable';
	END IF;
        
	END//
    

DELIMITER ;

-- DROP TRIGGER NoUsingUnavail;

INSERT INTO transfusion VALUES (32141, 172111799, 2, '2023-10-20', 2, '08:30:00');

-- Trigger to maintain data integrity :

-- Trigger to Check Blood Type of Donor and Recipient

-- DELIMITER //

--  CREATE TRIGGER SameBloodTypeDonandRec
--  BEFORE INSERT ON transfusion 
--  FOR EACH ROW 
--  BEGIN 
-- 	DECLARE Don_Blood_Type VARCHAR(20);
--     DECLARE Rec_Blood_Type VARCHAR(20);
    
--     SELECT d.D_Blood_Type INTO Don_Blood_Type
--     FROM  Donor d, Blood_Inventory b
--     WHERE d.D_ID = b.D_ID AND 
-- 		  b.Bld_Bag_ID = NEW.Bag_ID;
          
-- 	SELECT r.Rec_Blood_Type INTO Rec_Blood_Type
--     FROM Recipient r, transfusion t
--     WHERE r.Rec_ID = t.Rec_ID AND 
-- 		  t.Rec_ID = NEW.Rec_ID;
          
-- 	IF Don_Blood_Type <> Rec_Blood_Type THEN 
-- 		SIGNAL SQLSTATE '45000'
-- 		SET MESSAGE_TEXT = 'The Donor and Recipient Blood Types are not compatible.';
-- 	END IF;
        
-- 	END//
	
--  DELIMITER ;   
 

 
 -- Trigger to Check Blood Type of Donor and Recipient (More Precise)

-- DELIMITER //

--  CREATE TRIGGER SameBloodTypeDonandRec
-- BEFORE INSERT ON transfusion 
-- FOR EACH ROW 
--  BEGIN 
-- 	DECLARE Don_Blood_Type varchar(20);
--    DECLARE Rec_Blood_Type varchar(20);
    
--    SELECT d.D_Blood_Type INTO Don_Blood_Type
--    FROM  Donor d, Blood_Inventory b
--    WHERE d.D_ID = b.D_ID AND 
-- 		  b.Bld_Bag_ID = NEW.Bag_ID;
          
-- 	SELECT r.Rec_Blood_Type INTO Rec_Blood_Type
--    FROM Recipient r, transfusion t
--    WHERE r.Rec_ID = t.Rec_ID AND 
-- 		  r.Rec_ID = NEW.Rec_ID;
          
-- 	IF Rec_Blood_Type = 'A+' AND Don_Blood_Type NOT IN ('A+', 'A-', 'O+', 'O-') THEN 
-- 		SIGNAL SQLSTATE '45000'
-- 		SET MESSAGE_TEXT = 'The Donor and Recipient Blood Types are not compatible.';
-- 	END IF;
    
--     IF Rec_Blood_Type = 'A-' AND Don_Blood_Type NOT IN ('A-','O-')THEN 
-- 		SIGNAL SQLSTATE '45000'
-- 		SET MESSAGE_TEXT = 'The Donor and Recipient Blood Types are not compatible.';
-- 	END IF;
    
--     IF Rec_Blood_Type = 'B+' AND Don_Blood_Type NOT IN ('B+','B-', 'O+', 'O-') THEN 
-- 		SIGNAL SQLSTATE '45000'
-- 		SET MESSAGE_TEXT = 'The Donor and Recipient Blood Types are not compatible.';
-- 	END IF;
    
--     IF Rec_Blood_Type = 'B-' AND Don_Blood_Type NOT IN ('B-','O-') THEN 
-- 		SIGNAL SQLSTATE '45000'
-- 		SET MESSAGE_TEXT = 'The Donor and Recipient Blood Types are not compatible.';
-- 	END IF;
    
--     IF Rec_Blood_Type = 'AB-' AND Don_Blood_Type NOT IN ('AB-','A-', 'B-', 'O-') THEN 
-- 		SIGNAL SQLSTATE '45000'
-- 		SET MESSAGE_TEXT = 'The Donor and Recipient Blood Types are not compatible.';
-- 	END IF;
    
--     IF Rec_Blood_Type = 'O+' AND Don_Blood_Type NOT IN ('O+', 'O-') THEN 
-- 		SIGNAL SQLSTATE '45000'
-- 		SET MESSAGE_TEXT = 'The Donor and Recipient Blood Types are not compatible.';
-- 	END IF;
    
--     IF Rec_Blood_Type = 'O-' AND Don_Blood_Type NOT IN ('O-') THEN 
-- 		SIGNAL SQLSTATE '45000'
-- 		SET MESSAGE_TEXT = 'The Donor and Recipient Blood Types are not compatible.';
-- 	END IF;    
	
-- 	END//
	
--  DELIMITER ; 
 
 -- Trigger to Check if Blood Bag has expired before Transfusion
 
 DELIMITER //
 
 CREATE TRIGGER ExpiredCheck
 BEFORE INSERT ON Transfusion
 FOR EACH ROW
 BEGIN 
	DECLARE Donation_Date DATE;
    SELECT b.Date_of_Donatn INTO Donation_Date 
    FROM Blood_Inventory b
    WHERE b.Bld_Bag_ID = NEW.Bag_ID;
          
	IF DATEDIFF(NEW.T_Date, Donation_Date) > 42 THEN 
    SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Blood Bag has expired';
	
    UPDATE Blood_Inventory
    SET Don_Status = 'Unavailable'
    WHERE Bld_Bag_ID = NEW.Bag_ID;
        
	END IF;
        
	END//

DELIMITER ;
