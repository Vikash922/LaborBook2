package com.itextpdf.p017io.font.otf;

import com.itextpdf.p017io.font.otf.OpenTableLookup;
import com.itextpdf.p017io.util.TextUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class GlyphLine {
    protected List<ActualText> actualText;
    public int end;
    protected List<Glyph> glyphs;
    public int idx;
    public int start;

    public interface IGlyphLineFilter {
        boolean accept(Glyph glyph);
    }

    public GlyphLine() {
        this.glyphs = new ArrayList();
    }

    public GlyphLine(List<Glyph> list) {
        this.glyphs = list;
        this.start = 0;
        this.end = list.size();
    }

    public GlyphLine(List<Glyph> list, int i, int i2) {
        this.glyphs = list;
        this.start = i;
        this.end = i2;
    }

    protected GlyphLine(List<Glyph> list, List<ActualText> list2, int i, int i2) {
        this(list, i, i2);
        this.actualText = list2;
    }

    public GlyphLine(GlyphLine glyphLine) {
        this.glyphs = glyphLine.glyphs;
        this.actualText = glyphLine.actualText;
        this.start = glyphLine.start;
        this.end = glyphLine.end;
        this.idx = glyphLine.idx;
    }

    public GlyphLine(GlyphLine glyphLine, int i, int i2) {
        this.glyphs = glyphLine.glyphs.subList(i, i2);
        List<ActualText> list = glyphLine.actualText;
        if (list != null) {
            this.actualText = list.subList(i, i2);
        }
        this.start = 0;
        this.end = i2 - i;
        this.idx = glyphLine.idx - i;
    }

    public String toUnicodeString(int i, int i2) {
        ActualTextIterator actualTextIterator = new ActualTextIterator(this, i, i2);
        StringBuilder sb = new StringBuilder();
        while (actualTextIterator.hasNext()) {
            GlyphLinePart next = actualTextIterator.next();
            if (next.actualText != null) {
                sb.append(next.actualText);
            } else {
                for (int i3 = next.start; i3 < next.end; i3++) {
                    sb.append(this.glyphs.get(i3).getUnicodeChars());
                }
            }
        }
        return sb.toString();
    }

    public String toString() {
        return toUnicodeString(this.start, this.end);
    }

    public GlyphLine copy(int i, int i2) {
        GlyphLine glyphLine = new GlyphLine();
        glyphLine.start = 0;
        glyphLine.end = i2 - i;
        glyphLine.glyphs = new ArrayList(this.glyphs.subList(i, i2));
        glyphLine.actualText = this.actualText == null ? null : new ArrayList(this.actualText.subList(i, i2));
        return glyphLine;
    }

    public Glyph get(int i) {
        return this.glyphs.get(i);
    }

    public Glyph set(int i, Glyph glyph) {
        return this.glyphs.set(i, glyph);
    }

    public void add(Glyph glyph) {
        this.glyphs.add(glyph);
        List<ActualText> list = this.actualText;
        if (list != null) {
            list.add(null);
        }
    }

    public void add(int i, Glyph glyph) {
        this.glyphs.add(i, glyph);
        List<ActualText> list = this.actualText;
        if (list != null) {
            list.add(i, null);
        }
    }

    public void setGlyphs(List<Glyph> list) {
        this.glyphs = new ArrayList(list);
        this.start = 0;
        this.end = list.size();
        this.actualText = null;
    }

    public void add(GlyphLine glyphLine) {
        if (glyphLine.actualText != null) {
            if (this.actualText == null) {
                this.actualText = new ArrayList(this.glyphs.size());
                for (int i = 0; i < this.glyphs.size(); i++) {
                    this.actualText.add(null);
                }
            }
            this.actualText.addAll(glyphLine.actualText.subList(glyphLine.start, glyphLine.end));
        }
        this.glyphs.addAll(glyphLine.glyphs.subList(glyphLine.start, glyphLine.end));
        if (this.actualText != null) {
            while (this.actualText.size() < this.glyphs.size()) {
                this.actualText.add(null);
            }
        }
    }

    public void replaceContent(GlyphLine glyphLine) {
        this.glyphs.clear();
        this.glyphs.addAll(glyphLine.glyphs);
        if (glyphLine.actualText != null) {
            List<ActualText> list = this.actualText;
            if (list == null) {
                this.actualText = new ArrayList();
            } else {
                list.clear();
            }
            this.actualText.addAll(glyphLine.actualText);
        } else {
            this.actualText = null;
        }
        this.start = glyphLine.start;
        this.end = glyphLine.end;
    }

    public int size() {
        return this.glyphs.size();
    }

    public void substituteManyToOne(OpenTypeFontTableReader openTypeFontTableReader, int i, int i2, int i3) {
        OpenTableLookup.GlyphIndexer glyphIndexer = new OpenTableLookup.GlyphIndexer();
        glyphIndexer.line = this;
        glyphIndexer.idx = this.idx;
        StringBuilder sb = new StringBuilder();
        Glyph glyph = this.glyphs.get(this.idx);
        if (glyph.getChars() != null) {
            sb.append(glyph.getChars());
        } else if (glyph.hasValidUnicode()) {
            sb.append(TextUtil.convertFromUtf32(glyph.getUnicode()));
        }
        for (int i4 = 0; i4 < i2; i4++) {
            glyphIndexer.nextGlyph(openTypeFontTableReader, i);
            Glyph glyph2 = this.glyphs.get(glyphIndexer.idx);
            if (glyph2.getChars() != null) {
                sb.append(glyph2.getChars());
            } else if (glyph2.hasValidUnicode()) {
                sb.append(TextUtil.convertFromUtf32(glyph2.getUnicode()));
            }
            int i5 = glyphIndexer.idx;
            glyphIndexer.idx = i5 - 1;
            removeGlyph(i5);
        }
        char[] cArr = new char[sb.length()];
        sb.getChars(0, sb.length(), cArr, 0);
        Glyph glyph3 = openTypeFontTableReader.getGlyph(i3);
        glyph3.setChars(cArr);
        this.glyphs.set(this.idx, glyph3);
        this.end -= i2;
    }

    public void substituteOneToOne(OpenTypeFontTableReader openTypeFontTableReader, int i) {
        Glyph glyph = this.glyphs.get(this.idx);
        Glyph glyph2 = openTypeFontTableReader.getGlyph(i);
        if (glyph.getChars() != null) {
            glyph2.setChars(glyph.getChars());
        } else if (glyph2.hasValidUnicode()) {
            glyph2.setChars(TextUtil.convertFromUtf32(glyph2.getUnicode()));
        } else if (glyph.hasValidUnicode()) {
            glyph2.setChars(TextUtil.convertFromUtf32(glyph.getUnicode()));
        }
        this.glyphs.set(this.idx, glyph2);
    }

    public void substituteOneToMany(OpenTypeFontTableReader openTypeFontTableReader, int[] iArr) {
        int i = iArr[0];
        Glyph glyph = this.glyphs.get(this.idx);
        this.glyphs.set(this.idx, openTypeFontTableReader.getGlyph(i));
        if (iArr.length > 1) {
            ArrayList arrayList = new ArrayList(iArr.length - 1);
            for (int i2 = 1; i2 < iArr.length; i2++) {
                arrayList.add(openTypeFontTableReader.getGlyph(iArr[i2]));
            }
            addAllGlyphs(this.idx + 1, arrayList);
            List<ActualText> list = this.actualText;
            if (list != null) {
                if (list.get(this.idx) == null) {
                    this.actualText.set(this.idx, new ActualText(glyph.getUnicodeString()));
                }
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    List<ActualText> list2 = this.actualText;
                    int i4 = this.idx;
                    list2.set(i4 + 1 + i3, list2.get(i4));
                }
            }
            this.idx += iArr.length - 1;
            this.end += iArr.length - 1;
        }
    }

    public GlyphLine filter(IGlyphLineFilter iGlyphLineFilter) {
        ArrayList arrayList = new ArrayList(this.end - this.start);
        ArrayList arrayList2 = this.actualText != null ? new ArrayList(this.end - this.start) : null;
        boolean z = false;
        for (int i = this.start; i < this.end; i++) {
            if (iGlyphLineFilter.accept(this.glyphs.get(i))) {
                arrayList.add(this.glyphs.get(i));
                if (arrayList2 != null) {
                    arrayList2.add(this.actualText.get(i));
                }
            } else {
                z = true;
            }
        }
        return z ? new GlyphLine(arrayList, arrayList2, 0, arrayList.size()) : this;
    }

    public void setActualText(int i, int i2, String str) {
        if (this.actualText == null) {
            this.actualText = new ArrayList(this.glyphs.size());
            for (int i3 = 0; i3 < this.glyphs.size(); i3++) {
                this.actualText.add(null);
            }
        }
        ActualText actualText = new ActualText(str);
        while (i < i2) {
            this.actualText.set(i, actualText);
            i++;
        }
    }

    public Iterator<GlyphLinePart> iterator() {
        return new ActualTextIterator(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        GlyphLine glyphLine = (GlyphLine) obj;
        int i = this.end;
        int i2 = this.start;
        if (i - i2 != glyphLine.end - glyphLine.start) {
            return false;
        }
        List<ActualText> list = this.actualText;
        if ((list == null && glyphLine.actualText != null) || (list != null && glyphLine.actualText == null)) {
            return false;
        }
        while (i2 < this.end) {
            int i3 = (glyphLine.start + i2) - this.start;
            Glyph glyph = get(i2);
            Glyph glyph2 = glyphLine.get(i3);
            if ((glyph == null && glyph2 != null) || (glyph != null && !glyph.equals(glyph2))) {
                return false;
            }
            List<ActualText> list2 = this.actualText;
            ActualText actualText = list2 == null ? null : list2.get(i2);
            List<ActualText> list3 = glyphLine.actualText;
            ActualText actualText2 = list3 != null ? list3.get(i3) : null;
            if ((actualText == null && actualText2 != null) || (actualText != null && !actualText.equals(actualText2))) {
                return false;
            }
            i2++;
        }
        return true;
    }

    public int hashCode() {
        int i = this.start;
        int iHashCode = (i * 31) + this.end;
        while (i < this.end) {
            iHashCode = (iHashCode * 31) + this.glyphs.get(i).hashCode();
            i++;
        }
        if (this.actualText != null) {
            for (int i2 = this.start; i2 < this.end; i2++) {
                iHashCode *= 31;
                if (this.actualText.get(i2) != null) {
                    iHashCode += this.actualText.get(i2).hashCode();
                }
            }
        }
        return iHashCode;
    }

    private void removeGlyph(int i) {
        this.glyphs.remove(i);
        List<ActualText> list = this.actualText;
        if (list != null) {
            list.remove(i);
        }
    }

    private void addAllGlyphs(int i, List<Glyph> list) {
        this.glyphs.addAll(i, list);
        if (this.actualText != null) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.actualText.add(i, null);
            }
        }
    }

    public static class GlyphLinePart {
        public String actualText;
        public int end;
        public boolean reversed;
        public int start;

        public GlyphLinePart(int i, int i2) {
            this(i, i2, null);
        }

        public GlyphLinePart(int i, int i2, String str) {
            this.start = i;
            this.end = i2;
            this.actualText = str;
        }

        public GlyphLinePart setReversed(boolean z) {
            this.reversed = z;
            return this;
        }
    }

    protected static class ActualText {
        public String value;

        public ActualText(String str) {
            this.value = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ActualText actualText = (ActualText) obj;
            String str = this.value;
            return (str == null && actualText.value == null) || str.equals(actualText.value);
        }

        public int hashCode() {
            return this.value.hashCode() * 31;
        }
    }
}
