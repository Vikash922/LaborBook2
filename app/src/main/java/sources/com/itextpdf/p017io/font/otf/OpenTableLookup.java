package com.itextpdf.p017io.font.otf;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class OpenTableLookup {
    protected int lookupFlag;
    protected OpenTypeFontTableReader openReader;
    protected int[] subTableLocations;

    public boolean hasSubstitution(int i) {
        return false;
    }

    protected abstract void readSubTable(int i) throws IOException;

    public abstract boolean transformOne(GlyphLine glyphLine);

    protected OpenTableLookup(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) {
        this.lookupFlag = i;
        this.subTableLocations = iArr;
        this.openReader = openTypeFontTableReader;
    }

    public int getLookupFlag() {
        return this.lookupFlag;
    }

    public boolean transformLine(GlyphLine glyphLine) {
        boolean z;
        glyphLine.idx = glyphLine.start;
        loop0: while (true) {
            z = false;
            while (glyphLine.idx < glyphLine.end && glyphLine.idx >= glyphLine.start) {
                if (transformOne(glyphLine) || z) {
                    z = true;
                }
            }
        }
        return z;
    }

    protected void readSubTables() throws IOException {
        for (int i : this.subTableLocations) {
            readSubTable(i);
        }
    }

    public static class GlyphIndexer {
        public Glyph glyph;
        public int idx;
        public GlyphLine line;

        public void nextGlyph(OpenTypeFontTableReader openTypeFontTableReader, int i) {
            Glyph glyph;
            this.glyph = null;
            do {
                int i2 = this.idx + 1;
                this.idx = i2;
                if (i2 >= this.line.end) {
                    return;
                } else {
                    glyph = this.line.get(this.idx);
                }
            } while (openTypeFontTableReader.isSkip(glyph.getCode(), i));
            this.glyph = glyph;
        }

        public void previousGlyph(OpenTypeFontTableReader openTypeFontTableReader, int i) {
            Glyph glyph;
            this.glyph = null;
            do {
                int i2 = this.idx - 1;
                this.idx = i2;
                if (i2 < this.line.start) {
                    return;
                } else {
                    glyph = this.line.get(this.idx);
                }
            } while (openTypeFontTableReader.isSkip(glyph.getCode(), i));
            this.glyph = glyph;
        }
    }
}
