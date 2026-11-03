# Test Plan – Fictional LOS

## 1. Objective
Validate the key applicant journey, business rules, API behavior, and persistence of data for a fictional LOS.

## 2. Scope
**In scope**
- Applicant onboarding and field validations
- Loan application creation and submission
- Eligibility validations
- Document presence checks
- Application status transitions
- Approval, rejection, and disbursement rules
- REST API positive and negative tests
- SQL data consistency checks

**Out of scope**
- Real credit bureau integration
- Real identity verification
- Payment gateway and actual fund transfer
- Performance, security penetration, and regulatory certification testing

## 3. Test approach
- Requirement-based test design
- Positive, negative, boundary-value, and equivalence-partition testing
- API request/response validation
- Database checks for application persistence and status
- Regression testing after changes

## 4. Test environment
- Browser: record browser and version when executing
- API client: Postman
- Database: local SQL Server or compatible practice database
- Test data: fictional data only

## 5. Entry criteria
- Requirements reviewed
- Test environment available
- Build/API endpoint accessible
- Test data prepared

## 6. Exit criteria
- All planned tests executed or marked blocked/not run
- Critical and high defects reported
- Results and evidence recorded
- Known risks documented

## 7. Deliverables
- Test scenarios and test cases
- Postman collection and API test approach
- SQL validation queries
- Defect reports
- Execution summary

## 8. Risks
- API endpoints may differ from this template
- Database schema may differ from the sample schema
- No live application is included in this repository
