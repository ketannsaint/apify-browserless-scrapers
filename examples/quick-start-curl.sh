#!/usr/bin/env bash
# Zero-start-fee browserless Apify Actors — 1-request synchronous endpoints
curl -X POST "https://api.apify.com/v2/acts/leopoldsaint~google-maps-leads-scraper/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"searchQueries":["dentists in Austin TX"],"extractContacts":true,"maxTotalPlaces":20}'

curl -X POST "https://api.apify.com/v2/acts/leopoldsaint~businesses-without-websites-leads/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"searchQueries":["plumbers in Austin TX"],"requirePhone":true,"verifyWebsitesLive":true,"maxLeads":15}'

curl -X POST "https://api.apify.com/v2/acts/leopoldsaint~sec-edgar-form-d-funding-scraper/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H "Content-Type: application/json" \
  -d '{"daysBack":14,"excludePooledFunds":true,"maxFilings":20}'
