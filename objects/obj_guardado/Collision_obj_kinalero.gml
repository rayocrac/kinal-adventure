if(image_index == 1)
    {
        exit;
    }
image_index = 1;

var near = instance_nearest(other.x,other.y, obj_guardado);

other.x = near.x;
other.y = near.y;