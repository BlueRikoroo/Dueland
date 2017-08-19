///login_callback(argument0)


switch(argument0){
case e_ok:
    break;
case e_already_logged_in: case e_userloggedin:
    show_message("You are already logged in");
    break;
case e_banned: case e_global_ban: case e_local_ban:
    show_message("Username is banned");
    break;
case e_wrongpass:
    show_message("Password Incorrect");
    break;
case e_noconnection:
    show_message("Could not connect to server");
    break;
default:
    show_message(gms_login_error_tostring(argument0));
    break;
}
