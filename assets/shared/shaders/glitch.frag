#pragma header
uniform float iTime;
#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main

    uniform float binaryIntensity;
    
    void main() {
vec2 uv = openfl_TextureCoordv.xy;
vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
vec2 iResolution = openfl_TextureSize;
        
        // get snapped position
        float psize = 0.04 * binaryIntensity;
        float psq = 1.0 / psize;
    
        float px = floor(uv.x * psq + 0.5) * psize;
        float py = floor(uv.y * psq + 0.5) * psize;
        
        vec4 colSnap = texture2D(bitmap, vec2(px, py));
        
        float lum = pow(1.0 - (colSnap.r + colSnap.g + colSnap.b) / 3.0, binaryIntensity);
        
        float qsize = psize * lum;
        float qsq = 1.0 / qsize;
    
        float qx = floor(uv.x * qsq + 0.5) * qsize;
        float qy = floor(uv.y * qsq + 0.5) * qsize;
    
        float rx = (px - qx) * lum + uv.x;
        float ry = (py - qy) * lum + uv.y;
    
        gl_FragColor = flixel_texture2D(bitmap, vec2(rx, ry));
    }