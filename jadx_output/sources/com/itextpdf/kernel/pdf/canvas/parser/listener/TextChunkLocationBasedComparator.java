package com.itextpdf.kernel.pdf.canvas.parser.listener;

import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
class TextChunkLocationBasedComparator implements Comparator<TextChunk> {
    private Comparator<ITextChunkLocation> locationComparator;

    public TextChunkLocationBasedComparator(Comparator<ITextChunkLocation> comparator) {
        this.locationComparator = comparator;
    }

    @Override // java.util.Comparator
    public int compare(TextChunk textChunk, TextChunk textChunk2) {
        return this.locationComparator.compare(textChunk.location, textChunk2.location);
    }
}
