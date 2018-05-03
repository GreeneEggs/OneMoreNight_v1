//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	// Get original colors for all pixels
	vec4 originalColor = texture2D(gm_BaseTexture, v_vTexcoord);
	
	// Balance the color levels
	vec3 lum = vec3(0.299, 0.587, 0.114);
	
	// Output the new color
    gl_FragColor = vec4(vec3(dot(originalColor.rgb, lum)), originalColor.a);
}
