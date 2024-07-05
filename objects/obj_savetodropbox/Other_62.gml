/// @desc Show result when received

var _status = ds_map_find_value(async_load, "status");    // Less than 0 for an error, 0 for success and 1 if content is being downloaded
if _status == 0
{
	var _r_str = ds_map_find_value(async_load, "result"); // The data received (string only)
	show_debug_message(_r_str);                           // Outut string to debug log
	
	var _id = ds_map_find_value(async_load, "id");
	if _id == access_token_request                        // The id which was returned from the command
	{
		var _map = json_decode(_r_str);                   // A DS Map containing the result data
		var _access_token = _map[? "access_token"];       // The access token as a string
		
		access_token = _access_token;                     // Update the access token
		if access_token != undefined                      // If an access token was received
		{
			SaveFiles();                                  // Save the files
		}
		
		ds_map_destroy(_map);                             // Destroy the DS Map to avoid a memory leak
	}
}