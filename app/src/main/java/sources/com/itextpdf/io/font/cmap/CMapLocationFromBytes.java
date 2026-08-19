package com.itextpdf.io.font.cmap;

import com.itextpdf.io.source.PdfTokenizer;
import com.itextpdf.io.source.RandomAccessFileOrArray;
import com.itextpdf.io.source.RandomAccessSourceFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CMapLocationFromBytes implements ICMapLocation {
    private byte[] data;

    public CMapLocationFromBytes(byte[] bArr) {
        this.data = bArr;
    }

    @Override // com.itextpdf.io.font.cmap.ICMapLocation
    public PdfTokenizer getLocation(String str) {
        return new PdfTokenizer(new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(this.data)));
    }
}
