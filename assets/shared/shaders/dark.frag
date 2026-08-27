#pragma header

uniform float darkness;

void main() {
	gl_FragColor = flixel_texture2D(bitmap, openfl_TextureCoordv) - vec4(darkness, darkness, darkness, 0.);
}