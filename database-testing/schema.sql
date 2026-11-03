-- Fictional LOS practice schema. Run only in a local practice database.
CREATE TABLE Applicant (
    ApplicantId INT IDENTITY(1,1) PRIMARY KEY,
    FullName NVARCHAR(100) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Mobile VARCHAR(10) NOT NULL,
    PanMasked VARCHAR(10) NOT NULL,
    MonthlyIncome DECIMAL(12,2) NOT NULL,
    CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);

CREATE TABLE LoanApplication (
    ApplicationId INT IDENTITY(100001,1) PRIMARY KEY,
    ApplicantId INT NOT NULL,
    ProductCode VARCHAR(30) NOT NULL,
    RequestedAmount DECIMAL(12,2) NOT NULL,
    TenureMonths INT NOT NULL,
    Status VARCHAR(20) NOT NULL,
    DecisionReason NVARCHAR(500) NULL,
    CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    UpdatedAt DATETIME2 NULL,
    CONSTRAINT FK_LoanApplication_Applicant
        FOREIGN KEY (ApplicantId) REFERENCES Applicant(ApplicantId),
    CONSTRAINT CK_LoanApplication_Amount
        CHECK (RequestedAmount BETWEEN 50000 AND 2000000),
    CONSTRAINT CK_LoanApplication_Status
        CHECK (Status IN ('SUBMITTED','UNDER_REVIEW','APPROVED','REJECTED','DISBURSED'))
);

CREATE TABLE ApplicationDocument (
    DocumentId INT IDENTITY(1,1) PRIMARY KEY,
    ApplicationId INT NOT NULL,
    DocumentType VARCHAR(30) NOT NULL,
    VerificationStatus VARCHAR(20) NOT NULL,
    CONSTRAINT FK_ApplicationDocument_LoanApplication
        FOREIGN KEY (ApplicationId) REFERENCES LoanApplication(ApplicationId)
);
