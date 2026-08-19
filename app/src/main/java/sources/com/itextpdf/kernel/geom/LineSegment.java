package com.itextpdf.kernel.geom;

/* JADX INFO: loaded from: classes6.dex */
public class LineSegment {
    private final Vector endPoint;
    private final Vector startPoint;

    public LineSegment(Vector vector, Vector vector2) {
        this.startPoint = vector;
        this.endPoint = vector2;
    }

    public Vector getStartPoint() {
        return this.startPoint;
    }

    public Vector getEndPoint() {
        return this.endPoint;
    }

    public float getLength() {
        return this.endPoint.subtract(this.startPoint).length();
    }

    public Rectangle getBoundingRectangle() {
        float f = getStartPoint().get(0);
        float f2 = getStartPoint().get(1);
        float f3 = getEndPoint().get(0);
        float f4 = getEndPoint().get(1);
        return new Rectangle(Math.min(f, f3), Math.min(f2, f4), Math.abs(f3 - f), Math.abs(f4 - f2));
    }

    public LineSegment transformBy(Matrix matrix) {
        return new LineSegment(this.startPoint.cross(matrix), this.endPoint.cross(matrix));
    }

    public boolean containsSegment(LineSegment lineSegment) {
        return lineSegment != null && containsPoint(lineSegment.startPoint) && containsPoint(lineSegment.endPoint);
    }

    public boolean containsPoint(Vector vector) {
        if (vector == null) {
            return false;
        }
        Vector vectorSubtract = vector.subtract(this.startPoint);
        if (vectorSubtract.get(0) >= 0.0f && vectorSubtract.get(1) >= 0.0f && vectorSubtract.get(2) >= 0.0f) {
            Vector vectorSubtract2 = this.endPoint.subtract(vector);
            if (vectorSubtract2.get(0) >= 0.0f && vectorSubtract2.get(1) >= 0.0f && vectorSubtract2.get(2) >= 0.0f) {
                return true;
            }
        }
        return false;
    }
}
