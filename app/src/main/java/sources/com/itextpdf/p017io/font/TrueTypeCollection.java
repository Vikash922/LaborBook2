package com.itextpdf.p017io.font;

import com.itextpdf.commons.utils.FileUtil;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import com.itextpdf.p017io.source.RandomAccessSourceFactory;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class TrueTypeCollection {
    private int TTCSize = 0;
    private boolean cached = true;
    protected RandomAccessFileOrArray raf;
    private byte[] ttc;
    private String ttcPath;

    public TrueTypeCollection(byte[] bArr) throws IOException {
        this.raf = new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(bArr));
        this.ttc = bArr;
        initFontSize();
    }

    public TrueTypeCollection(String str) throws IOException {
        if (!FileUtil.fileExists(str)) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.FontFile1NotFound).setMessageParams(str);
        }
        this.raf = new RandomAccessFileOrArray(new RandomAccessSourceFactory().createBestSource(str));
        this.ttcPath = str;
        initFontSize();
    }

    public FontProgram getFontByTccIndex(int i) throws IOException {
        if (i > this.TTCSize - 1) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.TtcIndexDoesNotExistInThisTtcFile);
        }
        String str = this.ttcPath;
        if (str != null) {
            return FontProgramFactory.createFont(str, i, this.cached);
        }
        return FontProgramFactory.createFont(this.ttc, i, this.cached);
    }

    public int getTTCSize() {
        return this.TTCSize;
    }

    public boolean isCached() {
        return this.cached;
    }

    public void setCached(boolean z) {
        this.cached = z;
    }

    private void initFontSize() throws IOException {
        if (!this.raf.readString(4, "Cp1252").equals("ttcf")) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.InvalidTtcFile);
        }
        this.raf.skipBytes(4);
        this.TTCSize = this.raf.readInt();
    }
}
