-- 1. Verify application and applicant details
SELECT la.ApplicationId, a.FullName, la.ProductCode, la.RequestedAmount,
       la.Status, la.CreatedAt
FROM LoanApplication la
JOIN Applicant a ON a.ApplicantId = la.ApplicantId
WHERE la.ApplicationId = 100001;

-- 2. Check duplicate application IDs (should return zero rows)
SELECT ApplicationId, COUNT(*) AS RecordCount
FROM LoanApplication
GROUP BY ApplicationId
HAVING COUNT(*) > 1;

-- 3. Identify applications with missing required document types
SELECT la.ApplicationId
FROM LoanApplication la
LEFT JOIN ApplicationDocument pan
  ON pan.ApplicationId = la.ApplicationId AND pan.DocumentType = 'PAN'
LEFT JOIN ApplicationDocument addr
  ON addr.ApplicationId = la.ApplicationId AND addr.DocumentType = 'ADDRESS_PROOF'
GROUP BY la.ApplicationId
HAVING COUNT(pan.DocumentId) = 0 OR COUNT(addr.DocumentId) = 0;

-- 4. Validate status values
SELECT ApplicationId, Status
FROM LoanApplication
WHERE Status NOT IN ('SUBMITTED','UNDER_REVIEW','APPROVED','REJECTED','DISBURSED');

-- 5. Check amounts outside the fictional business range
SELECT ApplicationId, RequestedAmount
FROM LoanApplication
WHERE RequestedAmount < 50000 OR RequestedAmount > 2000000;

-- 6. Verify only approved applications are disbursed
SELECT ApplicationId, Status
FROM LoanApplication
WHERE Status = 'DISBURSED'
  AND DecisionReason IS NULL; -- Review result against the project's decision/disbursement audit rule.
