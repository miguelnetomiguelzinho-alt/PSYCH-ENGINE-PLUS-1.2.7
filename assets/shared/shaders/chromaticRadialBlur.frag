#pragma header

/*
    Chromatic Radial Blur (versão leve Psych 1.0.4)
*/

const int sampleCount = 12; // menos amostras = mais leve
uniform float blur;         
uniform float falloff;      

#define INPUT bitmap

void main(void)
{
    vec2 uv = openfl_TextureCoordv.xy;
    vec2 dir = normalize(uv - 0.5);
    vec2 vel = dir * blur * pow(length(uv - 0.5), falloff);

    vec4 acc = vec4(0.0);

    // offsets separados
    vec2 offR = vec2(0.0);
    vec2 offG = vec2(0.0);
    vec2 offB = vec2(0.0);

    vec2 incR = vel * 0.5;
    vec2 incG = vel * 1.0;
    vec2 incB = vel * 1.5;

    for (int i = 0; i < sampleCount; i++) {
        acc.r += texture2D(INPUT, uv + offR).r;
        acc.g += texture2D(INPUT, uv + offG).g;
        acc.b += texture2D(INPUT, uv + offB).b;
        acc.a += texture2D(INPUT, uv).a;

        offR -= incR;
        offG -= incG;
        offB -= incB;
    }

    gl_FragColor = acc / float(sampleCount);
}