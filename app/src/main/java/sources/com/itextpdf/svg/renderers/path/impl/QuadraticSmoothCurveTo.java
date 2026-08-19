package com.itextpdf.svg.renderers.path.impl;

/* JADX INFO: loaded from: classes6.dex */
public class QuadraticSmoothCurveTo extends QuadraticCurveTo {
    static final int ARGUMENT_SIZE = 2;

    public QuadraticSmoothCurveTo() {
        this(false);
    }

    public QuadraticSmoothCurveTo(boolean z) {
        super(z, new SmoothOperatorConverter());
    }
}
