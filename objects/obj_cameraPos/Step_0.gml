/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_playerA)&&instance_exists(obj_playerB)){
	goalPos=(obj_playerA.y+obj_playerB.y)/2+150;
}
else if(instance_exists(obj_playerA)){
	goalPos=obj_playerA.y+150;
}
else if(instance_exists(obj_playerB)){
	goalPos=obj_playerB.y+150;
}
else{
	goalPos=982;
}
approximateGoalPos=round((goalPos-y)/100)*100;
ydir=sign(approximateGoalPos);
y+=ydir*10;
cam_width=camera_get_view_width(view_camera[0]);
cam_height=camera_get_view_height(view_camera[0]);
x_follow=x-cam_width/2;
y_follow=y-cam_height/2;
if(x<cam_width/2){
	x_follow=0;
}
if(x>room_width-cam_width/2){
	x_follow=room_width-cam_width;
}
if(y<cam_height/2){
	y_follow=0;
}
if(y>room_height-cam_height/2){
	y_follow=room_height-cam_height;
}
camera_set_view_pos(view_camera[0],x_follow,y_follow);

if (shake_duration > 0) {
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);
    camera_set_view_pos(view_camera[0], cam_x + random_range(-shake_intensity, shake_intensity), cam_y + random_range(-shake_intensity, shake_intensity));
    shake_duration -= 1;
    
    if (shake_duration <= 0) {
        var reset_cam_x = camera_get_view_x(view_camera[0]);
        var reset_cam_y = camera_get_view_y(view_camera[0]);
        camera_set_view_pos(view_camera[0], reset_cam_x, reset_cam_y);
    }
}
