#pragma header
uniform float distort;
uniform float iTime;
#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main

// https://www.shadertoy.com/view/Xltfzj

void mainImage()
{
    vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
    vec2 iResolution = openfl_TextureSize;
    
	vec2 uv = fragCoord.xy / iResolution.xy;
    float Pi = 6.28318530718; // Pi*2
    
    // GAUSSIAN BLUR SETTINGS {{{
    float Directions1 = 16.0; // BLUR DIRECTIONS (Default 16.0 - More is better but slower)
    float Quality1 = 3.0; // BLUR QUALITY (Default 4.0 - More is better but slower)
    float Size1 = distort; // BLUR SIZE1 (Radius)
    // GAUSSIAN BLUR SETTINGS }}}
   
    vec2 Radius = Size1/iResolution.xy;
    
    // Normalized pixel coordinates (from 0 to 1)
    // Pixel colour
    vec4 Color = texture(iChannel0, uv);
    
    // Blur calculations
    for( float d=0.0; d<Pi; d+=Pi/Directions1)
    {
		for(float i=1.0/Quality1; i<=1.0; i+=1.0/Quality1)
        {
			Color += texture( iChannel0, uv+vec2(cos(d),sin(d))*Radius*i);		
        }
    }
    
    // Output to screen
    Color /= Quality1 * Directions1 - 15.0;
    gl_FragColor =  Color;
}