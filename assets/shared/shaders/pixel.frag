#pragma header

uniform float pxSize; // definido no Lua

#define INPUT bitmap

void main(void)
{
    vec2 fragCoord = openfl_TextureCoordv * openfl_TextureSize;
    vec2 uv = fragCoord.xy / openfl_TextureSize.xy;

    float plx = openfl_TextureSize.x * pxSize / 500.0;
    float ply = openfl_TextureSize.y * pxSize / 275.0;

    float dx = plx / openfl_TextureSize.x;
    float dy = ply / openfl_TextureSize.y;

    uv.x = dx * floor(uv.x / dx);
    uv.y = dy * floor(uv.y / dy);

    gl_FragColor = texture2D(INPUT, uv);
}