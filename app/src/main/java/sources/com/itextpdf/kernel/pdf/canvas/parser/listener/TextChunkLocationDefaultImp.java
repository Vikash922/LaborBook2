package com.itextpdf.kernel.pdf.canvas.parser.listener;

import com.itextpdf.kernel.geom.LineSegment;
import com.itextpdf.kernel.geom.Vector;

/* JADX INFO: loaded from: classes6.dex */
class TextChunkLocationDefaultImp implements ITextChunkLocation {
    private static final float DIACRITICAL_MARKS_ALLOWED_VERTICAL_DEVIATION = 2.0f;
    private final float charSpaceWidth;
    private final float distParallelEnd;
    private final float distParallelStart;
    private final int distPerpendicular;
    private final Vector endLocation;
    private final int orientationMagnitude;
    private final Vector orientationVector;
    private final Vector startLocation;

    public TextChunkLocationDefaultImp(Vector vector, Vector vector2, float f) {
        this.startLocation = vector;
        this.endLocation = vector2;
        this.charSpaceWidth = f;
        Vector vectorSubtract = vector2.subtract(vector);
        Vector vectorNormalize = (vectorSubtract.length() == 0.0f ? new Vector(1.0f, 0.0f, 0.0f) : vectorSubtract).normalize();
        this.orientationVector = vectorNormalize;
        this.orientationMagnitude = (int) (Math.atan2(vectorNormalize.get(1), vectorNormalize.get(0)) * 1000.0d);
        this.distPerpendicular = (int) vector.subtract(new Vector(0.0f, 0.0f, 1.0f)).cross(vectorNormalize).get(2);
        this.distParallelStart = vectorNormalize.dot(vector);
        this.distParallelEnd = vectorNormalize.dot(vector2);
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextChunkLocation
    public int orientationMagnitude() {
        return this.orientationMagnitude;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextChunkLocation
    public int distPerpendicular() {
        return this.distPerpendicular;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextChunkLocation
    public float distParallelStart() {
        return this.distParallelStart;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextChunkLocation
    public float distParallelEnd() {
        return this.distParallelEnd;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextChunkLocation
    public Vector getStartLocation() {
        return this.startLocation;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextChunkLocation
    public Vector getEndLocation() {
        return this.endLocation;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextChunkLocation
    public float getCharSpaceWidth() {
        return this.charSpaceWidth;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextChunkLocation
    public boolean sameLine(ITextChunkLocation iTextChunkLocation) {
        if (orientationMagnitude() != iTextChunkLocation.orientationMagnitude()) {
            return false;
        }
        float fDistPerpendicular = distPerpendicular() - iTextChunkLocation.distPerpendicular();
        if (fDistPerpendicular == 0.0f) {
            return true;
        }
        LineSegment lineSegment = new LineSegment(this.startLocation, this.endLocation);
        LineSegment lineSegment2 = new LineSegment(iTextChunkLocation.getStartLocation(), iTextChunkLocation.getEndLocation());
        if (Math.abs(fDistPerpendicular) <= DIACRITICAL_MARKS_ALLOWED_VERTICAL_DEVIATION) {
            return lineSegment.getLength() == 0.0f || lineSegment2.getLength() == 0.0f;
        }
        return false;
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextChunkLocation
    public float distanceFromEndOf(ITextChunkLocation iTextChunkLocation) {
        return distParallelStart() - iTextChunkLocation.distParallelEnd();
    }

    @Override // com.itextpdf.kernel.pdf.canvas.parser.listener.ITextChunkLocation
    public boolean isAtWordBoundary(ITextChunkLocation iTextChunkLocation) {
        if (this.startLocation.equals(this.endLocation) || iTextChunkLocation.getEndLocation().equals(iTextChunkLocation.getStartLocation())) {
            return false;
        }
        float fDistanceFromEndOf = distanceFromEndOf(iTextChunkLocation);
        if (fDistanceFromEndOf < 0.0f) {
            fDistanceFromEndOf = iTextChunkLocation.distanceFromEndOf(this);
            if (fDistanceFromEndOf < 0.0f) {
                return false;
            }
        }
        return fDistanceFromEndOf > getCharSpaceWidth() / DIACRITICAL_MARKS_ALLOWED_VERTICAL_DEVIATION;
    }

    static boolean containsMark(ITextChunkLocation iTextChunkLocation, ITextChunkLocation iTextChunkLocation2) {
        return iTextChunkLocation.getStartLocation().get(0) <= iTextChunkLocation2.getStartLocation().get(0) && iTextChunkLocation.getEndLocation().get(0) >= iTextChunkLocation2.getEndLocation().get(0) && ((float) Math.abs(iTextChunkLocation.distPerpendicular() - iTextChunkLocation2.distPerpendicular())) <= DIACRITICAL_MARKS_ALLOWED_VERTICAL_DEVIATION;
    }
}
