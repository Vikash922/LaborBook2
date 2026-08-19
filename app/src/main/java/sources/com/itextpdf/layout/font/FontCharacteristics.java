package com.itextpdf.layout.font;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class FontCharacteristics {
    private short fontWeight;
    private boolean isBold;
    private boolean isItalic;
    private boolean isMonospace;
    private boolean undefined;

    public FontCharacteristics() {
        this.isItalic = false;
        this.isBold = false;
        this.fontWeight = (short) 400;
        this.undefined = true;
        this.isMonospace = false;
    }

    public FontCharacteristics(FontCharacteristics fontCharacteristics) {
        this();
        this.isItalic = fontCharacteristics.isItalic;
        this.isBold = fontCharacteristics.isBold;
        this.fontWeight = fontCharacteristics.fontWeight;
        this.undefined = fontCharacteristics.undefined;
    }

    public FontCharacteristics setFontWeight(short s) {
        if (s > 0) {
            this.fontWeight = FontCharacteristicsUtils.normalizeFontWeight(s);
            modified();
        }
        return this;
    }

    public FontCharacteristics setFontWeight(String str) {
        return setFontWeight(FontCharacteristicsUtils.parseFontWeight(str));
    }

    public FontCharacteristics setBoldFlag(boolean z) {
        this.isBold = z;
        if (z) {
            modified();
        }
        return this;
    }

    public FontCharacteristics setItalicFlag(boolean z) {
        this.isItalic = z;
        if (z) {
            modified();
        }
        return this;
    }

    public FontCharacteristics setMonospaceFlag(boolean z) {
        this.isMonospace = z;
        if (z) {
            modified();
        }
        return this;
    }

    public FontCharacteristics setFontStyle(String str) {
        if (str != null && str.length() > 0) {
            String lowerCase = str.trim().toLowerCase();
            if (CommonCssConstants.NORMAL.equals(lowerCase)) {
                this.isItalic = false;
            } else if ("italic".equals(lowerCase) || CommonCssConstants.OBLIQUE.equals(lowerCase)) {
                this.isItalic = true;
            }
        }
        if (this.isItalic) {
            modified();
        }
        return this;
    }

    public boolean isItalic() {
        return this.isItalic;
    }

    public boolean isBold() {
        return this.isBold || this.fontWeight > 500;
    }

    public boolean isMonospace() {
        return this.isMonospace;
    }

    public short getFontWeight() {
        return this.fontWeight;
    }

    public boolean isUndefined() {
        return this.undefined;
    }

    private void modified() {
        this.undefined = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        FontCharacteristics fontCharacteristics = (FontCharacteristics) obj;
        return this.isItalic == fontCharacteristics.isItalic && this.isBold == fontCharacteristics.isBold && this.fontWeight == fontCharacteristics.fontWeight;
    }

    public int hashCode() {
        return ((((this.isItalic ? 1 : 0) * 31) + (this.isBold ? 1 : 0)) * 31) + this.fontWeight;
    }
}
