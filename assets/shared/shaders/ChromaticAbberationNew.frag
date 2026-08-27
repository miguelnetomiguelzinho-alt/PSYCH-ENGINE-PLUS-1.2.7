#pragma header

uniform float redX;
uniform float redY;
uniform float bluX;
uniform float bluY;

#define fragColor gl_FragColor
#define texture flixel_texture2D
#define iChannel0 bitmap

void main()
{
    vec2 uv = (openfl_TextureCoordv.xy * openfl_TextureSize.xy) / openfl_TextureSize.xy;

    vec2 uvRed = uv;
    vec2 uvBlue = uv;
    uvRed.x += redX;
    //uvRed.y += redY;
    uvBlue.x -= bluX; 
    //uvBlue.y -= bluY;

    /*gl_FragColor =  texture2D(bitmap, uv);
    gl_FragColor.r = texture2D(bitmap, uvRed).r;
    gl_FragColor.b = texture2D(bitmap, uvBlue).b;*/
    
    //correct format
	fragColor = texture(iChannel0, uv);
	fragColor.r = texture(iChannel0, uvRed).r;
	fragColor.b = texture(iChannel0, uvBlue).b;
}


//Shader Reworked by Zoe.exe :3