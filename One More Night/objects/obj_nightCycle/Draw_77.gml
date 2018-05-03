//Turn shader on if it is off
if(shaderOn = false){
	shader_set(shd_night)
	draw_surface(application_surface, 0, 0)
	shader_reset()
}
//Turn shader off if it is on
else{
	draw_surface(application_surface, 0, 0)
}