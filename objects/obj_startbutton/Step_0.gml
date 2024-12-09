/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if (mouse_check_button_pressed(mb_left)) {
    if (mouse_x > button_x && mouse_x < button_x + sprite_width && mouse_y > button_y && mouse_y < button_y + sprite_height) {
        room_goto(rm_main);  
    }
}




