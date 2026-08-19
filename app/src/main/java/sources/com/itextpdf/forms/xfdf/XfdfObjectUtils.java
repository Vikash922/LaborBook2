package com.itextpdf.forms.xfdf;

import com.facebook.appevents.AppEventsConstants;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.colorspace.PdfDeviceCs;
import com.itextpdf.p017io.source.ByteUtils;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes6.dex */
final class XfdfObjectUtils {
    private XfdfObjectUtils() {
    }

    static Rectangle convertRectFromString(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        if (arrayList.size() == 2) {
            return new Rectangle(Float.parseFloat((String) arrayList.get(0)), Float.parseFloat((String) arrayList.get(1)));
        }
        if (arrayList.size() == 4) {
            return new Rectangle(Float.parseFloat((String) arrayList.get(0)), Float.parseFloat((String) arrayList.get(1)), Float.parseFloat((String) arrayList.get(2)), Float.parseFloat((String) arrayList.get(3)));
        }
        return null;
    }

    static PdfArray convertFringeFromString(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        float[] fArr = new float[4];
        if (arrayList.size() == 4) {
            for (int i = 0; i < 4; i++) {
                fArr[i] = Float.parseFloat((String) arrayList.get(i));
            }
        }
        return new PdfArray(fArr);
    }

    static String convertRectToString(Rectangle rectangle) {
        return convertFloatToString(rectangle.getX()) + ", " + convertFloatToString(rectangle.getY()) + ", " + convertFloatToString(rectangle.getX() + rectangle.getWidth()) + ", " + convertFloatToString(rectangle.getY() + rectangle.getHeight());
    }

    static String convertFloatToString(float f) {
        return new String(ByteUtils.getIsoBytes(f), StandardCharsets.UTF_8);
    }

    static float[] convertQuadPointsFromCoordsString(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        if (arrayList.size() == 8) {
            float[] fArr = new float[8];
            for (int i = 0; i < 8; i++) {
                fArr[i] = Float.parseFloat((String) arrayList.get(i));
            }
            return fArr;
        }
        return new float[0];
    }

    static String convertQuadPointsToCoordsString(float[] fArr) {
        StringBuilder sb = new StringBuilder(floatToPaddedString(fArr[0]));
        for (int i = 1; i < 8; i++) {
            sb.append(", ").append(floatToPaddedString(fArr[i]));
        }
        return sb.toString();
    }

    private static String floatToPaddedString(float f) {
        return new String(ByteUtils.getIsoBytes(f), StandardCharsets.UTF_8);
    }

    static int convertFlagsFromString(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        ArrayList<String> arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken().toLowerCase());
        }
        HashMap map = new HashMap();
        map.put(XfdfConstants.INVISIBLE, 1);
        map.put("hidden", 2);
        map.put(XfdfConstants.PRINT, 4);
        map.put(XfdfConstants.NO_ZOOM, 8);
        map.put(XfdfConstants.NO_ROTATE, 16);
        map.put(XfdfConstants.NO_VIEW, 32);
        map.put(XfdfConstants.READ_ONLY, 64);
        map.put(XfdfConstants.LOCKED, 128);
        map.put(XfdfConstants.TOGGLE_NO_VIEW, 256);
        int iIntValue = 0;
        for (String str2 : arrayList) {
            if (map.containsKey(str2)) {
                iIntValue += ((Integer) map.get(str2)).intValue();
            }
        }
        return iIntValue;
    }

    static String convertFlagsToString(PdfAnnotation pdfAnnotation) {
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        if (pdfAnnotation.hasFlag(1)) {
            arrayList.add(XfdfConstants.INVISIBLE);
        }
        if (pdfAnnotation.hasFlag(2)) {
            arrayList.add("hidden");
        }
        if (pdfAnnotation.hasFlag(4)) {
            arrayList.add(XfdfConstants.PRINT);
        }
        if (pdfAnnotation.hasFlag(8)) {
            arrayList.add(XfdfConstants.NO_ZOOM);
        }
        if (pdfAnnotation.hasFlag(16)) {
            arrayList.add(XfdfConstants.NO_ROTATE);
        }
        if (pdfAnnotation.hasFlag(32)) {
            arrayList.add(XfdfConstants.NO_VIEW);
        }
        if (pdfAnnotation.hasFlag(64)) {
            arrayList.add(XfdfConstants.READ_ONLY);
        }
        if (pdfAnnotation.hasFlag(128)) {
            arrayList.add(XfdfConstants.LOCKED);
        }
        if (pdfAnnotation.hasFlag(256)) {
            arrayList.add(XfdfConstants.TOGGLE_NO_VIEW);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next()).append(",");
        }
        String string = sb.toString();
        if (string.length() > 0) {
            return string.substring(0, string.length() - 1);
        }
        return null;
    }

    static String convertColorToString(float[] fArr) {
        if (fArr.length == 3) {
            return "#" + convertColorFloatToHex(fArr[0]) + convertColorFloatToHex(fArr[1]) + convertColorFloatToHex(fArr[2]);
        }
        return null;
    }

    static String convertColorToString(Color color) {
        float[] colorValue = color.getColorValue();
        if (colorValue == null || colorValue.length != 3) {
            return null;
        }
        return "#" + convertColorFloatToHex(colorValue[0]) + convertColorFloatToHex(colorValue[1]) + convertColorFloatToHex(colorValue[2]);
    }

    private static String convertColorFloatToHex(float f) {
        return (AppEventsConstants.EVENT_PARAM_VALUE_NO + Integer.toHexString((int) (((double) (f * 255.0f)) + 0.5d)).toUpperCase()).substring(r5.length() - 2);
    }

    static String convertIdToHexString(String str) {
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            sb.append(Integer.toHexString(c).toUpperCase());
        }
        return sb.toString();
    }

    static Color convertColorFromString(String str) {
        return Color.makeColor(new PdfDeviceCs.Rgb(), convertColorFloatsFromString(str));
    }

    static float[] convertColorFloatsFromString(String str) {
        float[] fArr = new float[3];
        if (str.substring(str.indexOf(35) + 1).length() == 6) {
            for (int i = 0; i < 3; i++) {
                int i2 = i * 2;
                fArr[i] = Integer.parseInt(r5.substring(i2, i2 + 2), 16);
            }
        }
        return fArr;
    }

    static String convertVerticesToString(float[] fArr) {
        if (fArr.length <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(fArr[0]);
        for (int i = 1; i < fArr.length; i++) {
            sb.append(", ").append(fArr[i]);
        }
        return sb.toString();
    }

    static String convertFringeToString(float[] fArr) {
        if (fArr.length != 4) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(fArr[0]);
        for (int i = 1; i < 4; i++) {
            sb.append(", ").append(fArr[i]);
        }
        return sb.toString();
    }

    static float[] convertVerticesFromString(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",;");
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        float[] fArr = new float[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            fArr[i] = Float.parseFloat((String) arrayList.get(i));
        }
        return fArr;
    }

    static String convertLineStartToString(float[] fArr) {
        if (fArr.length == 4) {
            return fArr[0] + "," + fArr[1];
        }
        return null;
    }

    static String convertLineEndToString(float[] fArr) {
        if (fArr.length == 4) {
            return fArr[2] + "," + fArr[3];
        }
        return null;
    }
}
