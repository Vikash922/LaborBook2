package com.itextpdf.svg.renderers.path.impl;

/* JADX INFO: loaded from: classes6.dex */
public class SmoothSCurveTo extends CurveTo {
    static final int ARGUMENT_SIZE = 4;

    public SmoothSCurveTo() {
        this(false);
    }

    public SmoothSCurveTo(boolean z) {
        super(z, new SmoothOperatorConverter());
    }
}
