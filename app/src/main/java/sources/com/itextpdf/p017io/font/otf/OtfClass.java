package com.itextpdf.p017io.font.otf;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import com.itextpdf.p017io.util.IntHashtable;
import java.io.IOException;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class OtfClass {
    public static final int GLYPH_BASE = 1;
    public static final int GLYPH_LIGATURE = 2;
    public static final int GLYPH_MARK = 3;
    private IntHashtable mapClass = new IntHashtable();

    private OtfClass(RandomAccessFileOrArray randomAccessFileOrArray, int i) throws IOException {
        randomAccessFileOrArray.seek(i);
        int unsignedShort = randomAccessFileOrArray.readUnsignedShort();
        if (unsignedShort == 1) {
            int unsignedShort2 = randomAccessFileOrArray.readUnsignedShort();
            int unsignedShort3 = randomAccessFileOrArray.readUnsignedShort() + unsignedShort2;
            while (unsignedShort2 < unsignedShort3) {
                this.mapClass.put(unsignedShort2, randomAccessFileOrArray.readUnsignedShort());
                unsignedShort2++;
            }
            return;
        }
        if (unsignedShort == 2) {
            int unsignedShort4 = randomAccessFileOrArray.readUnsignedShort();
            for (int i2 = 0; i2 < unsignedShort4; i2++) {
                int unsignedShort5 = randomAccessFileOrArray.readUnsignedShort();
                int unsignedShort6 = randomAccessFileOrArray.readUnsignedShort();
                for (int unsignedShort7 = randomAccessFileOrArray.readUnsignedShort(); unsignedShort7 <= unsignedShort5; unsignedShort7++) {
                    this.mapClass.put(unsignedShort7, unsignedShort6);
                }
            }
            return;
        }
        throw new IOException("Invalid class format " + unsignedShort);
    }

    public static OtfClass create(RandomAccessFileOrArray randomAccessFileOrArray, int i) {
        try {
            return new OtfClass(randomAccessFileOrArray, i);
        } catch (IOException e) {
            LoggerFactory.getLogger((Class<?>) OtfClass.class).error(MessageFormatUtil.format(IoLogMessageConstant.OPENTYPE_GDEF_TABLE_ERROR, e.getMessage()));
            return null;
        }
    }

    public int getOtfClass(int i) {
        return this.mapClass.get(i);
    }

    public boolean isMarkOtfClass(int i) {
        return hasClass(i) && getOtfClass(i) == 3;
    }

    public boolean hasClass(int i) {
        return this.mapClass.containsKey(i);
    }

    public int getOtfClass(int i, boolean z) {
        if (z) {
            if (this.mapClass.containsKey(i)) {
                return this.mapClass.get(i);
            }
            return -1;
        }
        return this.mapClass.get(i);
    }
}
