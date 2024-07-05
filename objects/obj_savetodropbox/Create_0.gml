/// @desc Variables

// Get these two values from the Dropbox developer console

app_key = "v6u4574by8mltbc";
app_secret = "9p7vmv13zllw7dp";

/*

Go to this url (replace <APP KEY>): https://www.dropbox.com/oauth2/authorize?client_id=<APP_KEY>&response_type=code&token_access_type=offline

Then login and note down the authorization code

Run this Curl command at reqbin.com/curl to get the refresh token

curl
-d code=Su9sF3iI6_UAAAAAAAAAGP2X1ch9EyIyi6mbDLMCbc8
-d grant_type=authorization_code
-d client_id=v6u4574by8mltbc
-d client_secret=9p7vmv13zllw7dp
https://api.dropbox.com/oauth2/token

*/

refresh_token = "OI651Yt1mt4AAAAAAAAAASSn-aVIbIbI6y77Y83MMtzxQfk6G3zTULsiTIICgZM1";

// Will be undefined initially until the refresh token is exchanged for a short-lived access token

access_token_request = undefined;
access_token = undefined;