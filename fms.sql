CREATE TABLE Manager (
    ManagerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
    -- Add other relevant manager details here
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Manager(ManagerID)
    -- Add other relevant employee details here
);

CREATE TABLE Asset (
    AssetID INT PRIMARY KEY,
    AssetName VARCHAR(100),
    AssetDescription VARCHAR(255),
    -- Add other relevant asset details here
);

CREATE TABLE AssetTag (
    TagID INT PRIMARY KEY,
    TagName VARCHAR(50)
);

CREATE TABLE EmployeeAssetTag (
    EmployeeID INT,
    AssetID INT,
    TagID INT,
    PRIMARY KEY (EmployeeID, AssetID, TagID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (AssetID) REFERENCES Asset(AssetID),
    FOREIGN KEY (TagID) REFERENCES AssetTag(TagID)
);