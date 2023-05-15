#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    vec4 color = texture(image, model_uv);
    color.r = round(color.r*4.0)/4.0;
    color.g = round(color.g*4.0)/4.0;
    color.b = round(color.b*4.0)/4.0;
    FragColor = color;
}
