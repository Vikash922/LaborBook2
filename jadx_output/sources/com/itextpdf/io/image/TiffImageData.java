package com.itextpdf.io.image;

import com.itextpdf.io.codec.TIFFDirectory;
import com.itextpdf.io.exceptions.IOException;
import com.itextpdf.io.source.RandomAccessFileOrArray;
import com.itextpdf.io.source.RandomAccessSourceFactory;
import java.net.URL;

/* JADX INFO: loaded from: classes6.dex */
public class TiffImageData extends RawImageData {
    private boolean direct;
    private int page;
    private boolean recoverFromImageError;

    protected TiffImageData(URL url, boolean z, int i, boolean z2) {
        super(url, ImageType.TIFF);
        this.recoverFromImageError = z;
        this.page = i;
        this.direct = z2;
    }

    protected TiffImageData(byte[] bArr, boolean z, int i, boolean z2) {
        super(bArr, ImageType.TIFF);
        this.recoverFromImageError = z;
        this.page = i;
        this.direct = z2;
    }

    private static ImageData getImage(URL url, boolean z, int i, boolean z2) {
        return new TiffImageData(url, z, i, z2);
    }

    private static ImageData getImage(byte[] bArr, boolean z, int i, boolean z2) {
        return new TiffImageData(bArr, z, i, z2);
    }

    public static int getNumberOfPages(RandomAccessFileOrArray randomAccessFileOrArray) {
        try {
            return TIFFDirectory.getNumDirectories(randomAccessFileOrArray);
        } catch (Exception e) {
            throw new IOException(IOException.TiffImageException, (Throwable) e);
        }
    }

    public static int getNumberOfPages(byte[] bArr) {
        return getNumberOfPages(new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(bArr)));
    }

    public boolean isRecoverFromImageError() {
        return this.recoverFromImageError;
    }

    public int getPage() {
        return this.page;
    }

    public boolean isDirect() {
        return this.direct;
    }

    public void setOriginalType(ImageType imageType) {
        this.originalType = imageType;
    }
}
