# API Testing Approach

## Important
The Postman collection is a request template, not a live working integration. Configure `baseUrl` to an API/mock server that you own or are authorized to test. The routes and payloads below are proposed for this fictional exercise.

## Proposed endpoints
| Method | Endpoint | Purpose | Expected success |
|---|---|---|---|
| POST | /applications | Create an application | 201 |
| GET | /applications/{applicationId} | Retrieve application | 200 |
| PATCH | /applications/{applicationId}/status | Update status | 200 |

## What to validate
- HTTP status code
- Response content type
- Required response fields
- Application ID is not empty
- Initial status is `SUBMITTED`
- Error response for invalid or unknown IDs
- Required-field and boundary validation
- Status transition rules
- Response time as an observation (define a threshold only when requirements specify one)

## Suggested Postman workflow
1. Create an environment with `baseUrl` and `token`.
2. Set `baseUrl` to your authorized mock/test server.
3. If authentication is required, set a valid test token.
4. Run the collection using the Collection Runner.
5. Save actual results and screenshots after execution.
