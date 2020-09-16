/// @description Apply inverted shader
if (inverted == true){
	shader_set(shInvert);
	inverted = false;
	}
draw_self();
shader_reset();
