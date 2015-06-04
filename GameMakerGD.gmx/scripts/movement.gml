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
if(keyboard_check(vk_control) && !Player1.jam && !Player1.dualActive){
   if canfire{
        xpos = x + lengthdir_x(20, -phy_rotation +90); // or direction
        ypos = y + lengthdir_y(20, -phy_rotation +90);
        with (instance_create(xpos,ypos,bullet)){
            phy_rotation=other.phy_rotation;
            physics_apply_local_impulse(0, 0, 0, -100);
        }
        alarm[2]= Player1.fireRate;
        canfire=false;
    }
}
if(keyboard_check(vk_control) && !Player1.jam && Player1.dualActive){
   if canfire{      
        xcord1 = x + lengthdir_x(10, -phy_rotation);
        xcord2 = x + lengthdir_x(10, -phy_rotation +180);
        xpos1 = xcord1 + lengthdir_x(20, -phy_rotation +90);
        xpos2 = xcord2 + lengthdir_x(20, -phy_rotation +90);
        ycord1 = y + lengthdir_y(10, -phy_rotation);
        ycord2 = y + lengthdir_y(10, -phy_rotation +180);
        ypos1 = ycord1 + lengthdir_y(20, -phy_rotation +90);
        ypos2 = ycord2 + lengthdir_y(20, -phy_rotation +90);
        
        with (instance_create(xpos1,ypos1,bullet)){
            phy_rotation=other.phy_rotation;
            physics_apply_local_impulse(0, 0, 0, -100);
        }
        with (instance_create(xpos2,ypos2,bullet)){
            phy_rotation=other.phy_rotation;
            physics_apply_local_impulse(0, 0, 0, -100);
        }
        alarm[2]= Player1.fireRate;
        canfire=false;
    }
}