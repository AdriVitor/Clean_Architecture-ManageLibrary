CREATE DATABASE ManageLibrary;

USE ManageLibrary;

CREATE TABLE [BOOK](
    [ID] INT NOT NULL IDENTITY(1,1),
    [NAME] NVARCHAR(100) NOT NULL,
    [AUTHOR] NVARCHAR(100),
    [AVAILABLEQUANTITY] INT,

    CONSTRAINT PK_BOOK PRIMARY KEY([ID])
);

CREATE TABLE [CUSTOMER](
    [ID] INT NOT NULL IDENTITY(1,1),
    [NAME] NVARCHAR(100) NOT NULL,
    [CPF] VARCHAR(11) NOT NULL,
    [PHONE] VARCHAR(11),
    [EMAIL] NVARCHAR(100)

    CONSTRAINT PK_CUSTOMER PRIMARY KEY([ID])
);

CREATE TABLE LOANS(
    [ID] INT NOT NULL IDENTITY(1,1),
    [IDCUSTOMER] INT NOT NULL,
    [IDBOOK] INT NOT NULL,
    [DATE] DATETIME

    CONSTRAINT PK_LOAN PRIMARY KEY([ID]),
    CONSTRAINT FK_CUSTOMER FOREIGN KEY ([IDCUSTOMER]) REFERENCES [CUSTOMER]([ID]),
    CONSTRAINT FK_BOOK FOREIGN KEY ([IDBOOK]) REFERENCES [BOOK]([ID])
);

--------------------------------------------------------