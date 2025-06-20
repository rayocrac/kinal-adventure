
var xx = 20;
var yy = 340;
var w = 600;
var h = 120;


draw_set_color(c_black);
draw_set_alpha(0.75);
draw_roundrect(x, y, x + w, y + h, false);

draw_set_alpha(1);
draw_set_color(c_white);

draw_roundrect(x, y, x + w, y + h, true);


draw_set_font(fntRainyHearts);
draw_set_color(c_white);


buffer.draw(x + 15, y + 15, timer);
