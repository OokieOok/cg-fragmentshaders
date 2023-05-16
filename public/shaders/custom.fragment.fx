#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    // Color
    FragColor = texture(image, vec2(round(model_uv[0]*100.0)/100.0, round(model_uv[1]*50.0)/50.0));
}
