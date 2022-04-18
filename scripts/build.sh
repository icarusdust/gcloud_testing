# FILE=$(awk 1 ORS='\\n' /android/creds.json)
# curl -H "Content-Type: application/json" -H "x-auth-token: kjTAfwKBKgeHyPLOVqAd6AzkEycsuY-alno6Zq8Ezzo" \
# --data '{
#     "appId": "625beccddfd8ade9df248265", 
#     "workflowId": "android-workflow",
#     "branch": "master", 
#     "environment": { 
#         "variables": { 
#             "GCLOUD_SERVICE_ACCOUNT_CREDENTIALS": "$FILE"
#         }
#     }
# }' \
# https://api.codemagic.io/builds
# export GCLOUD_SERVICE_ACCOUNT_CREDENTIALS=`jq @json < android/creds.json`

# echo $GCLOUD_SERVICE_ACCOUNT_CREDENTIALS 
# "{\"service_account\":\"value\"}"

export GCLOUD_SERVICE_ACCOUNT_CREDENTIALS=`jq @json < service_account_test.json`

curl -H "Content-Type: application/json" -H "x-auth-token: kjTAfwKBKgeHyPLOVqAd6AzkEycsuY-alno6Zq8Ezzo" \
--data '{
    "environment": { 
        "variables": { 
            "GCLOUD_CREDENTIALS": $GCLOUD_SERVICE_ACCOUNT_CREDENTIALS
        }
    }
}' \
https://api.codemagic.io/builds