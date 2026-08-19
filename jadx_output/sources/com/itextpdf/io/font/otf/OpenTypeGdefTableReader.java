package com.itextpdf.io.font.otf;

import com.itextpdf.io.source.RandomAccessFileOrArray;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class OpenTypeGdefTableReader {
    static final int FLAG_IGNORE_BASE = 2;
    static final int FLAG_IGNORE_LIGATURE = 4;
    static final int FLAG_IGNORE_MARK = 8;
    private OtfClass glyphClass;
    private OtfClass markAttachmentClass;
    private final RandomAccessFileOrArray rf;
    private final int tableLocation;

    public OpenTypeGdefTableReader(RandomAccessFileOrArray randomAccessFileOrArray, int i) {
        this.rf = randomAccessFileOrArray;
        this.tableLocation = i;
    }

    public void readTable() throws IOException {
        int i = this.tableLocation;
        if (i > 0) {
            this.rf.seek(i);
            this.rf.readUnsignedInt();
            int unsignedShort = this.rf.readUnsignedShort();
            this.rf.readUnsignedShort();
            this.rf.readUnsignedShort();
            int unsignedShort2 = this.rf.readUnsignedShort();
            if (unsignedShort > 0) {
                this.glyphClass = OtfClass.create(this.rf, unsignedShort + this.tableLocation);
            }
            if (unsignedShort2 > 0) {
                this.markAttachmentClass = OtfClass.create(this.rf, unsignedShort2 + this.tableLocation);
            }
        }
    }

    public boolean isSkip(int i, int i2) {
        OtfClass otfClass;
        OtfClass otfClass2 = this.glyphClass;
        if (otfClass2 != null && (i2 & 14) != 0) {
            int otfClass3 = otfClass2.getOtfClass(i);
            if (otfClass3 == 1 && (i2 & 2) != 0) {
                return true;
            }
            if (otfClass3 == 3 && (i2 & 8) != 0) {
                return true;
            }
            if (otfClass3 == 2 && (i2 & 4) != 0) {
                return true;
            }
        }
        int i3 = i2 >> 8;
        if (i3 == 0 || (otfClass = this.glyphClass) == null) {
            return false;
        }
        int otfClass4 = otfClass.getOtfClass(i);
        OtfClass otfClass5 = this.markAttachmentClass;
        return otfClass4 == 3 && (otfClass5 != null ? otfClass5.getOtfClass(i) : 0) != i3;
    }

    public OtfClass getGlyphClassTable() {
        return this.glyphClass;
    }
}
