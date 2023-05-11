#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

/*
    vec2 uv = 2.0*model_uv-1.0;
    float theta = atan(uv.y, uv.x);
    float radius = pow(length(uv), 1.5);
    uv.x = radius*cos(theta);
    uv.y = radius*sin(theta);
    uv = 0.5 * (uv + 1.0);
    FragColor = texture(image, uv);
*/

void main() {
    vec2 uv = 2.0*model_uv-1.0;
    float radius = length(uv);
    //coord_offset = texture_coordinate * (sin(radius * 30.0 - time * 5.0) + 0.5) / 60.0;
    //uv.x = 
    //uv.y = 

    FragColor = texture(image, model_uv);
}
