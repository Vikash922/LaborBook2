package com.itextpdf.p017io.image;

import java.net.URL;

/* JADX INFO: loaded from: classes6.dex */
public class RawImageData extends ImageData {
    public static final int CCITTG3_1D = 257;
    public static final int CCITTG3_2D = 258;
    public static final int CCITTG4 = 256;
    public static final int CCITT_BLACKIS1 = 1;
    public static final int CCITT_ENCODEDBYTEALIGN = 2;
    public static final int CCITT_ENDOFBLOCK = 8;
    public static final int CCITT_ENDOFLINE = 4;
    protected int typeCcitt;

    @Override // com.itextpdf.p017io.image.ImageData
    public boolean isRawImage() {
        return true;
    }

    protected RawImageData(URL url, ImageType imageType) {
        super(url, imageType);
    }

    protected RawImageData(byte[] bArr, ImageType imageType) {
        super(bArr, imageType);
    }

    public int getTypeCcitt() {
        return this.typeCcitt;
    }

    public void setTypeCcitt(int i) {
        this.typeCcitt = i;
    }
}
