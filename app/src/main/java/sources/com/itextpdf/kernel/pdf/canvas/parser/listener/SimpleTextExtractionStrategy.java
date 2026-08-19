package com.itextpdf.kernel.pdf.canvas.parser.listener;

import com.itextpdf.kernel.geom.Vector;
import com.itextpdf.kernel.pdf.canvas.parser.EventType;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class SimpleTextExtractionStrategy implements ITextExtractionStrategy {
    private Vector lastEnd;
    private Vector lastStart;
    private final StringBuilder result = new StringBuilder();

    /* JADX WARN: Removed duplicated region for block: B:13:0x004e  */
    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void eventOccurred(com.itextpdf.kernel.pdf.canvas.parser.data.IEventData r9, com.itextpdf.kernel.pdf.canvas.parser.EventType r10) {
        /*
            r8 = this;
            com.itextpdf.kernel.pdf.canvas.parser.EventType r0 = com.itextpdf.kernel.pdf.canvas.parser.EventType.RENDER_TEXT
            boolean r10 = r10.equals(r0)
            if (r10 == 0) goto L98
            com.itextpdf.kernel.pdf.canvas.parser.data.TextRenderInfo r9 = (com.itextpdf.kernel.pdf.canvas.parser.data.TextRenderInfo) r9
            java.lang.StringBuilder r10 = r8.result
            int r10 = r10.length()
            r0 = 1
            r1 = 0
            if (r10 != 0) goto L16
            r10 = r0
            goto L17
        L16:
            r10 = r1
        L17:
            com.itextpdf.kernel.geom.LineSegment r2 = r9.getBaseline()
            com.itextpdf.kernel.geom.Vector r3 = r2.getStartPoint()
            com.itextpdf.kernel.geom.Vector r2 = r2.getEndPoint()
            if (r10 != 0) goto L4e
            com.itextpdf.kernel.geom.Vector r4 = r8.lastStart
            com.itextpdf.kernel.geom.Vector r5 = r8.lastEnd
            com.itextpdf.kernel.geom.Vector r6 = r5.subtract(r4)
            com.itextpdf.kernel.geom.Vector r7 = r4.subtract(r3)
            com.itextpdf.kernel.geom.Vector r6 = r6.cross(r7)
            float r6 = r6.lengthSquared()
            com.itextpdf.kernel.geom.Vector r4 = r5.subtract(r4)
            float r4 = r4.lengthSquared()
            float r6 = r6 / r4
            r4 = 1065353216(0x3f800000, float:1.0)
            int r4 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r4 <= 0) goto L4e
            java.lang.String r10 = "\n"
            r8.appendTextChunk(r10)
            goto L8d
        L4e:
            if (r10 != 0) goto L8d
            java.lang.StringBuilder r10 = r8.result
            int r4 = r10.length()
            int r4 = r4 - r0
            char r10 = r10.charAt(r4)
            r0 = 32
            if (r10 == r0) goto L8d
            java.lang.String r10 = r9.getText()
            int r10 = r10.length()
            if (r10 <= 0) goto L8d
            java.lang.String r10 = r9.getText()
            char r10 = r10.charAt(r1)
            if (r10 == r0) goto L8d
            com.itextpdf.kernel.geom.Vector r10 = r8.lastEnd
            com.itextpdf.kernel.geom.Vector r10 = r10.subtract(r3)
            float r10 = r10.length()
            float r0 = r9.getSingleSpaceWidth()
            r1 = 1073741824(0x40000000, float:2.0)
            float r0 = r0 / r1
            int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r10 <= 0) goto L8d
            java.lang.String r10 = " "
            r8.appendTextChunk(r10)
        L8d:
            java.lang.String r9 = r9.getText()
            r8.appendTextChunk(r9)
            r8.lastStart = r3
            r8.lastEnd = r2
        L98:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.canvas.parser.listener.SimpleTextExtractionStrategy.eventOccurred(com.itextpdf.kernel.pdf.canvas.parser.data.IEventData, com.itextpdf.kernel.pdf.canvas.parser.EventType):void");
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener
    public Set<EventType> getSupportedEvents() {
        return Collections.unmodifiableSet(new LinkedHashSet(Collections.singletonList(EventType.RENDER_TEXT)));
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextExtractionStrategy
    public String getResultantText() {
        return this.result.toString();
    }

    protected final void appendTextChunk(CharSequence charSequence) {
        this.result.append(charSequence);
    }
}
