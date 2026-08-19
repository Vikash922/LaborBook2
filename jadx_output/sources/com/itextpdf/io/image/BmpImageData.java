package com.itextpdf.io.image;

import java.net.URL;

/* JADX INFO: loaded from: classes6.dex */
public class BmpImageData extends RawImageData {
    private final boolean noHeader;

    protected BmpImageData(URL url, boolean z) {
        super(url, ImageType.BMP);
        this.noHeader = z;
    }

    protected BmpImageData(byte[] bArr, boolean z) {
        super(bArr, ImageType.BMP);
        this.noHeader = z;
    }

    public boolean isNoHeader() {
        return this.noHeader;
    }
}
