/// @description Insert description here
// You can write your code in this editor
randomize();
falling=false;
acc=global.playerGrav;
xSpdAcc=1;
xSpd=0;
ySpdMax=-25;
ySpdMin=-15;
control=true;
boundarySndPlayed=true;
vspeed=-30;
hspeed=round(random_range(-50,50));
isWinged=false;
isWingedAlarm=false;
isBubbled=false;
isBubbledAlarm=false;

landing_particle_system = part_system_create();
landing_particle_type = part_type_create();


part_type_shape(landing_particle_type, pt_shape_spark); 
part_type_size(landing_particle_type, 0.5, 1.5, 0, 0); 
part_type_color3(landing_particle_type, c_yellow, c_orange, c_red); 
part_type_alpha3(landing_particle_type, 1, 0.8, 0); 
part_type_speed(landing_particle_type, 5, 10, 0, 0); 
part_type_direction(landing_particle_type, 0, 360, 0, 0); 
part_type_gravity(landing_particle_type, 0.3, 270); 
part_type_life(landing_particle_type, 30, 60); 
