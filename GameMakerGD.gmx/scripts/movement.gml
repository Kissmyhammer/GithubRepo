if(keyboard_check(vk_right)){
    phy_angular_velocity=0;
    phy_rotation+=10;
}

if(keyboard_check(vk_left)){
    phy_angular_velocity=0;
    phy_rotation-=10;
}

if(keyboard_check(vk_up) && Player1.controllAble == true){
    physics_apply_local_force(0, 0, 0, -100 * speed_var);
}

if(keyboard_check(vk_down) && Player1.controllAble == true){
    physics_apply_local_force(0, 0, 0, 75 * speed_var);
}
if(keyboard_check(vk_control) && !Player1.jam ){
   if canfire{
        xpos = x + lengthdir_x(20, -phy_rotation +90); // or direction
        ypos = y + lengthdir_y(20, -phy_rotation +90);
        with (instance_create(xpos,ypos,bullet)){
            phy_rotation=other.phy_rotation;
            physics_apply_local_impulse(0, 0, 0, -100);
        }
        alarm[2]=10;
        canfire=false;
    }
}


