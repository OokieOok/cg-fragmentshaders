#version 300 es
precision highp float;

// Attributes
in vec3 position;
in vec2 uv;

// Output
out vec2 model_uv;

void main() {
    // Pass UV coordinate onto the fragment shader
    model_uv = uv;
    model_uv = vec2((model_uv[0]*2.0)-1.0, (model_uv[1]*2.0)-1.0);
    float t = atan(model_uv[1] - model_uv[0]);
    float rad = pow(model_uv[1] - model_uv[0], 1.5);
    model_uv = vec2(rad * cos(t), rad * sin(t));
    model_uv = vec2((model_uv[0]+1.0)*0.5, (model_uv[1]+1.0)*0.5);
    // Don't transform - expecting a fullscreen quad in 2D screen-space 
    gl_Position = vec4(position, 1.0);
}
