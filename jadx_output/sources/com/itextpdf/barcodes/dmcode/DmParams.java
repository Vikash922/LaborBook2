package com.itextpdf.barcodes.dmcode;

/* JADX INFO: loaded from: classes6.dex */
public class DmParams {
    public int dataBlock;
    public int dataSize;
    public int errorBlock;
    public int height;
    public int heightSection;
    public int width;
    public int widthSection;

    public DmParams(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.height = i;
        this.width = i2;
        this.heightSection = i3;
        this.widthSection = i4;
        this.dataSize = i5;
        this.dataBlock = i6;
        this.errorBlock = i7;
    }
}
