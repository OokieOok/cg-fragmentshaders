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
    FragColor = texture(image, model_uv);
    FragColor = vec4(round(FragColor[0]*4.0)/4.0, round(FragColor[1]*4.0)/4.0, round(FragColor[2]*4.0)/4.0, FragColor[3]);
}
