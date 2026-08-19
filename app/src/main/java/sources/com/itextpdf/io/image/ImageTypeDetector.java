package com.itextpdf.io.image;

import com.google.common.base.Ascii;
import com.itextpdf.io.util.UrlUtil;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes6.dex */
public final class ImageTypeDetector {
    private static final byte[] gif = {71, 73, 70};
    private static final byte[] jpeg = {-1, -40};
    private static final byte[] jpeg2000_1 = {0, 0, 0, Ascii.FF};
    private static final byte[] jpeg2000_2 = {-1, 79, -1, 81};
    private static final byte[] png = {-119, 80, 78, 71};
    private static final byte[] wmf = {-41, -51};
    private static final byte[] bmp = {66, 77};
    private static final byte[] tiff_1 = {77, 77, 0, 42};
    private static final byte[] tiff_2 = {73, 73, 42, 0};
    private static final byte[] jbig2 = {-105, 74, 66, 50, Ascii.CR, 10, Ascii.SUB, 10};

    private ImageTypeDetector() {
    }

    public static ImageType detectImageType(byte[] bArr) {
        return detectImageTypeByHeader(readImageType(bArr));
    }

    public static ImageType detectImageType(URL url) {
        return detectImageTypeByHeader(readImageType(url));
    }

    public static ImageType detectImageType(InputStream inputStream) {
        return detectImageTypeByHeader(readImageType(inputStream));
    }

    private static ImageType detectImageTypeByHeader(byte[] bArr) {
        if (imageTypeIs(bArr, gif)) {
            return ImageType.GIF;
        }
        if (imageTypeIs(bArr, jpeg)) {
            return ImageType.JPEG;
        }
        if (imageTypeIs(bArr, jpeg2000_1) || imageTypeIs(bArr, jpeg2000_2)) {
            return ImageType.JPEG2000;
        }
        if (imageTypeIs(bArr, png)) {
            return ImageType.PNG;
        }
        if (imageTypeIs(bArr, bmp)) {
            return ImageType.BMP;
        }
        if (imageTypeIs(bArr, tiff_1) || imageTypeIs(bArr, tiff_2)) {
            return ImageType.TIFF;
        }
        if (imageTypeIs(bArr, jbig2)) {
            return ImageType.JBIG2;
        }
        if (imageTypeIs(bArr, wmf)) {
            return ImageType.WMF;
        }
        return ImageType.NONE;
    }

    private static boolean imageTypeIs(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    private static byte[] readImageType(URL url) {
        try {
            InputStream inputStreamOpenStream = UrlUtil.openStream(url);
            try {
                byte[] imageType = readImageType(inputStreamOpenStream);
                if (inputStreamOpenStream != null) {
                    inputStreamOpenStream.close();
                }
                return imageType;
            } finally {
            }
        } catch (IOException e) {
            throw new com.itextpdf.io.exceptions.IOException("I/O exception.", (Throwable) e);
        }
    }

    private static byte[] readImageType(InputStream inputStream) {
        try {
            byte[] bArr = new byte[8];
            inputStream.read(bArr);
            return bArr;
        } catch (IOException e) {
            throw new com.itextpdf.io.exceptions.IOException("I/O exception.", (Throwable) e);
        }
    }

    private static byte[] readImageType(byte[] bArr) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            byte[] bArr2 = new byte[8];
            byteArrayInputStream.read(bArr2);
            return bArr2;
        } catch (IOException unused) {
            return null;
        }
    }
}
