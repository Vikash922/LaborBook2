package com.itextpdf.p017io.image;

import com.itextpdf.p017io.codec.Jbig2SegmentReader;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import com.itextpdf.p017io.source.RandomAccessSourceFactory;
import java.io.IOException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
class Jbig2ImageHelper {
    private byte[] globals;

    Jbig2ImageHelper() {
    }

    public static byte[] getGlobalSegment(RandomAccessFileOrArray randomAccessFileOrArray) {
        try {
            Jbig2SegmentReader jbig2SegmentReader = new Jbig2SegmentReader(randomAccessFileOrArray);
            jbig2SegmentReader.read();
            return jbig2SegmentReader.getGlobal(true);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void processImage(ImageData imageData) {
        if (imageData.getOriginalType() != ImageType.JBIG2) {
            throw new IllegalArgumentException("JBIG2 image expected");
        }
        Jbig2ImageData jbig2ImageData = (Jbig2ImageData) imageData;
        try {
            if (jbig2ImageData.getData() == null) {
                jbig2ImageData.loadData();
            }
            RandomAccessFileOrArray randomAccessFileOrArray = new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(jbig2ImageData.getData()));
            Jbig2SegmentReader jbig2SegmentReader = new Jbig2SegmentReader(randomAccessFileOrArray);
            jbig2SegmentReader.read();
            Jbig2SegmentReader.Jbig2Page page = jbig2SegmentReader.getPage(jbig2ImageData.getPage());
            randomAccessFileOrArray.close();
            jbig2ImageData.setHeight(page.pageBitmapHeight);
            jbig2ImageData.setWidth(page.pageBitmapWidth);
            jbig2ImageData.setBpc(1);
            jbig2ImageData.setColorEncodingComponentsNumber(1);
            byte[] global = jbig2SegmentReader.getGlobal(true);
            if (global != null) {
                HashMap map = new HashMap();
                map.put("JBIG2Globals", global);
                jbig2ImageData.decodeParms = map;
            }
            jbig2ImageData.setFilter("JBIG2Decode");
            jbig2ImageData.setColorEncodingComponentsNumber(1);
            jbig2ImageData.setBpc(1);
            jbig2ImageData.data = page.getData(true);
        } catch (IOException e) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.Jbig2ImageException, (Throwable) e);
        }
    }
}
