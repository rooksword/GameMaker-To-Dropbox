/// @desc Update position and save

x = mouse_x;
y = mouse_y;

if keyboard_check_pressed(ord("S"))
{
	RetreiveAccessToken(); // Trade the refresh token for a new short-lived access token
}