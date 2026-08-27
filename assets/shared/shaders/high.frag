#pragma header

uniform float iTime;
uniform float effectiveness;
uniform int focusDetail;

void main()
{
    vec2 uv = openfl_TextureCoordv;
    vec2 iResolution = openfl_TextureSize;

    float resX = max(iResolution.x, 1.0);
    float focusPower = (20.0 + sin(iTime * 4.0) * 3.0) * effectiveness;

    vec2 focus = uv - vec2(0.5, 0.5);

    vec4 outColor = vec4(0.0);

    // Loop fixo (evita crash de driver)
    for (int i = 0; i < 12; i++)
    {
        if (i >= focusDetail) break;

        float power = 1.0 - focusPower * (1.0 / resX) * (float(i) * 0.75);

        vec2 sampleUV = clamp(focus * power + vec2(0.5), 0.0, 1.0);

        outColor += flixel_texture2D(bitmap, sampleUV);
    }

    outColor /= max(float(focusDetail), 1.0);

    gl_FragColor = outColor;
}