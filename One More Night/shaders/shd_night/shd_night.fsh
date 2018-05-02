//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	// Get original colors for all pixels
	vec4 originalColor = texture2D( gm_BaseTexture, v_vTexcoord );
	
	//Find color values for black and alpha
	float averageRGB = (originalColor.r + originalColor.g + originalColor.b)/3;
	float alpha = 1.0;
	
	//Create the new color
	vec4 Color = vec4(averageRGB, averageRGB, averageRGB, alpha);
	
	//Output the new color
    gl_FragColor = Color;
}
