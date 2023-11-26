use BloodBank;

-- Data for the Tables

-- For Recipient Table

INSERT INTO Recipient (Rec_ID, Rec_Name, Rec_DoB, Rec_Gender, Rec_Blood_Type, Rec_Email, Rec_Phone_No) VALUES
(1, 'John Doe', '1990-05-12', 'Male', 'A+', 'john.doe@example.com', 9876543210),
(2, 'Alice Smith', '1985-08-24', 'Female', 'O-', 'alice.smith@example.com', 8765432109),
(3, 'Robert Johnson', '1978-03-17', 'Male', 'B+', 'robert.j@example.com', 7654321098),
(4, 'Emma Davis', '1992-11-03', 'Female', 'AB-', 'emma.d@example.com', 6543210987),
(5, 'Michael Brown', '1980-09-18', 'Male', 'A-', 'michael.b@example.com', 9876543211);


INSERT INTO Recipient (Rec_ID, Rec_Name, Rec_DoB, Rec_Gender, Rec_Blood_Type, Rec_Email, Rec_Phone_No) VALUES
(6, 'Jennifer Adams', '1985-04-15', 'Female', 'A+', 'jennifer.a@example.com', 9876543220),
(7, 'David Smith', '1990-11-28', 'Male', 'O-', 'david.s@example.com', 8765432119),
(8, 'Sophie Turner', '1982-09-02', 'Female', 'B-', 'sophie.t@example.com', 7654321108),
(9, 'Brian Johnson', '1995-03-10', 'Male', 'AB+', 'brian.j@example.com', 6543210997),
(10, 'Megan Carter', '1988-07-25', 'Female', 'O-', 'megan.c@example.com', 9876543221);


INSERT INTO Recipient (Rec_ID, Rec_Name, Rec_DoB, Rec_Gender, Rec_Blood_Type, Rec_Email, Rec_Phone_No) VALUES
(21, 'Jacob Wilson', '1983-08-20', 'Male', 'A-', 'jacob.w@example.com', 9876543222),
(22, 'Olivia Harris', '1991-02-14', 'Female', 'O+', 'olivia.h@example.com', 8765432111),
(23, 'Ethan Thompson', '1976-11-05', 'Male', 'B+', 'ethan.t@example.com', 7654321100),
(24, 'Sophia Miller', '1989-04-30', 'Female', 'AB-', 'sophia.m@example.com', 6543210999),
(25, 'Noah Davis', '1994-07-15', 'Male', 'O-', 'noah.d@example.com', 9876543223);


INSERT INTO Recipient (Rec_ID, Rec_Name, Rec_DoB, Rec_Gender, Rec_Blood_Type, Rec_Email, Rec_Phone_No) VALUES
(26, 'Daniel Turner', '1988-05-18', 'Male', 'B+', 'daniel.t@example.com', 9876543224),
(27, 'Sophia Harris', '1993-11-22', 'Female', 'O+', 'sophia.h@example.com', 8765432113),
(28, 'Oliver Thompson', '1985-06-05', 'Male', 'A-', 'oliver.t@example.com', 7654321102),
(29, 'Emma Davis', '1990-04-30', 'Female', 'AB-', 'emma.d@example.com', 6543211001),
(30, 'Liam Robinson', '1982-08-15', 'Male', 'O-', 'liam.r@example.com', 9876543225);


INSERT INTO Recipient (Rec_ID, Rec_Name, Rec_DoB, Rec_Gender, Rec_Blood_Type, Rec_Email, Rec_Phone_No) VALUES
(31, 'Elijah Harris', '1986-07-12', 'Male', 'A+', 'elijah.h@example.com', 9876543210),
(32, 'Lily Martinez', '1995-03-28', 'Female', 'O-', 'lily.m@example.com', 8765432109),
(33, 'Isaac Turner', '1980-11-15', 'Male', 'B+', 'isaac.t@example.com', 7654321098),
(34, 'Grace Miller', '1993-06-20', 'Female', 'AB-', 'grace.m@example.com', 6543210987),
(35, 'Caleb Davis', '1987-02-04', 'Male', 'O+', 'caleb.d@example.com', 9876543212);


INSERT INTO Recipient (Rec_ID, Rec_Name, Rec_DoB, Rec_Gender, Rec_Blood_Type, Rec_Email, Rec_Phone_No) VALUES
(36, 'Luna Mitchell', '1984-08-22', 'Female', 'A+', 'luna.m@example.com', 9876543210),
(37, 'Jackson Cooper', '1991-01-17', 'Male', 'O-', 'jackson.c@example.com', 8765432109),
(38, 'Chloe Thompson', '1988-05-12', 'Female', 'B+', 'chloe.t@example.com', 7654321098),
(39, 'Lucas Adams', '1995-10-30', 'Male', 'AB-', 'lucas.a@example.com', 6543210987),
(40, 'Zoe Harris', '1987-03-05', 'Female', 'O+', 'zoe.h@example.com', 9876543212);



-- For Donor Table 

INSERT INTO Donor (D_ID, D_Name, D_DoB, D_Gender, D_Blood_Type, D_Email, D_Phone_No, Last_Date_of_Donation, Medical_History) VALUES
(1, 'Sarah Miller', '1989-07-28', 'Female', 'A+', 'sarah.m@example.com', 8765432101, '2022-09-20', 'No significant health issues'),
(2, 'Michael Wilson', '1980-12-15', 'Male', 'O+', 'michael.w@example.com', 7654321092, '2022-08-10', 'High blood pressure'),
(3, 'Emma White', '1995-04-02', 'Female', 'B-', 'emma.white@example.com', 6543210983, '2021-12-05', 'Diabetes'),
(4, 'Daniel Davis', '1982-06-19', 'Male', 'AB+', 'daniel.d@example.com', 9876543210, '2022-10-01', 'No major health issues'),
(5, 'Sophia Robinson', '1993-01-30', 'Female', 'O-', 'sophia.r@example.com', 8765432102, '2022-11-15', 'No known issues');


INSERT INTO Donor (D_ID, D_Name, D_DoB, D_Gender, D_Blood_Type, D_Email, D_Phone_No, Last_Date_of_Donation, Medical_History) VALUES
(11, 'Ethan Harris', '1987-09-05', 'Male', 'B+', 'ethan.h@example.com', 7654321093, '2022-11-10', 'No significant health issues'),
(12, 'Olivia Martinez', '1992-12-18', 'Female', 'A-', 'olivia.m@example.com', 6543210982, '2022-10-05', 'No known issues'),
(13, 'Nathan Brooks', '1988-04-30', 'Male', 'O+', 'nathan.b@example.com', 9876543215, '2022-09-15', 'No major health issues'),
(14, 'Isabella King', '1996-07-20', 'Female', 'AB-', 'isabella.k@example.com', 8765432106, '2022-10-20', 'No significant health issues'),
(15, 'William Lee', '1983-01-10', 'Male', 'A+', 'william.l@example.com', 7654321097, '2022-11-05', 'No known issues');


INSERT INTO Donor (D_ID, D_Name, D_DoB, D_Gender, D_Blood_Type, D_Email, D_Phone_No, Last_Date_of_Donation, Medical_History) VALUES
(21, 'Emma Turner', '1982-06-18', 'Female', 'A+', 'emma.t@example.com', 7654321098, '2022-11-12', 'No major health issues'),
(22, 'Mason White', '1987-12-03', 'Male', 'O+', 'mason.w@example.com', 6543210987, '2022-10-15', 'No known issues'),
(23, 'Ava Martin', '1996-03-22', 'Female', 'B-', 'ava.m@example.com', 9876543216, '2022-09-28', 'No significant health issues'),
(24, 'Logan Garcia', '1985-09-10', 'Male', 'AB+', 'logan.g@example.com', 8765432107, '2022-11-03', 'High blood pressure'),
(25, 'Aria Rodriguez', '1993-01-28', 'Female', 'O-', 'aria.r@example.com', 7654321096, '2022-10-20', 'No known issues');


INSERT INTO Donor (D_ID, D_Name, D_DoB, D_Gender, D_Blood_Type, D_Email, D_Phone_No, Last_Date_of_Donation, Medical_History) VALUES
(26, 'Ava White', '1987-09-10', 'Female', 'A+', 'ava.w@example.com', 7654321091, '2022-11-08', 'No significant health issues'),
(27, 'Jack Martin', '1992-12-25', 'Male', 'O+', 'jack.m@example.com', 6543210980, '2022-10-25', 'No known issues'),
(28, 'Ella Brooks', '1996-04-22', 'Female', 'B-', 'ella.b@example.com', 9876543217, '2022-11-10', 'No major health issues'),
(29, 'Carter Garcia', '1984-09-30', 'Male', 'AB+', 'carter.g@example.com', 8765432108, '2022-09-15', 'No significant health issues'),
(30, 'Mia Rodriguez', '1993-02-28', 'Female', 'O-', 'mia.r@example.com', 7654321097, '2022-11-20', 'No known issues');


INSERT INTO Donor (D_ID, D_Name, D_DoB, D_Gender, D_Blood_Type, D_Email, D_Phone_No, Last_Date_of_Donation, Medical_History) VALUES
(31, 'Mia White', '1985-09-02', 'Female', 'A-', 'mia.w@example.com', 7654321091, '2022-11-12', 'No significant health issues'),
(32, 'Logan Martin', '1990-12-10', 'Male', 'O+', 'logan.m@example.com', 6543210980, '2022-10-25', 'No known issues'),
(33, 'Ella Brooks', '1997-04-15', 'Female', 'B-', 'ella.b@example.com', 9876543217, '2022-11-10', 'No major health issues'),
(34, 'Ethan Garcia', '1983-10-20', 'Male', 'AB+', 'ethan.g@example.com', 8765432108, '2022-09-15', 'No significant health issues'),
(35, 'Aria Rodriguez', '1994-05-28', 'Female', 'O-', 'aria.r@example.com', 7654321097, '2022-11-20', 'No known issues');


INSERT INTO Donor (D_ID, D_Name, D_DoB, D_Gender, D_Blood_Type, D_Email, D_Phone_No, Last_Date_of_Donation, Medical_History) VALUES
(36, 'Ethan Wilson', '1986-09-15', 'Male', 'A-', 'ethan.w@example.com', 7654321091, '2022-11-12', 'No significant health issues'),
(37, 'Avery Hall', '1993-12-25', 'Female', 'O+', 'avery.h@example.com', 6543210980, '2022-10-25', 'No known issues'),
(38, 'Aiden Brooks', '1998-04-22', 'Male', 'B-', 'aiden.b@example.com', 9876543217, '2022-11-10', 'No major health issues'),
(39, 'Scarlett Garcia', '1984-10-30', 'Female', 'AB+', 'scarlett.g@example.com', 8765432108, '2022-09-15', 'No significant health issues'),
(40, 'Elijah Rodriguez', '1995-02-28', 'Male', 'O-', 'elijah.r@example.com', 7654321097, '2022-11-20', 'No known issues');



-- For Blood_Bank Table

INSERT INTO Blood_Bank (Bank_ID, Bank_Name, Location, Bank_Email, Bank_Phone_No, Mgr_ID) VALUES
(1, 'City Blood Bank', 'New York', 'citybb@example.com', 1234567890, NULL),
(2, 'Metro Blood Center', 'Los Angeles', 'metrobc@example.com', 2345678901, NULL),
(3, 'Sunshine Blood Bank', 'Miami', 'sunshinebb@example.com', 3456789012, NULL),
(4, 'Central Blood Services', 'Chicago', 'centralbs@example.com', 4567890123, NULL),
(5, 'Golden State Blood Bank', 'San Francisco', 'goldenstatebb@example.com', 5678901234, NULL);


INSERT INTO Blood_Bank (Bank_ID, Bank_Name, Location, Bank_Email, Bank_Phone_No, Mgr_ID) VALUES
(6, 'North Blood Center', 'Seattle', 'northbc@example.com', 6789012346, NULL),
(7, 'South Blood Bank', 'San Diego', 'southbb@example.com', 7890123457, NULL),
(8, 'East Coast Blood Bank', 'New Jersey', 'eastcoastbb@example.com', 8901234568, NULL),
(9, 'West Blood Services', 'San Francisco', 'westbs@example.com', 9012345679, NULL),
(10, 'Midwest Blood Bank', 'St. Louis', 'midwestbb@example.com', 1234567890, NULL);


INSERT INTO Blood_Bank (Bank_ID, Bank_Name, Location, Bank_Email, Bank_Phone_No, Mgr_ID) VALUES
(11, 'Mountain Blood Center', 'Denver', 'mountainbc@example.com', 2345678902, NULL),
(12, 'Coastal Blood Bank', 'San Diego', 'coastalbb@example.com', 3456789013, NULL),
(13, 'Heartland Blood Services', 'Kansas City', 'heartlandbs@example.com', 4567890124, NULL),
(14, 'Pacific Blood Center', 'Seattle', 'pacificbc@example.com', 5678901235, NULL),
(15, 'Sunrise Blood Bank', 'Miami', 'sunrisebb@example.com', 6789012346, NULL);


INSERT INTO Blood_Bank (Bank_ID, Bank_Name, Location, Bank_Email, Bank_Phone_No, Mgr_ID) VALUES
(16, 'Cascade Blood Center', 'Portland', 'cascadebc@example.com', 2345678903, NULL),
(17, 'Gulf Coast Blood Bank', 'Houston', 'gulfcoastbb@example.com', 3456789014, NULL),
(18, 'Great Lakes Blood Services', 'Detroit', 'greatlakesbs@example.com', 4567890125, NULL),
(19, 'Sierra Blood Center', 'Reno', 'sierrabc@example.com', 5678901236, NULL),
(20, 'Sunset Blood Bank', 'Los Angeles', 'sunsetbb@example.com', 6789012347, NULL);


INSERT INTO Blood_Bank (Bank_ID, Bank_Name, Location, Bank_Email, Bank_Phone_No, Mgr_ID) VALUES
(21, 'Northern Blood Center', 'Anchorage', 'northernbc@example.com', 2345678903, NULL),
(22, 'Southern Blood Bank', 'Houston', 'southernbb@example.com', 3456789014, NULL),
(23, 'Eastern Blood Services', 'New York', 'easternbs@example.com', 4567890125, NULL),
(24, 'Western Blood Center', 'Los Angeles', 'westernbc@example.com', 5678901236, NULL),
(25, 'Mid-Atlantic Blood Bank', 'Philadelphia', 'midatlanticbb@example.com', 6789012347, NULL);


INSERT INTO Blood_Bank (Bank_ID, Bank_Name, Location, Bank_Email, Bank_Phone_No, Mgr_ID) VALUES
(26, 'Central Blood Center', 'Phoenix', 'centralbc@example.com', 2345678903, NULL),
(27, 'West Blood Bank', 'San Francisco', 'westbb@example.com', 3456789014, NULL),
(28, 'Southern Blood Services', 'Atlanta', 'southernbs@example.com', 4567890125, NULL),
(29, 'Great Lakes Blood Center', 'Cleveland', 'greatlakesbc@example.com', 5678901236, NULL),
(30, 'Sunshine Blood Services', 'Tampa', 'sunshinebs@example.com', 6789012347, NULL);



-- For Staff Table

INSERT INTO Staff (S_ID, Bank_ID, S_Name, S_Position, S_Email, S_Password, S_Phone_No) VALUES
(1, 1, 'John Brown', 'Manager', 'john.brown@example.com', 'password123', 9876543210),
(2, 2, 'Alice Davis', 'Nurse', 'alice.davis@example.com', 'nurse456', 8765432109),
(3, 3, 'Robert Miller', 'Manager', 'robert.r@example.com', 'reception789', 7654321098),
(4, 4, 'Emma Wilson', 'Technician', 'emma.wilson@example.com', 'tech987', 6543210987),
(5, 5, 'Michael Moore', 'Security', 'michael.moore@example.com', 'security123', 9876543212);


INSERT INTO Staff (S_ID, Bank_ID, S_Name, S_Position, S_Email, S_Password, S_Phone_No) VALUES
(11, 6, 'Sophie Taylor', 'Lab Technician', 'sophie.taylor@example.com', 'labtech123', 2345678901),
(12, 7, 'James Anderson', 'Manager', 'james.anderson@example.com', 'security456', 3456789012),
(13, 8, 'Grace Thomas', 'Nurse', 'grace.nurse@example.com', 'nurse789', 4567890123),
(14, 9, 'Robert Jackson', 'IT Specialist', 'robert.it@example.com', 'itspecialist123', 5678901234),
(15, 10, 'Emma Harris', 'Receptionist', 'emma.harris@example.com', 'reception567', 6789012345);


INSERT INTO Staff (S_ID, Bank_ID, S_Name, S_Position, S_Email, S_Password, S_Phone_No) VALUES
(16, 11, 'Henry Martin', 'Lab Technician', 'henry.martin@example.com', 'labtech456', 7890123456),
(17, 12, 'Sophia Thompson', 'Security', 'sophia.thompson@example.com', 'security789', 8901234567),
(18, 13, 'Michael Garcia', 'Nurse', 'michael.garcia@example.com', 'nurse123', 9012345678),
(19, 14, 'Emily Martinez', 'Manager', 'emily.martinez@example.com', 'itspecialist456', 1234567891),
(20, 15, 'Alexander Robinson', 'Receptionist', 'alexander.robinson@example.com', 'reception890', 2345678903);


INSERT INTO Staff (S_ID, Bank_ID, S_Name, S_Position, S_Email, S_Password, S_Phone_No) VALUES
(21, 16, 'Madison Clark', 'Lab Technician', 'madison.lab@example.com', 'labtech789', 7890123457),
(22, 17, 'William Rodriguez', 'Security', 'william.Rodriguez@example.com', 'security1234', 8901234568),
(23, 18, 'Evelyn Lewis', 'Nurse', 'evelyn.nurse@example.com', 'nurse4567', 9012345679),
(24, 19, 'Henry Lee', 'Manager', 'henry.lee@example.com', 'itspecialist789', 1234567892),
(25, 20, 'Olivia Walker', 'Receptionist', 'olivia.walker@example.com', 'reception1234', 2345678904);


INSERT INTO Staff (S_ID, Bank_ID, S_Name, S_Position, S_Email, S_Password, S_Phone_No) VALUES
(26, 21, 'Oliver Hall', 'Lab Technician', 'oliver.lab@example.com', 'labtech123', 7890123457),
(27, 22, 'Ava Allen', 'Security', 'ava.allen@example.com', 'security456', 8901234568),
(28, 23, 'Liam Young', 'Nurse', 'liam.nurse@example.com', 'nurse789', 9012345679),
(29, 24, 'Aria Adams', 'IT Specialist', 'aria.adams@example.com', 'itspecialist123', 5678901234),
(30, 25, 'Noah Hernandez', 'Receptionist', 'noah.hernandez@example.com', 'reception1234', 2345678904);


INSERT INTO Staff (S_ID, Bank_ID, S_Name, S_Position, S_Email, S_Password, S_Phone_No) VALUES
(31, 26, 'Aria King', 'Lab Technician', 'aria.king@example.com', 'labtech123', 7890123457),
(32, 27, 'Elijah Wright', 'Security', 'elijah.wright@example.com', 'security456', 8901234568),
(33, 28, 'Mia Brown', 'Nurse', 'mia.brown@example.com', 'nurse789', 9012345679),
(34, 29, 'Liam White', 'IT Specialist', 'liam.white@example.com', 'itspecialist123', 5678901234),
(35, 30, 'Ava Thompson', 'Receptionist', 'ava.thompson@example.com', 'reception1234', 2345678904);



-- For Blood_Inventory Table 

INSERT INTO Blood_Inventory (Bld_Bag_ID, D_ID, Bank_ID, Date_of_Donatn, Quantity, Price, Don_Status) VALUES
(1, 1, 1, '2022-11-01', 500, 560, 'Available'),
(2, 2, 2, '2022-10-15', 475, 530, 'Available'),
(3, 3, 3, '2022-11-05', 460, 510, 'Available'),
(4, 4, 4, '2022-10-20', 550, 610, 'Available'),
(5, 5, 5, '2022-11-12', 525, 545, 'Available');
	

INSERT INTO Blood_Inventory (Bld_Bag_ID, D_ID, Bank_ID, Date_of_Donatn, Quantity, Price, Don_Status) VALUES
(16, 11, 6, '2022-10-12', 500, 550, 'Available'),
(17, 12, 7, '2022-09-28', 450, 500, 'Available'),
(18, 13, 8, '2022-11-03', 500, 535, 'Available'),
(19, 14, 9, '2022-10-18', 480, 515, 'Available'),
(20, 15, 10, '2022-11-08', 490, 520, 'Available');


INSERT INTO Blood_Inventory (Bld_Bag_ID, D_ID, Bank_ID, Date_of_Donatn, Quantity, Price, Don_Status) VALUES
(26, 21, 11, '2022-11-08', 505, 555, 'Available'),
(27, 22, 12, '2022-10-25', 510, 570, 'Available'),
(28, 23, 13, '2022-11-10', 495, 525, 'Available'),
(29, 24, 14, '2022-09-15', 480, 505, 'Available'),
(30, 25, 15, '2022-11-20', 485, 510, 'Available');


INSERT INTO Blood_Inventory (Bld_Bag_ID, D_ID, Bank_ID, Date_of_Donatn, Quantity, Price, Don_Status) VALUES
(31, 26, 16, '2022-11-12', 520, 570, 'Available'),
(32, 27, 17, '2022-10-30', 490, 530, 'Available'),
(33, 28, 18, '2022-11-05', 475, 520, 'Available'),
(34, 29, 19, '2022-09-20', 505, 535, 'Available'),
(35, 30, 20, '2022-11-15', 480, 510, 'Available');


INSERT INTO Blood_Inventory (Bld_Bag_ID, D_ID, Bank_ID, Date_of_Donatn, Quantity, Price, Don_Status) VALUES
(36, 31, 21, '2022-11-15', 500, 550, 'Available'),
(37, 32, 22, '2022-11-01', 485, 510, 'Available'),
(38, 33, 23, '2022-11-08', 490, 540, 'Available'),
(39, 34, 24, '2022-09-25', 495, 555, 'Available'),
(40, 35, 25, '2022-11-10', 510, 570, 'Available');


INSERT INTO Blood_Inventory (Bld_Bag_ID, D_ID, Bank_ID, Date_of_Donatn, Quantity, Price, Don_Status) VALUES
(41, 36, 26, '2022-11-18', 490, 540, 'Available'),
(42, 37, 27, '2022-11-05', 495, 550, 'Available'),
(43, 38, 28, '2022-11-12', 500, 560, 'Available'),
(44, 39, 29, '2022-09-28', 505, 555, 'Available'),
(45, 40, 30, '2022-11-15', 510, 560, 'Available');


-- For Transfusion Table

INSERT INTO Transfusion (T_ID, Bag_ID, Rec_ID, T_Date, Quantity, T_time) VALUES
(1, 1, 1, '2022-11-10', 500, '14:30:00'),
(2, 2, 2, '2022-11-12', 475, '09:45:00'),
(3, 3, 3, '2022-10-25', 460, '16:20:00'),
(4, 4, 4, '2022-11-05', 550, '11:10:00'),
(5, 5, 5, '2022-11-15', 525, '13:45:00');


INSERT INTO Transfusion (T_ID, Bag_ID, Rec_ID, T_Date, Quantity, T_time) VALUES
(16, 16, 6, '2022-11-15', 500, '15:30:00'),
(17, 17, 7, '2022-10-30', 450, '10:45:00'),
(18, 18, 8, '2022-11-05', 500, '18:20:00'),
(19, 19, 9, '2022-09-20', 480, '12:10:00'),
(20, 20, 10, '2022-11-10', 490, '14:45:00');


INSERT INTO Transfusion (T_ID, Bag_ID, Rec_ID, T_Date, Quantity, T_time) VALUES
(21, 26, 21, '2022-11-18', 505, '16:30:00'),
(22, 27, 22, '2022-11-05', 510, '11:15:00'),
(23, 28, 23, '2022-11-12', 495, '14:45:00'),
(24, 29, 24, '2022-09-28', 480, '09:30:00'),
(25, 30, 25, '2022-11-15', 510, '13:00:00');




-- For Blood_Bank Table
-- Allocated Managers to Blood Banks


UPDATE Blood_Bank SET Mgr_ID = 1 WHERE Bank_ID = 1;


UPDATE Blood_Bank SET Mgr_ID = 3 WHERE Bank_ID = 3;


UPDATE Blood_Bank SET Mgr_ID = 12 WHERE Bank_ID = 7;


UPDATE Blood_Bank SET Mgr_ID = 19 WHERE Bank_ID = 14;


UPDATE Blood_Bank SET Mgr_ID = 24 WHERE Bank_ID = 19;

INSERT INTO Staff VALUES (36, 10, 'Apurv Supe', 'Administrator', 'apurv.supe@example.com', 'apurv123', 8639201745);
INSERT INTO Staff VALUES (37, 13, 'Arnav Khadkatkar', 'Administrator', 'arnav.khadkatkar@example.com', 'arnav123', 9436712085);
INSERT INTO Staff VALUES (38, 9, 'Chidrupee Kalle', 'Administrator', 'chidrupee.kalle@example.com', 'chidrupee123', 9257813046);
INSERT INTO Staff VALUES (39, 8, 'Surab Sebait', 'Administrator', 'surab.sebait@example.com', 'surab123', 8946321750);


INSERT INTO Staff VALUES (40, 10, 'Apurv Supe', 'IT Specialist', 'apurv1.supe@example.com', 'apurv123', 8793542160);
INSERT INTO Staff VALUES (41, 13, 'Arnav Khadkatkar', 'IT Specialist', 'arnav1.khadkatkar@example.com', 'arnav123', 8793542160);
INSERT INTO Staff VALUES (42, 9, 'Chidrupee Kalle', 'IT Specialist', 'chidrupee1.kalle@example.com', 'chidrupee123', 8149270653);
INSERT INTO Staff VALUES (43, 8, 'Surab Sebait', 'IT Specialist', 'surab1.sebait@example.com', 'surab123', 9378026541);

-- select * from staff;
-- select * from blood_bank;

-- Trigger-Invoking Data

select * from donor;

-- Records with donors under 18 years old
INSERT INTO Donor (D_ID, D_Name, D_DoB, D_Gender, D_Blood_Type, D_Email, D_Phone_No, Last_Date_of_Donation, Medical_History) VALUES
(41, 'Underage Donor 1', '2008-01-15', 'Male', 'A+', 'underage1@example.com', 1234567890, '2022-11-01', 'No health issues'),
(42, 'Underage Donor 2', '2007-03-20', 'Female', 'B-', 'underage2@example.com', 2345678901, '2022-10-15', 'No known issues'),
(43, 'Underage Donor 3', '2010-05-10', 'Male', 'O+', 'underage3@example.com', 3456789012, '2022-11-05', 'No significant health issues');

-- Records to invoke the trigger and update Last_Date_of_Donation in Donor table
INSERT INTO Blood_Inventory (Bld_Bag_ID, D_ID, Bank_ID, Date_of_Donatn, Quantity, Price, Don_Status) VALUES
(46, 31, 21, '2023-03-20', 500, 550, 'Available'),
(47, 32, 22, '2023-04-18', 495, 540, 'Available'),
(48, 33, 23, '2023-03-15', 490, 535, 'Available');

-- Records to invoke the trigger and update status in Blood_Inventory table
INSERT INTO Transfusion (Bag_ID, Rec_ID, T_Date, Quantity, T_time) VALUES
(31, 20, '2022-11-18', 2, '16:30:00'),
(32, 21, '2022-11-05', 1, '11:15:00'),
(33, 22, '2022-11-12', 3, '14:45:00');

-- select * from blood_inventory;
-- select * from recipient;

-- For 90 days Checking

INSERT INTO Donor (D_ID, D_Name, D_DoB, D_Gender, D_Blood_Type, D_Email, D_Phone_No, Last_Date_of_Donation, Medical_History) VALUES
 (44, 'Early Donor', '1990-12-10', 'Male', 'O+',  'early@example.com', 7843642512, '2023-11-19', 'No Medical Issues');
 
INSERT INTO Blood_Inventory (Bld_Bag_ID, D_ID, Bank_ID, Date_of_Donatn, Quantity, Price, Don_Status) VALUES
 (47, 44, 20, '2023-11-23', 2, 50, 'Available');