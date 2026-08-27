#pragma header

uniform float iTime;
uniform float strength;

void main()
{
    vec2 uv = openfl_TextureCoordv;

    float s = strength;

    // Ondulação tipo enjoo
    uv.x += sin(uv.y * 10.0 + iTime * 2.0) * 0.012 * s;
    uv.y += cos(uv.x * 8.0 + iTime * 1.5) * 0.010 * s;

    // Balanço lento
    uv.x += sin(iTime * 1.1) * 0.008 * s;
    uv.y += cos(iTime * 0.8) * 0.006 * s;

    uv = clamp(uv, 0.0, 1.0);

    vec4 color = flixel_texture2D(bitmap, uv);
    gl_FragColor = color;
}