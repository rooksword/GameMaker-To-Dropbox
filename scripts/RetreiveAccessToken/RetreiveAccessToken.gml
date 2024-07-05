function RetreiveAccessToken()
{
	access_token_request = http_post_string("https://api.dropbox.com/oauth2/token",
		"refresh_token=" + refresh_token +
		"&grant_type=refresh_token" +
		"&client_id=" + app_key +
		"&client_secret=" + app_secret);
}