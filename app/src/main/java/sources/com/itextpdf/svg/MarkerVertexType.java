package com.itextpdf.svg;

import com.itextpdf.svg.SvgConstants;

/* JADX INFO: loaded from: classes6.dex */
public enum MarkerVertexType {
    MARKER_START(SvgConstants.Attributes.MARKER_START),
    MARKER_MID(SvgConstants.Attributes.MARKER_MID),
    MARKER_END(SvgConstants.Attributes.MARKER_END);

    private final String name;

    MarkerVertexType(String str) {
        this.name = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
