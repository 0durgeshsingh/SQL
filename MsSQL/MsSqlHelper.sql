-- Create Table 

  CREATE TABLE Users (
    id INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(30),
    Password NVARCHAR(30),
    UserName Varchar(30),
);
