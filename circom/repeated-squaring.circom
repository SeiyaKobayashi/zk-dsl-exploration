pragma circom 2.1.8;

template RepeatedSquaring(n) {
    signal input x;
    signal xs[n+1];
    signal output y;

    xs[0] <== x;

    for (var i = 0; i < n; i++) {
        xs[i+1] <== xs[i] * xs[i];
    }

    y <== xs[n];
}

component main { public[x] } = RepeatedSquaring(10);
