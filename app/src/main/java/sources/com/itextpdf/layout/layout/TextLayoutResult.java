package com.itextpdf.layout.layout;

import com.itextpdf.layout.renderer.IRenderer;

/* JADX INFO: loaded from: classes6.dex */
public class TextLayoutResult extends MinMaxWidthLayoutResult {
    protected boolean containsPossibleBreak;
    protected boolean endsWithSplitCharacter;
    protected float leftMinWidth;
    protected float rightMinWidth;
    protected boolean splitForcedByNewline;
    protected boolean startsWithSplitCharacterWhiteSpace;
    protected boolean wordHasBeenSplit;

    public TextLayoutResult(int i, LayoutArea layoutArea, IRenderer iRenderer, IRenderer iRenderer2) {
        super(i, layoutArea, iRenderer, iRenderer2);
        this.containsPossibleBreak = false;
        this.startsWithSplitCharacterWhiteSpace = false;
        this.endsWithSplitCharacter = false;
    }

    public TextLayoutResult(int i, LayoutArea layoutArea, IRenderer iRenderer, IRenderer iRenderer2, IRenderer iRenderer3) {
        super(i, layoutArea, iRenderer, iRenderer2, iRenderer3);
        this.containsPossibleBreak = false;
        this.startsWithSplitCharacterWhiteSpace = false;
        this.endsWithSplitCharacter = false;
    }

    public boolean isWordHasBeenSplit() {
        return this.wordHasBeenSplit;
    }

    public TextLayoutResult setWordHasBeenSplit(boolean z) {
        this.wordHasBeenSplit = z;
        return this;
    }

    public boolean isSplitForcedByNewline() {
        return this.splitForcedByNewline;
    }

    public TextLayoutResult setSplitForcedByNewline(boolean z) {
        this.splitForcedByNewline = z;
        return this;
    }

    public boolean isContainsPossibleBreak() {
        return this.containsPossibleBreak;
    }

    public TextLayoutResult setContainsPossibleBreak(boolean z) {
        this.containsPossibleBreak = z;
        return this;
    }

    public TextLayoutResult setStartsWithSplitCharacterWhiteSpace(boolean z) {
        this.startsWithSplitCharacterWhiteSpace = z;
        return this;
    }

    public boolean isStartsWithSplitCharacterWhiteSpace() {
        return this.startsWithSplitCharacterWhiteSpace;
    }

    public TextLayoutResult setEndsWithSplitCharacter(boolean z) {
        this.endsWithSplitCharacter = z;
        return this;
    }

    public boolean isEndsWithSplitCharacter() {
        return this.endsWithSplitCharacter;
    }

    public TextLayoutResult setLeftMinWidth(float f) {
        this.leftMinWidth = f;
        return this;
    }

    public float getLeftMinWidth() {
        return this.leftMinWidth;
    }

    public TextLayoutResult setRightMinWidth(float f) {
        this.rightMinWidth = f;
        return this;
    }

    public float getRightMinWidth() {
        return this.rightMinWidth;
    }
}
