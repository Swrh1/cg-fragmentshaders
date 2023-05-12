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
    // Color
    vec4 color = texture(image, model_uv);
    color.r += sin(time * 1.0)*0.5;
    color.g += sin(time * 0.5)*0.5;
    color.b += sin(time * 1.5)*0.5;
    FragColor = color;
}
