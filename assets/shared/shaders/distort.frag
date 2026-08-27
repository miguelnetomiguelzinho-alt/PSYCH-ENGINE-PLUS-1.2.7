#pragma header

uniform float amount;

void main(void) {
    vec4 textureColor = texture2D(bitmap, openfl_TextureCoordv);
    float gray = 0.21 * textureColor.r + 0.71 * textureColor.g + 0.07 * textureColor.b;
    gl_FragColor = vec4(textureColor.rgb * (1.0 - amount) + (gray * amount), textureColor.a);
}