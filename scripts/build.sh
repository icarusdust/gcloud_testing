FILE=$(awk 1 ORS='\\n' $CM_BUILD_DIR/flavors_testing/ios/Runner/creds.json)
curl -H "Content-Type: application/json" -H "x-auth-token: kjTAfwKBKgeHyPLOVqAd6AzkEycsuY-alno6Zq8Ezzo" \
--data '{
    "appId": "625a9cbf5d82902e63ca38bf", 
    "workflowId": "ios-release",
    "branch": "master", 
    "environment": { 
        "variables": { 
            "APP_STORE_ID": "1565355012",
            "GCLOUD_CREDENTIALS": "$FILE",
            "BUNDLE_ID": "io.nevercode.flutterapp.dev",
            "XCODE_SCHEME": "dev", 
            "XCODE_CONFIG": "Release-dev",
            "ENTRY_POINT": "lib/main_dev.dart"
        }
    }
}' \
https://api.codemagic.io/builds