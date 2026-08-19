package com.itextpdf.kernel.pdf.canvas.parser.listener;

/* JADX INFO: loaded from: classes6.dex */
public class TextChunk {
    protected final ITextChunkLocation location;
    protected final String text;

    public TextChunk(String str, ITextChunkLocation iTextChunkLocation) {
        this.text = str;
        this.location = iTextChunkLocation;
    }

    public String getText() {
        return this.text;
    }

    public ITextChunkLocation getLocation() {
        return this.location;
    }

    void printDiagnostics() {
        System.out.println("Text (@" + this.location.getStartLocation() + " -> " + this.location.getEndLocation() + "): " + this.text);
        System.out.println("orientationMagnitude: " + this.location.orientationMagnitude());
        System.out.println("distPerpendicular: " + this.location.distPerpendicular());
        System.out.println("distParallel: " + this.location.distParallelStart());
    }

    boolean sameLine(TextChunk textChunk) {
        return getLocation().sameLine(textChunk.getLocation());
    }
}
