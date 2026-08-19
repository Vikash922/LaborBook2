package com.itextpdf.io.font.otf;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ContextualRule {
    public int getBacktrackContextLength() {
        return 0;
    }

    public abstract int getContextLength();

    public int getLookaheadContextLength() {
        return 0;
    }

    public boolean isGlyphMatchesBacktrack(int i, int i2) {
        return false;
    }

    public abstract boolean isGlyphMatchesInput(int i, int i2);

    public boolean isGlyphMatchesLookahead(int i, int i2) {
        return false;
    }
}
