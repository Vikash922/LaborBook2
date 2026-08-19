package com.itextpdf.kernel.pdf.canvas.wmf;

import com.itextpdf.p017io.font.FontEncoding;
import com.itextpdf.p017io.font.FontProgram;
import com.itextpdf.p017io.font.FontProgramFactory;
import com.itextpdf.p017io.font.constants.StandardFonts;
import com.itextpdf.svg.SvgConstants;
import com.laborbook.base.analytics.Analytics;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes6.dex */
public class MetaFont extends MetaObject {
    static final int BOLDTHRESHOLD = 600;
    static final int DEFAULT_PITCH = 0;
    static final int ETO_CLIPPED = 4;
    static final int ETO_OPAQUE = 2;
    static final int FF_DECORATIVE = 5;
    static final int FF_DONTCARE = 0;
    static final int FF_MODERN = 3;
    static final int FF_ROMAN = 1;
    static final int FF_SCRIPT = 4;
    static final int FF_SWISS = 2;
    static final int FIXED_PITCH = 1;
    static final int MARKER_BOLD = 1;
    static final int MARKER_COURIER = 0;
    static final int MARKER_HELVETICA = 4;
    static final int MARKER_ITALIC = 2;
    static final int MARKER_SYMBOL = 12;
    static final int MARKER_TIMES = 8;
    static final int NAME_SIZE = 32;
    static final int VARIABLE_PITCH = 2;
    static final String[] fontNames = {"Courier", StandardFonts.COURIER_BOLD, StandardFonts.COURIER_OBLIQUE, StandardFonts.COURIER_BOLDOBLIQUE, "Helvetica", StandardFonts.HELVETICA_BOLD, StandardFonts.HELVETICA_OBLIQUE, StandardFonts.HELVETICA_BOLDOBLIQUE, StandardFonts.TIMES_ROMAN, StandardFonts.TIMES_BOLD, StandardFonts.TIMES_ITALIC, StandardFonts.TIMES_BOLDITALIC, "Symbol", "ZapfDingbats"};
    float angle;
    int bold;
    int charset;
    FontEncoding encoding;
    String faceName;
    FontProgram font;
    int height;
    int italic;
    int pitchAndFamily;
    boolean strikeout;
    boolean underline;

    public MetaFont() {
        super(3);
        this.faceName = "arial";
        this.font = null;
        this.encoding = null;
    }

    public void init(InputMeta inputMeta) throws IOException {
        this.height = Math.abs(inputMeta.readShort());
        inputMeta.skip(2);
        this.angle = (float) ((((double) inputMeta.readShort()) / 1800.0d) * 3.141592653589793d);
        inputMeta.skip(2);
        this.bold = inputMeta.readShort() >= 600 ? 1 : 0;
        this.italic = inputMeta.readByte() == 0 ? 0 : 2;
        this.underline = inputMeta.readByte() != 0;
        this.strikeout = inputMeta.readByte() != 0;
        this.charset = inputMeta.readByte();
        inputMeta.skip(3);
        this.pitchAndFamily = inputMeta.readByte();
        byte[] bArr = new byte[32];
        int i = 0;
        while (i < 32) {
            int i2 = inputMeta.readByte();
            if (i2 != 0) {
                bArr[i] = (byte) i2;
                i++;
            }
        }
        try {
            this.faceName = new String(bArr, 0, i, "Cp1252");
        } catch (UnsupportedEncodingException unused) {
            this.faceName = new String(bArr, 0, i);
        }
        this.faceName = this.faceName.toLowerCase();
    }

    public FontProgram getFont() throws IOException {
        String str;
        FontProgram fontProgram = this.font;
        if (fontProgram != null) {
            return fontProgram;
        }
        FontProgram fontProgramCreateRegisteredFont = FontProgramFactory.createRegisteredFont(this.faceName, (this.italic != 0 ? 2 : 0) | (this.bold != 0 ? 1 : 0));
        this.encoding = FontEncoding.createFontEncoding("Cp1252");
        this.font = fontProgramCreateRegisteredFont;
        if (fontProgramCreateRegisteredFont != null) {
            return fontProgramCreateRegisteredFont;
        }
        if (this.faceName.contains("courier") || this.faceName.contains("terminal") || this.faceName.contains("fixedsys")) {
            str = fontNames[this.italic + this.bold];
        } else if (this.faceName.contains("ms sans serif") || this.faceName.contains("arial") || this.faceName.contains(Analytics.SYSTEM)) {
            str = fontNames[this.italic + 4 + this.bold];
        } else if (this.faceName.contains("arial black")) {
            str = fontNames[this.italic + 5];
        } else if (this.faceName.contains("times") || this.faceName.contains("ms serif") || this.faceName.contains("roman")) {
            str = fontNames[this.italic + 8 + this.bold];
        } else if (this.faceName.contains(SvgConstants.Tags.SYMBOL)) {
            str = fontNames[12];
        } else {
            int i = this.pitchAndFamily;
            int i2 = i & 3;
            int i3 = (i >> 4) & 7;
            if (i3 == 1) {
                str = fontNames[this.italic + 8 + this.bold];
            } else if (i3 == 2) {
                str = fontNames[this.italic + 4 + this.bold];
            } else if (i3 == 3) {
                str = fontNames[this.italic + this.bold];
            } else if (i3 != 4 && i3 != 5 && i2 == 1) {
                str = fontNames[this.italic + this.bold];
            } else {
                str = fontNames[this.italic + 4 + this.bold];
            }
        }
        try {
            this.font = FontProgramFactory.createFont(str);
            this.encoding = FontEncoding.createFontEncoding("Cp1252");
            return this.font;
        } catch (IOException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public FontEncoding getEncoding() {
        return this.encoding;
    }

    public float getAngle() {
        return this.angle;
    }

    public boolean isUnderline() {
        return this.underline;
    }

    public boolean isStrikeout() {
        return this.strikeout;
    }

    public float getFontSize(MetaState metaState) {
        return Math.abs(metaState.transformY(this.height) - metaState.transformY(0)) * WmfImageHelper.wmfFontCorrection;
    }
}
