shader_type canvas_item;

uniform float thresholds = 0.0f;
uniform float blur_amount = 0.0f;

void fragment()
{
	COLOR = textureLod(SCREEN_TEXTURE, SCREEN_UV, blur_amount);
	
	float avg = (COLOR.r + COLOR.g + COLOR.b)/3.0;
	
	if (avg > thresholds)
	{
		COLOR = vec4(1.0);
	}
}