package com.itextpdf.kernel.pdf;

import com.facebook.appevents.AppEventsConstants;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.SimpleTimeZone;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes6.dex */
public class PdfDate extends PdfObjectWrapper<PdfString> {
    private static final int[] DATE_SPACE = {1, 4, 0, 2, 2, -1, 5, 2, 0, 11, 2, 0, 12, 2, 0, 13, 2, 0};

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfDate(Calendar calendar) {
        super(new PdfString(generateStringByCalendar(calendar)));
    }

    public PdfDate() {
        this(new GregorianCalendar());
    }

    public String getW3CDate() {
        return getW3CDate(getPdfObject().getValue());
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getW3CDate(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.PdfDate.getW3CDate(java.lang.String):java.lang.String");
    }

    public static Calendar decode(String str) {
        GregorianCalendar gregorianCalendar;
        try {
            if (str.startsWith("D:")) {
                str = str.substring(2);
            }
            int length = str.length();
            int iIndexOf = str.indexOf(90);
            int i = 0;
            if (iIndexOf >= 0) {
                gregorianCalendar = new GregorianCalendar(new SimpleTimeZone(0, "ZPDF"));
            } else {
                iIndexOf = str.indexOf(43);
                int i2 = 1;
                if (iIndexOf < 0 && (iIndexOf = str.indexOf(45)) >= 0) {
                    i2 = -1;
                }
                if (iIndexOf < 0) {
                    iIndexOf = length;
                    gregorianCalendar = new GregorianCalendar();
                } else {
                    int i3 = Integer.parseInt(str.substring(iIndexOf + 1, iIndexOf + 3)) * 60;
                    if (iIndexOf + 5 < str.length()) {
                        i3 += Integer.parseInt(str.substring(iIndexOf + 4, iIndexOf + 6));
                    }
                    gregorianCalendar = new GregorianCalendar(new SimpleTimeZone(i3 * i2 * 60000, "ZPDF"));
                }
            }
            gregorianCalendar.clear();
            int i4 = 0;
            while (true) {
                int[] iArr = DATE_SPACE;
                if (i >= iArr.length || i4 >= iIndexOf) {
                    break;
                }
                int i5 = i + 1;
                gregorianCalendar.set(iArr[i], Integer.parseInt(str.substring(i4, iArr[i5] + i4)) + iArr[i + 2]);
                i4 += iArr[i5];
                i += 3;
            }
            return gregorianCalendar;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String generateStringByCalendar(Calendar calendar) {
        StringBuilder sb = new StringBuilder("D:");
        sb.append(setLength(calendar.get(1), 4));
        sb.append(setLength(calendar.get(2) + 1, 2));
        sb.append(setLength(calendar.get(5), 2));
        sb.append(setLength(calendar.get(11), 2));
        sb.append(setLength(calendar.get(12), 2));
        sb.append(setLength(calendar.get(13), 2));
        int i = (calendar.get(15) + calendar.get(16)) / 3600000;
        if (i == 0) {
            sb.append(Matrix.MATRIX_TYPE_ZERO);
        } else if (i < 0) {
            sb.append(SignatureVisitor.SUPER);
            i = -i;
        } else {
            sb.append(SignatureVisitor.EXTENDS);
        }
        if (i != 0) {
            sb.append(setLength(i, 2)).append('\'');
            sb.append(setLength(Math.abs((calendar.get(15) + calendar.get(16)) / 60000) - (i * 60), 2)).append('\'');
        }
        return sb.toString();
    }

    private static String setLength(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        while (sb.length() < i2) {
            sb.insert(0, AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
        sb.setLength(i2);
        return sb.toString();
    }
}
