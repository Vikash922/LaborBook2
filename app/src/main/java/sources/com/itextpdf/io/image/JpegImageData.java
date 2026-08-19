package com.itextpdf.io.image;

import java.net.URL;

/* JADX INFO: loaded from: classes6.dex */
public class JpegImageData extends ImageData {
    protected JpegImageData(URL url) {
        super(url, ImageType.JPEG);
    }

    protected JpegImageData(byte[] bArr) {
        super(bArr, ImageType.JPEG);
    }
}
