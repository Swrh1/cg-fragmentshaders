#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;
uniform float time;

// Output
out vec4 FragColor;

void main() {
    vec2 uv = 2.0*model_uv-1.0;
    float radius = length(uv);
    vec2 coord_offset = uv * (sin(radius * 30.0 - time * 5.0) + 0.5) / 60.0;
    uv.x = uv.x+coord_offset.x;
    uv.y = uv.y+coord_offset.y;
    uv = 0.5 * (uv + 1.0);
    FragColor = texture(image, uv);
}
