# Loan Origination System (LOS) – Manual & API Testing Portfolio

> **Portfolio practice project.** This is a self-directed QA practice project using a fictional loan application. It is not a representation of confidential Mphasis, YES BANK, or any employer/client system.

## Project objective
Demonstrate a structured QA approach for a fictional Loan Origination System (LOS), covering customer onboarding, loan application, eligibility, document checks, credit assessment, approval, and disbursement.

## Skills demonstrated
- Requirement analysis and test scenario design
- Functional, negative, boundary, integration, regression, and end-to-end testing
- REST API test design using Postman
- SQL-based data validation
- Defect reporting and test execution documentation
- Git/GitHub documentation practices

## Fictional business rules
1. Applicant must be at least 21 years old.
2. Applicant must have a valid 10-digit mobile number.
3. Requested loan amount must be between ₹50,000 and ₹2,000,000.
4. Applicant must provide PAN and address proof.
5. Loan-to-income eligibility is represented in this practice project by a fictional minimum monthly income of ₹25,000.
6. A submitted application starts in `SUBMITTED`; it may move to `UNDER_REVIEW`, `APPROVED`, `REJECTED`, or `DISBURSED`.
7. Only an `APPROVED` application can be disbursed.

These rules are invented for this portfolio exercise and must not be presented as real bank policy.

## Repository structure
```text
LOS-Manual-API-Testing-Project/
├── README.md
├── requirements/
│   └── business-requirements.md
├── test-plan/
│   └── test-plan.md
├── test-scenarios/
│   └── test-scenarios.csv
├── test-cases/
│   └── test-cases.csv
├── api-testing/
│   ├── API-test-approach.md
│   ├── los-api.postman_collection.json
│   └── openapi.yaml
├── database-testing/
│   ├── schema.sql
│   └── validation-queries.sql
├── defect-management/
│   └── sample-defect-reports.md
└── test-execution/
    └── execution-summary-template.md
```

## How to use
1. Read `requirements/business-requirements.md`.
2. Review the test plan and scenarios.
3. Execute the test cases against a test application or a mock environment you control.
4. Configure the Postman collection's `baseUrl` and `token` variables for your own mock/test API.
5. Run the SQL scripts in a local practice database after creating the schema and inserting your own fictional test data.
6. Record actual results, evidence, defects, and execution status. Do not mark tests as passed unless you execute them.

## Important honesty note
The repository contains test designs, sample data structures, API request templates, and illustrative defect examples. It does not claim that a live banking application or production API was tested. Update execution results only after performing the tests yourself.

## Suggested GitHub repository description
Manual and API testing portfolio for a fictional Loan Origination System (LOS), including test plan, test cases, Postman collection, SQL validation, and sample defect reports.
