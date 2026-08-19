package com.itextpdf.io.image;

import com.itextpdf.io.codec.Jbig2SegmentReader;
import com.itextpdf.io.exceptions.IOException;
import com.itextpdf.io.logs.IoLogMessageConstant;
import com.itextpdf.io.source.RandomAccessFileOrArray;
import com.itextpdf.io.source.RandomAccessSourceFactory;
import java.net.URL;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class Jbig2ImageData extends ImageData {
    private int page;

    protected Jbig2ImageData(URL url, int i) {
        super(url, ImageType.JBIG2);
        this.page = i;
    }

    protected Jbig2ImageData(byte[] bArr, int i) {
        super(bArr, ImageType.JBIG2);
        this.page = i;
    }

    public int getPage() {
        return this.page;
    }

    public static int getNumberOfPages(byte[] bArr) {
        return getNumberOfPages(new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(bArr)));
    }

    public static int getNumberOfPages(RandomAccessFileOrArray randomAccessFileOrArray) {
        try {
            Jbig2SegmentReader jbig2SegmentReader = new Jbig2SegmentReader(randomAccessFileOrArray);
            jbig2SegmentReader.read();
            return jbig2SegmentReader.numberOfPages();
        } catch (Exception e) {
            throw new IOException(IOException.Jbig2ImageException, (Throwable) e);
        }
    }

    @Override // com.itextpdf.io.image.ImageData
    public boolean canImageBeInline() {
        LoggerFactory.getLogger((Class<?>) ImageData.class).warn(IoLogMessageConstant.IMAGE_HAS_JBIG2DECODE_FILTER);
        return false;
    }
}
