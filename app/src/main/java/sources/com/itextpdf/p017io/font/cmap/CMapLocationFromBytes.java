package com.itextpdf.p017io.font.cmap;

import com.itextpdf.p017io.source.PdfTokenizer;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import com.itextpdf.p017io.source.RandomAccessSourceFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CMapLocationFromBytes implements ICMapLocation {
    private byte[] data;

    public CMapLocationFromBytes(byte[] bArr) {
        this.data = bArr;
    }

    @Override // com.itextpdf.p017io.font.cmap.ICMapLocation
    public PdfTokenizer getLocation(String str) {
        return new PdfTokenizer(new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(this.data)));
    }
}
