
out vec4 sk_FragColor;
uniform vec4 input;
uniform vec4 expected;
uniform vec4 colorGreen;
uniform vec4 colorRed;
vec4 main() {
    return ((((((asinh(input.x) == expected.x && asinh(input.xy) == expected.xy) && asinh(input.xyz) == expected.xyz) && asinh(input) == expected) && 0.0 == expected.x) && vec2(0.0, 0.0) == expected.xy) && vec3(0.0, 0.0, 1.0) == expected.xyz) && vec4(0.0, 0.0, 1.0, -1.0) == expected ? colorGreen : colorRed;
}
