package com.itextpdf.kernel.pdf.annot.da;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.colors.DeviceCmyk;
import com.itextpdf.kernel.colors.DeviceGray;
import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.svg.SvgConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class AnnotationDefaultAppearance {
    private static final Map<ExtendedAnnotationFont, String> extAnnotFontNames;
    private static final Map<StandardAnnotationFont, String> stdAnnotFontNames;
    private String colorOperand = "0 g";
    private String rawFontName = "/Helv";
    private float fontSize = 0.0f;

    static {
        HashMap map = new HashMap();
        stdAnnotFontNames = map;
        HashMap map2 = new HashMap();
        extAnnotFontNames = map2;
        map.put(StandardAnnotationFont.CourierBoldOblique, "/Courier-BoldOblique");
        map.put(StandardAnnotationFont.CourierBold, "/Courier-Bold");
        map.put(StandardAnnotationFont.CourierOblique, "/Courier-Oblique");
        map.put(StandardAnnotationFont.Courier, "/Courier");
        map.put(StandardAnnotationFont.HelveticaBoldOblique, "/Helvetica-BoldOblique");
        map.put(StandardAnnotationFont.HelveticaBold, "/Helvetica-Bold");
        map.put(StandardAnnotationFont.HelveticaOblique, "/Courier-Oblique");
        map.put(StandardAnnotationFont.Helvetica, "/Helvetica");
        map.put(StandardAnnotationFont.Symbol, "/Symbol");
        map.put(StandardAnnotationFont.TimesBoldItalic, "/Times-BoldItalic");
        map.put(StandardAnnotationFont.TimesBold, "/Times-Bold");
        map.put(StandardAnnotationFont.TimesItalic, "/Times-Italic");
        map.put(StandardAnnotationFont.TimesRoman, "/Times-Roman");
        map.put(StandardAnnotationFont.ZapfDingbats, "/ZapfDingbats");
        map2.put(ExtendedAnnotationFont.HYSMyeongJoMedium, "/HySm");
        map2.put(ExtendedAnnotationFont.HYGoThicMedium, "/HyGo");
        map2.put(ExtendedAnnotationFont.HeiseiKakuGoW5, "/KaGo");
        map2.put(ExtendedAnnotationFont.HeiseiMinW3, "/KaMi");
        map2.put(ExtendedAnnotationFont.MHeiMedium, "/MHei");
        map2.put(ExtendedAnnotationFont.MSungLight, "/MSun");
        map2.put(ExtendedAnnotationFont.STSongLight, "/STSo");
        map2.put(ExtendedAnnotationFont.MSungStdLight, "/MSun");
        map2.put(ExtendedAnnotationFont.STSongStdLight, "/STSo");
        map2.put(ExtendedAnnotationFont.HYSMyeongJoStdMedium, "/HySm");
        map2.put(ExtendedAnnotationFont.KozMinProRegular, "/KaMi");
    }

    public AnnotationDefaultAppearance() {
        setFont(StandardAnnotationFont.Helvetica);
        setFontSize(12.0f);
    }

    public AnnotationDefaultAppearance setFont(StandardAnnotationFont standardAnnotationFont) {
        setRawFontName(stdAnnotFontNames.get(standardAnnotationFont));
        return this;
    }

    public AnnotationDefaultAppearance setFont(ExtendedAnnotationFont extendedAnnotationFont) {
        setRawFontName(extAnnotFontNames.get(extendedAnnotationFont));
        return this;
    }

    public AnnotationDefaultAppearance setFontSize(float f) {
        this.fontSize = f;
        return this;
    }

    public AnnotationDefaultAppearance setColor(DeviceRgb deviceRgb) {
        setColorOperand(deviceRgb.getColorValue(), "rg");
        return this;
    }

    public AnnotationDefaultAppearance setColor(DeviceCmyk deviceCmyk) {
        setColorOperand(deviceCmyk.getColorValue(), "k");
        return this;
    }

    public AnnotationDefaultAppearance setColor(DeviceGray deviceGray) {
        setColorOperand(deviceGray.getColorValue(), SvgConstants.Tags.G);
        return this;
    }

    public PdfString toPdfString() {
        return new PdfString(MessageFormatUtil.format("{0} {1} Tf {2}", this.rawFontName, Float.valueOf(this.fontSize), this.colorOperand));
    }

    private void setColorOperand(float[] fArr, String str) {
        StringBuilder sb = new StringBuilder();
        for (float f : fArr) {
            sb.append(MessageFormatUtil.format("{0} ", Float.valueOf(f)));
        }
        sb.append(str);
        this.colorOperand = sb.toString();
    }

    private void setRawFontName(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Passed raw font name can not be null");
        }
        this.rawFontName = str;
    }
}
