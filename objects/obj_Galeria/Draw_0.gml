draw_set_color(c_white);
draw_rectangle(0, 0, room_width, room_height, false);


draw_set_font(fntDaydream);
draw_set_halign(fa_center);
draw_text_color(room_width/2, 30, "EXTRAS", c_black, c_black, c_black, c_black, 1);

draw_set_color(c_black);
draw_rectangle(galeria_x-5, galeria_y-5, galeria_x+ancho_imagen+5, galeria_y+alto_imagen+5, false);

var img_actual = imagenes[indice_imagen];
draw_sprite_ext(img_actual.recurso, 0, galeria_x, galeria_y, ancho_imagen/sprite_get_width(img_actual.recurso), alto_imagen/sprite_get_height(img_actual.recurso), 0, c_white, 1);


draw_set_font(fntDaydream);
draw_text(galeria_x, galeria_y + alto_imagen + 30, img_actual.nombre);


draw_set_font(fntBach);
draw_text(galeria_x, galeria_y + alto_imagen + 60, "← →: Navegar    ESC: Volver");


draw_text(galeria_x + ancho_imagen - 50, galeria_y + alto_imagen + 60, string(indice_imagen+1)+"/"+string(total_imagenes));