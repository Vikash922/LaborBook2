package com.itextpdf.kernel.pdf.canvas.parser.listener;

import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
class DefaultTextChunkLocationComparator implements Comparator<ITextChunkLocation> {
    private boolean leftToRight;

    public DefaultTextChunkLocationComparator() {
        this(true);
    }

    public DefaultTextChunkLocationComparator(boolean z) {
        this.leftToRight = z;
    }

    @Override // java.util.Comparator
    public int compare(ITextChunkLocation iTextChunkLocation, ITextChunkLocation iTextChunkLocation2) {
        if (iTextChunkLocation == iTextChunkLocation2) {
            return 0;
        }
        int iCompare = Integer.compare(iTextChunkLocation.orientationMagnitude(), iTextChunkLocation2.orientationMagnitude());
        if (iCompare != 0) {
            return iCompare;
        }
        int iDistPerpendicular = iTextChunkLocation.distPerpendicular() - iTextChunkLocation2.distPerpendicular();
        return iDistPerpendicular != 0 ? iDistPerpendicular : this.leftToRight ? Float.compare(iTextChunkLocation.distParallelStart(), iTextChunkLocation2.distParallelStart()) : -Float.compare(iTextChunkLocation.distParallelEnd(), iTextChunkLocation2.distParallelEnd());
    }
}
