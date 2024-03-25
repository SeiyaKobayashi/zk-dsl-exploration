pragma circom 2.1.8;

template Multiply() {
    signal input x;
    signal input y;
    signal output z;

    z <== x * y;
}

component main { public [x] } = Multiply();
