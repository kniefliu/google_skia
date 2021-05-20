
precision mediump float;
precision mediump sampler2D;
out mediump vec4 sk_FragColor;
uniform mediump vec4 colorGreen;
uniform mediump vec4 colorRed;
uniform mediump mat2 testHalf2x2;
uniform highp mat2 testFloat2x2;
mediump vec4 main() {
    bool _0_ok = true;
    _0_ok = _0_ok && testHalf2x2 == mat2(1.0, 2.0, 3.0, 4.0);
    _0_ok = _0_ok && testFloat2x2 == mat2(5.0, 6.0, 7.0, 8.0);
    _0_ok = _0_ok && testHalf2x2 != mat2(123.0);
    _0_ok = _0_ok && testFloat2x2 != mat2(456.0);
    return _0_ok ? colorGreen : colorRed;
}