/// @desc Variables

// Get these two values from the Dropbox developer console

app_key = "";
app_secret = "";

/*

Go to this url (replace <APP KEY>): https://www.dropbox.com/oauth2/authorize?client_id=<APP_KEY>&response_type=code&token_access_type=offline

Then login and note down the authorization code

Run this Curl command at reqbin.com/curl to get the refresh token

curl
-d code=<AUTHORIZATION CODE>
-d grant_type=authorization_code
-d client_id=<APP KEY>
-d client_secret=<APP SECRET>
https://api.dropbox.com/oauth2/token

*/

refresh_token = "";

// Will be undefined initially until the refresh token is exchanged for a short-lived access token

access_token_request = undefined;
access_token = undefined;