CREATE TABLE tblAsset
(
  AssetID          INT          NOT NULL,
  AssetName        VARCHAR(100) NULL    ,
  AssetDescription VARCHAR(255) NULL    ,
  AssetType        VARCHAR(255) NULL    ,
  PRIMARY KEY (AssetID)
);

CREATE TABLE tblAssetTag
(
  TagID   INT         NOT NULL,
  TagName VARCHAR(50) NULL    ,
  PRIMARY KEY (TagID)
);

CREATE TABLE tblCompany
(
  CmpID     INT          NOT NULL,
  CmpBranch VARCHAR(255) NULL    ,
  CmpLoc    VARCHAR(255) NULL    ,
  PRIMARY KEY (CmpID)
);

CREATE TABLE tblEmployee
(
  EmployeeID INT          NOT NULL,
  LName      VARCHAR(100) NULL    ,
  FName      VARCHAR(100) NULL    ,
  MName      VARCHAR(100) NULL    ,
  ManagerID  INT          NOT NULL,
  isActive   INT          NULL     DEFAULT 1,
  isEmployee INT          NULL     DEFAULT 0,
  PRIMARY KEY (EmployeeID)
);

CREATE TABLE tblEmployeeAssetTag
(
  EmployeeID INT NOT NULL,
  AssetID    INT NOT NULL,
  TagID      INT NOT NULL,
  PRIMARY KEY (EmployeeID, AssetID, TagID)
);

CREATE TABLE tblManager
(
  ManagerID INT          NOT NULL,
  LName     VARCHAR(100) NULL    ,
  FName     VARCHAR(100) NULL    ,
  MName     VARCHAR(100) NULL    ,
  CmpID     INT          NULL    ,
  CmpID     INT          NOT NULL,
  PRIMARY KEY (ManagerID)
);

ALTER TABLE tblEmployee
  ADD CONSTRAINT FK_tblManager_TO_tblEmployee
    FOREIGN KEY (ManagerID)
    REFERENCES tblManager (ManagerID);

ALTER TABLE tblEmployeeAssetTag
  ADD CONSTRAINT FK_tblEmployee_TO_tblEmployeeAssetTag
    FOREIGN KEY (EmployeeID)
    REFERENCES tblEmployee (EmployeeID);

ALTER TABLE tblEmployeeAssetTag
  ADD CONSTRAINT FK_tblAsset_TO_tblEmployeeAssetTag
    FOREIGN KEY (AssetID)
    REFERENCES tblAsset (AssetID);

ALTER TABLE tblEmployeeAssetTag
  ADD CONSTRAINT FK_tblAssetTag_TO_tblEmployeeAssetTag
    FOREIGN KEY (TagID)
    REFERENCES tblAssetTag (TagID);

ALTER TABLE tblManager
  ADD CONSTRAINT FK_tblCompany_TO_tblManager
    FOREIGN KEY (CmpID)
    REFERENCES tblCompany (CmpID);