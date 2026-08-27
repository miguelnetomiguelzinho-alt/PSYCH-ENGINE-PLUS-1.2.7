#pragma header

uniform float strength;

float random(vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

void main() {
    vec2 uv = openfl_TextureCoordv.st;
    float noise = random(uv * strength * 100.0);
    vec4 color = texture2D(bitmap, uv);

    // mistura o ruído com a cor original
    color.rgb += noise * strength * 0.5;

    gl_FragColor = color;
}