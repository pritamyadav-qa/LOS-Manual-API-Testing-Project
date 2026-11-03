# Business Requirements – Fictional LOS

## 1. Purpose
The system allows an applicant to submit a personal loan application and allows an operations user to review and decide the application.

## 2. Actors
- Applicant
- Operations reviewer
- System administrator

## 3. Main workflow
1. Applicant enters personal details.
2. Applicant enters employment and income details.
3. Applicant selects a loan amount and tenure.
4. Applicant uploads required documents.
5. System validates mandatory fields and eligibility.
6. Applicant submits the application.
7. Operations reviewer checks the application.
8. Reviewer approves or rejects the application.
9. Approved loan may be marked as disbursed.

## 4. Functional requirements
| ID | Requirement |
|---|---|
| FR-01 | Applicant can enter name, date of birth, mobile number, PAN, and address. |
| FR-02 | Applicant can enter monthly income and employment type. |
| FR-03 | Applicant can request a loan between ₹50,000 and ₹2,000,000. |
| FR-04 | System validates mandatory fields and formats. |
| FR-05 | System checks minimum age of 21 years. |
| FR-06 | System checks minimum monthly income of ₹25,000 for this exercise. |
| FR-07 | Applicant must provide PAN and address proof. |
| FR-08 | Successful submission generates a unique application ID. |
| FR-09 | New applications have status `SUBMITTED`. |
| FR-10 | Reviewer can move an application to `UNDER_REVIEW`. |
| FR-11 | Reviewer can approve or reject an application with a decision reason. |
| FR-12 | Only approved applications can be disbursed. |

## 5. Non-functional considerations
- Do not expose full PAN or sensitive applicant details in logs.
- APIs should return appropriate HTTP status codes.
- Invalid requests should return clear validation messages.
- Application data should be traceable using a unique application ID.

## 6. Assumptions and exclusions
All rules, thresholds, statuses, and data in this repository are fictional and intended only for learning. Real lending policies vary by institution and product.
