if (speed != 0) {
    distance -= abs(speed);
    if (distance <= 0) {
        x = round(x/16)*16;
        y = round(y/16)*16;
        
        speed = 0;
        hspeed = 0;
        vspeed = 0;
        action = "Ilde"; 
    }
}

if (speed == 0) {
    action = "Ilde";
    
    if (keyboard_check(ord("D"))) {
        hspeed = spd;
        vspeed = 0;
        distance = 16;
        action = "Walk";
        face = "Right";
    }
    else if (keyboard_check(ord("A"))) {
        hspeed = -spd;
        vspeed = 0;
        distance = 16;
        action = "Walk";
        face = "Left";
    }
    else if (keyboard_check(ord("W"))) {
        hspeed = 0;
        vspeed = -spd;
        distance = 16;
        action = "Walk";
        face = "Up";
    }
    else if (keyboard_check(ord("S"))) {
        hspeed = 0;
        vspeed = spd;
        distance = 16;
        action = "Walk";
        face = "Down";
    }
    

    if (hspeed != 0 || vspeed != 0) {
        speed = max(abs(hspeed), abs(vspeed));
    }
}