package com.itextpdf.p017io.font;

import com.itextpdf.p017io.font.constants.FontStretches;
import com.itextpdf.p017io.font.constants.FontWeights;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class FontNames {
    protected Map<Integer, List<String[]>> allNames;
    private boolean allowEmbedding;
    private String cidFontName;
    private String[][] familyName;
    private String fontName;
    private String[][] fullName;
    private int macStyle;
    private String[][] subfamily;
    private String style = "";
    private int weight = 400;
    private String fontStretch = FontStretches.NORMAL;

    public String[][] getNames(int i) {
        List<String[]> list = this.allNames.get(Integer.valueOf(i));
        if (list != null && list.size() > 0) {
            return listToArray(list);
        }
        return null;
    }

    public String[][] getFullName() {
        return this.fullName;
    }

    public String getFontName() {
        return this.fontName;
    }

    public String getCidFontName() {
        return this.cidFontName;
    }

    public String[][] getFamilyName() {
        return this.familyName;
    }

    public String getStyle() {
        return this.style;
    }

    public String getSubfamily() {
        String[][] strArr = this.subfamily;
        return strArr != null ? strArr[0][3] : "";
    }

    public int getFontWeight() {
        return this.weight;
    }

    protected void setFontWeight(int i) {
        this.weight = FontWeights.normalizeFontWeight(i);
    }

    public String getFontStretch() {
        return this.fontStretch;
    }

    protected void setFontStretch(String str) {
        this.fontStretch = str;
    }

    public boolean allowEmbedding() {
        return this.allowEmbedding;
    }

    public boolean isBold() {
        return (this.macStyle & 1) != 0;
    }

    public boolean isItalic() {
        return (this.macStyle & 2) != 0;
    }

    public boolean isUnderline() {
        return (this.macStyle & 4) != 0;
    }

    public boolean isOutline() {
        return (this.macStyle & 8) != 0;
    }

    public boolean isShadow() {
        return (this.macStyle & 16) != 0;
    }

    public boolean isCondensed() {
        return (this.macStyle & 32) != 0;
    }

    public boolean isExtended() {
        return (this.macStyle & 64) != 0;
    }

    protected void setAllNames(Map<Integer, List<String[]>> map) {
        this.allNames = map;
    }

    protected void setFullName(String[][] strArr) {
        this.fullName = strArr;
    }

    protected void setFullName(String str) {
        this.fullName = new String[][]{new String[]{"", "", "", str}};
    }

    protected void setFontName(String str) {
        this.fontName = str;
    }

    protected void setCidFontName(String str) {
        this.cidFontName = str;
    }

    protected void setFamilyName(String[][] strArr) {
        this.familyName = strArr;
    }

    protected void setFamilyName(String str) {
        this.familyName = new String[][]{new String[]{"", "", "", str}};
    }

    protected void setStyle(String str) {
        this.style = str;
    }

    protected void setSubfamily(String str) {
        this.subfamily = new String[][]{new String[]{"", "", "", str}};
    }

    protected void setSubfamily(String[][] strArr) {
        this.subfamily = strArr;
    }

    protected void setMacStyle(int i) {
        this.macStyle = i;
    }

    protected int getMacStyle() {
        return this.macStyle;
    }

    protected void setAllowEmbedding(boolean z) {
        this.allowEmbedding = z;
    }

    private String[][] listToArray(List<String[]> list) {
        String[][] strArr = new String[list.size()][];
        for (int i = 0; i < list.size(); i++) {
            strArr[i] = list.get(i);
        }
        return strArr;
    }

    public String toString() {
        String fontName = getFontName();
        return (fontName == null || fontName.length() <= 0) ? super.toString() : fontName;
    }
}
