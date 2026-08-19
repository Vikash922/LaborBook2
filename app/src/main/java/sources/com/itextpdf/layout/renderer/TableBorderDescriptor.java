package com.itextpdf.layout.renderer;

/* JADX INFO: loaded from: classes6.dex */
class TableBorderDescriptor {
    private int borderIndex;
    private float crossCoordinate;
    private float mainCoordinateStart;
    private float[] mainCoordinateWidths;

    public TableBorderDescriptor(int i, float f, float f2, float[] fArr) {
        this.borderIndex = i;
        this.mainCoordinateStart = f;
        this.crossCoordinate = f2;
        this.mainCoordinateWidths = fArr;
    }

    public int getBorderIndex() {
        return this.borderIndex;
    }

    public float getMainCoordinateStart() {
        return this.mainCoordinateStart;
    }

    public float getCrossCoordinate() {
        return this.crossCoordinate;
    }

    public float[] getMainCoordinateWidths() {
        return this.mainCoordinateWidths;
    }
}
