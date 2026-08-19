package com.itextpdf.p017io.font.otf;

import com.itextpdf.p017io.font.otf.ContextualRule;
import com.itextpdf.p017io.font.otf.OpenTableLookup;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ContextualTable<T extends ContextualRule> {
    protected int lookupFlag;
    protected OpenTypeFontTableReader openReader;

    protected abstract List<T> getSetOfRulesForStartGlyph(int i);

    protected ContextualTable(OpenTypeFontTableReader openTypeFontTableReader, int i) {
        this.openReader = openTypeFontTableReader;
        this.lookupFlag = i;
    }

    public T getMatchingContextRule(GlyphLine glyphLine) {
        if (glyphLine.idx >= glyphLine.end) {
            return null;
        }
        for (T t : getSetOfRulesForStartGlyph(glyphLine.get(glyphLine.idx).getCode())) {
            int iCheckIfContextMatch = checkIfContextMatch(glyphLine, t);
            if (iCheckIfContextMatch != -1) {
                glyphLine.start = glyphLine.idx;
                glyphLine.end = iCheckIfContextMatch + 1;
                return t;
            }
        }
        return null;
    }

    protected int checkIfContextMatch(GlyphLine glyphLine, T t) {
        OpenTableLookup.GlyphIndexer glyphIndexer = new OpenTableLookup.GlyphIndexer();
        glyphIndexer.line = glyphLine;
        glyphIndexer.idx = glyphLine.idx;
        int i = 1;
        while (i < t.getContextLength()) {
            glyphIndexer.nextGlyph(this.openReader, this.lookupFlag);
            if (glyphIndexer.glyph == null || !t.isGlyphMatchesInput(glyphIndexer.glyph.getCode(), i)) {
                break;
            }
            i++;
        }
        if (i == t.getContextLength()) {
            return glyphIndexer.idx;
        }
        return -1;
    }
}
