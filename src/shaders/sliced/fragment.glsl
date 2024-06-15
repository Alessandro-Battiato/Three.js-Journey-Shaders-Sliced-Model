varying vec3 vPosition;

void main() {
    float uSliceStart = 1.0;
    float uSliceArc = 1.5;

    float angle = atan(vPosition.y, vPosition.x); // MANDATORY to put FIRST the y axis and THEN the x axis

    if (angle > uSliceStart && angle < uSliceStart + uSliceArc) {
        // The sliced portion occurs only when the angle satisfies the said conditions, and if it does, we discard all of the pixels so that they are not drawn
        discard;
    }

    csm_FragColor = vec4(vec3(angle), 1.0);
}