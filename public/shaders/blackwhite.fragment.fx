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
    float lum = (FragColor[0]*0.299) + (FragColor[1]*0.587) + (FragColor[2]*0.114);
    FragColor = vec4(lum, lum, lum, FragColor[3]);
}
