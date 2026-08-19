package com.itextpdf.io.font;

import androidx.exifinterface.media.ExifInterface;
import com.itextpdf.io.exceptions.IOException;
import com.itextpdf.io.font.cmap.CMapCidUni;
import com.itextpdf.io.font.otf.Glyph;
import com.itextpdf.io.util.IntHashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes6.dex */
public class CidFont extends FontProgram {
    private Set<String> compatibleCmaps;
    private String fontName;
    private int pdfFontFlags;

    @Override // com.itextpdf.io.font.FontProgram
    public int getKerning(Glyph glyph, Glyph glyph2) {
        return 0;
    }

    @Override // com.itextpdf.io.font.FontProgram
    public boolean isFontSpecific() {
        return false;
    }

    CidFont(String str, Set<String> set) {
        this.fontName = str;
        this.compatibleCmaps = set;
        this.fontNames = new FontNames();
        initializeCidFontNameAndStyle(str);
        Map<String, Object> map = CidFontProperties.getAllFonts().get(this.fontNames.getFontName());
        if (map == null) {
            throw new IOException("There is no such predefined font: {0}").setMessageParams(str);
        }
        initializeCidFontProperties(map);
    }

    CidFont(String str, Set<String> set, Map<String, Object> map) {
        initializeCidFontNameAndStyle(str);
        initializeCidFontProperties(map);
        this.compatibleCmaps = set;
    }

    public boolean compatibleWith(String str) {
        if (str.equals(PdfEncodings.IDENTITY_H) || str.equals(PdfEncodings.IDENTITY_V)) {
            return true;
        }
        Set<String> set = this.compatibleCmaps;
        return set != null && set.contains(str);
    }

    @Override // com.itextpdf.io.font.FontProgram
    public int getPdfFontFlags() {
        return this.pdfFontFlags;
    }

    @Override // com.itextpdf.io.font.FontProgram
    public boolean isBuiltWith(String str) {
        return Objects.equals(this.fontName, str);
    }

    private void initializeCidFontNameAndStyle(String str) {
        String strTrimFontStyle = trimFontStyle(str);
        if (strTrimFontStyle.length() < str.length()) {
            this.fontNames.setFontName(str);
            this.fontNames.setStyle(str.substring(strTrimFontStyle.length()));
        } else {
            this.fontNames.setFontName(str);
        }
        this.fontNames.setFullName(new String[][]{new String[]{"", "", "", this.fontNames.getFontName()}});
    }

    private void initializeCidFontProperties(Map<String, Object> map) {
        this.fontIdentification.setPanose((String) map.get("Panose"));
        this.fontMetrics.setItalicAngle(Integer.parseInt((String) map.get("ItalicAngle")));
        this.fontMetrics.setCapHeight(Integer.parseInt((String) map.get("CapHeight")));
        this.fontMetrics.setTypoAscender(Integer.parseInt((String) map.get("Ascent")));
        this.fontMetrics.setTypoDescender(Integer.parseInt((String) map.get("Descent")));
        this.fontMetrics.setStemV(Integer.parseInt((String) map.get("StemV")));
        this.pdfFontFlags = Integer.parseInt((String) map.get("Flags"));
        StringTokenizer stringTokenizer = new StringTokenizer((String) map.get("FontBBox"), " []\r\n\t\f");
        this.fontMetrics.updateBbox(Integer.parseInt(stringTokenizer.nextToken()), Integer.parseInt(stringTokenizer.nextToken()), Integer.parseInt(stringTokenizer.nextToken()), Integer.parseInt(stringTokenizer.nextToken()));
        this.registry = (String) map.get("Registry");
        String compatibleUniMap = getCompatibleUniMap(this.registry);
        if (compatibleUniMap != null) {
            IntHashtable intHashtable = (IntHashtable) map.get(ExifInterface.LONGITUDE_WEST);
            CMapCidUni cid2UniCmap = FontCache.getCid2UniCmap(compatibleUniMap);
            this.avgWidth = 0;
            for (int i : cid2UniCmap.getCids()) {
                int iLookup = cid2UniCmap.lookup(i);
                Glyph glyph = new Glyph(i, intHashtable.containsKey(i) ? intHashtable.get(i) : 1000, iLookup);
                this.avgWidth += glyph.getWidth();
                this.codeToGlyph.put(Integer.valueOf(i), glyph);
                this.unicodeToGlyph.put(Integer.valueOf(iLookup), glyph);
            }
            fixSpaceIssue();
            if (this.codeToGlyph.size() != 0) {
                this.avgWidth /= this.codeToGlyph.size();
            }
        }
    }

    private static String getCompatibleUniMap(String str) {
        Iterator<String> it = CidFontProperties.getRegistryNames().get(str + "_Uni").iterator();
        String next = "";
        while (it.hasNext()) {
            next = it.next();
            if (next.endsWith("H")) {
                break;
            }
        }
        return next;
    }
}
