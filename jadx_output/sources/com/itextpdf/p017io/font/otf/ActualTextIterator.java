package com.itextpdf.p017io.font.otf;

import com.itextpdf.p017io.font.otf.GlyphLine;
import com.itextpdf.p017io.util.TextUtil;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class ActualTextIterator implements Iterator<GlyphLine.GlyphLinePart> {
    private GlyphLine glyphLine;
    private int pos;

    public ActualTextIterator(GlyphLine glyphLine) {
        this.glyphLine = glyphLine;
        this.pos = glyphLine.start;
    }

    public ActualTextIterator(GlyphLine glyphLine, int i, int i2) {
        this(new GlyphLine(glyphLine.glyphs, glyphLine.actualText, i, i2));
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.pos < this.glyphLine.end;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public GlyphLine.GlyphLinePart next() {
        GlyphLine.GlyphLinePart glyphLinePartNextGlyphLinePart;
        if (this.glyphLine.actualText == null) {
            GlyphLine.GlyphLinePart glyphLinePart = new GlyphLine.GlyphLinePart(this.pos, this.glyphLine.end, null);
            this.pos = this.glyphLine.end;
            return glyphLinePart;
        }
        GlyphLine.GlyphLinePart glyphLinePartNextGlyphLinePart2 = nextGlyphLinePart(this.pos);
        if (glyphLinePartNextGlyphLinePart2 == null) {
            return null;
        }
        this.pos = glyphLinePartNextGlyphLinePart2.end;
        if (!glyphLinePartNeedsActualText(glyphLinePartNextGlyphLinePart2)) {
            glyphLinePartNextGlyphLinePart2.actualText = null;
            while (this.pos < this.glyphLine.end && (glyphLinePartNextGlyphLinePart = nextGlyphLinePart(this.pos)) != null && !glyphLinePartNeedsActualText(glyphLinePartNextGlyphLinePart)) {
                glyphLinePartNextGlyphLinePart2.end = glyphLinePartNextGlyphLinePart.end;
                this.pos = glyphLinePartNextGlyphLinePart.end;
            }
        }
        return glyphLinePartNextGlyphLinePart2;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new IllegalStateException("Operation not supported");
    }

    private GlyphLine.GlyphLinePart nextGlyphLinePart(int i) {
        if (i >= this.glyphLine.end) {
            return null;
        }
        GlyphLine.ActualText actualText = this.glyphLine.actualText.get(i);
        int i2 = i;
        while (i2 < this.glyphLine.end && this.glyphLine.actualText.get(i2) == actualText) {
            i2++;
        }
        return new GlyphLine.GlyphLinePart(i, i2, actualText != null ? actualText.value : null);
    }

    private boolean glyphLinePartNeedsActualText(GlyphLine.GlyphLinePart glyphLinePart) {
        if (glyphLinePart.actualText == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        int i = glyphLinePart.start;
        while (true) {
            if (i < glyphLinePart.end) {
                Glyph glyph = this.glyphLine.glyphs.get(i);
                if (!glyph.hasValidUnicode()) {
                    break;
                }
                sb.append(TextUtil.convertFromUtf32(glyph.getUnicode()));
                i++;
            } else {
                if (!sb.toString().equals(glyphLinePart.actualText)) {
                    break;
                }
                return false;
            }
        }
        return true;
    }
}
