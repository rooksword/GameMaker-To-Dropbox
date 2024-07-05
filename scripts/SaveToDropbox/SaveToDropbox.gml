function SaveToDropbox(_fname)
{
	var _file_data = buffer_load(_fname);

	var _http_headers = ds_map_create();
	ds_map_add(_http_headers, "Authorization", "Bearer " + access_token);
	var _api_arg = {
		path: "/" + _fname,
		mode: "add",
		autorename: true,
		mute: false,
		strict_conflict: false
	};
	_api_arg = json_stringify(_api_arg);
	ds_map_add(_http_headers, "Dropbox-API-Arg", _api_arg);
	ds_map_add(_http_headers, "Content-Type", "application/octet-stream");

	http_request("https://content.dropboxapi.com/2/files/upload", "POST", _http_headers, _file_data);
	
	ds_map_destroy(_http_headers);
	buffer_delete(_file_data);
	file_delete(_fname);
}