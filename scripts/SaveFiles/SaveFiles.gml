function SaveFiles()
{
	var _uid = string(irandom(999999));

	var _image = _uid + ".png";                      // Set the file name of the image to {time}.png
	screen_save(_image);                             // Save a screenshot of the game to that file
											         
	SaveToDropbox(_image);                           // Save the file to Droppboxx
											         
	var _text = _uid + ".txt";                       // Set the file name of the text to {time}.txt
	var _file = file_text_open_write(_text);         // Create the text file and open it to write to it
											         
	var _info = os_get_info();                       // Get information about the OS the game is running on
	var _gpu = _info[? "video_adapter_description"];
	file_text_write_string(_file, _gpu);             // Write information about the graphics card to the file
	ds_map_destroy(_info);                           // Destroy the DS Map returned by os_get_info()
											         
	file_text_write_string(_file, "\n");             // Write new line to file
											         
	var _str = get_string("Bug Report:", "");        // Get a string from the user
	file_text_write_string(_file, _str);             // Write that string to the file
	file_text_close(_file);                          // Close the file
											         
	SaveToDropbox(_text);                            // Save the file to Dropbox
}