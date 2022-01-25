%dw 2.0
output application/json
---
{
    "type": "enriched-http-event",
    "duration": p('anypoint.platform.apis.analytics.query.duration'),
    "aggregators": [
        {
            "dimension": "api_id",
            "order": "descending",
            "aggregators": [
        {
            "dimension": "client_id",
            "order": "descending"
        },
        {
            "dimension": "city",
            "order": "descending"
        }]
        },
        {
            "dimension": "client_id",
            "order": "descending"
        }
    ],
	"include_policy_violation": true
}