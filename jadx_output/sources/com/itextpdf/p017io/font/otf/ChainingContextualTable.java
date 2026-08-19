package com.itextpdf.p017io.font.otf;

import com.itextpdf.p017io.font.otf.ContextualRule;
import com.itextpdf.p017io.font.otf.OpenTableLookup;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ChainingContextualTable<T extends ContextualRule> extends ContextualTable<T> {
    protected ChainingContextualTable(OpenTypeFontTableReader openTypeFontTableReader, int i) {
        super(openTypeFontTableReader, i);
    }

    @Override // com.itextpdf.p017io.font.otf.ContextualTable
    public T getMatchingContextRule(GlyphLine glyphLine) {
        if (glyphLine.idx >= glyphLine.end) {
            return null;
        }
        for (T t : getSetOfRulesForStartGlyph(glyphLine.get(glyphLine.idx).getCode())) {
            int iCheckIfContextMatch = checkIfContextMatch(glyphLine, t);
            if (iCheckIfContextMatch != -1 && checkIfLookaheadContextMatch(glyphLine, t, iCheckIfContextMatch) && checkIfBacktrackContextMatch(glyphLine, t)) {
                glyphLine.start = glyphLine.idx;
                glyphLine.end = iCheckIfContextMatch + 1;
                return t;
            }
        }
        return null;
    }

    protected boolean checkIfLookaheadContextMatch(GlyphLine glyphLine, T t, int i) {
        OpenTableLookup.GlyphIndexer glyphIndexer = new OpenTableLookup.GlyphIndexer();
        glyphIndexer.line = glyphLine;
        glyphIndexer.idx = i;
        for (int i2 = 0; i2 < t.getLookaheadContextLength(); i2++) {
            glyphIndexer.nextGlyph(this.openReader, this.lookupFlag);
            if (glyphIndexer.glyph == null || !t.isGlyphMatchesLookahead(glyphIndexer.glyph.getCode(), i2)) {
                return false;
            }
        }
        return true;
    }

    protected boolean checkIfBacktrackContextMatch(GlyphLine glyphLine, T t) {
        OpenTableLookup.GlyphIndexer glyphIndexer = new OpenTableLookup.GlyphIndexer();
        glyphIndexer.line = glyphLine;
        glyphIndexer.idx = glyphLine.idx;
        for (int i = 0; i < t.getBacktrackContextLength(); i++) {
            glyphIndexer.previousGlyph(this.openReader, this.lookupFlag);
            if (glyphIndexer.glyph == null || !t.isGlyphMatchesBacktrack(glyphIndexer.glyph.getCode(), i)) {
                return false;
            }
        }
        return true;
    }
}
