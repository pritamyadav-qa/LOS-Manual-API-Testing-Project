# Sample Defect Reports

> These are illustrative defect examples for learning. They are not defects observed in a real employer or client application. Replace with defects you personally reproduce during practice.

## BUG-001 – Application accepts loan amount above configured maximum
- **Module:** Loan Details
- **Severity:** Major (proposed)
- **Priority:** High (proposed)
- **Environment:** Practice environment – record actual build/browser
- **Precondition:** Applicant has completed mandatory details.
- **Steps:**
  1. Open the loan application form.
  2. Enter requested amount `2000001`.
  3. Submit or continue.
- **Expected:** System rejects amount above fictional maximum ₹2,000,000.
- **Actual:** Record actual behavior after execution; do not assume this defect exists.
- **Status:** Example template – Not Reproduced

## BUG-002 – Disbursement allowed before approval
- **Module:** Application Status
- **Severity:** Critical (proposed)
- **Priority:** High (proposed)
- **Precondition:** Application exists with status `SUBMITTED`.
- **Steps:**
  1. Attempt to update status to `DISBURSED`.
  2. Inspect response and stored status.
- **Expected:** Transition is rejected; only `APPROVED` can move to `DISBURSED`.
- **Actual:** Record actual behavior after execution.
- **Status:** Example template – Not Reproduced

## Defect reporting checklist
- Clear title
- Environment/build
- Preconditions
- Numbered reproduction steps
- Expected result
- Actual result
- Severity and priority with rationale
- Screenshot, request/response, or query evidence
- Reproducibility
