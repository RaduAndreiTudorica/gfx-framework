#version 330

// Input
// TODO(student): Get vertex attributes from each location

// Uniform properties
uniform mat4 Model;
uniform mat4 View;
uniform mat4 Projection;

layout(location = 0) in vec3 v_position;
layout(location = 1) in vec3 v_normal;
layout(location = 2) in vec2 v_texture;
layout(location = 3) in vec3 v_color;

// 3b. Atribute de ieșire care vor fi trimise către Fragment Shader[cite: 5]
out vec3 frag_normal;
out vec3 frag_color;

// Output
// TODO(student): Output values to fragment shader

void main()
{
    // TODO(student): Send output to fragment shader

    // TODO(student): Compute gl_Position

    frag_normal = v_normal;
    frag_color  = v_color;

    gl_Position = Projection * View * Model * vec4(v_position, 1.0);

}
