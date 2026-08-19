package com.itextpdf.kernel.geom;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfPage;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class Rectangle implements Cloneable {
    static float EPS = 1.0E-4f;
    protected float height;
    protected float width;

    /* JADX INFO: renamed from: x */
    protected float f2962x;

    /* JADX INFO: renamed from: y */
    protected float f2963y;

    private static boolean linesIntersect(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8) {
        double d9 = d3 - d;
        double d10 = d4 - d2;
        double d11 = d5 - d;
        double d12 = d6 - d2;
        double d13 = d7 - d;
        double d14 = d8 - d2;
        double d15 = (d9 * d12) - (d11 * d10);
        double d16 = (d9 * d14) - (d13 * d10);
        if (d15 != 0.0d || d16 != 0.0d) {
            double d17 = (d11 * d14) - (d13 * d12);
            return d15 * d16 <= 0.0d && d17 * ((d15 + d17) - d16) <= 0.0d;
        }
        if (d9 != 0.0d) {
            if (d13 * d11 <= 0.0d) {
                return true;
            }
            if (d11 * d9 >= 0.0d) {
                if (d9 > 0.0d) {
                    if (d11 <= d9 || d13 <= d9) {
                        return true;
                    }
                } else if (d11 >= d9 || d13 >= d9) {
                    return true;
                }
            }
            return false;
        }
        if (d10 == 0.0d) {
            return false;
        }
        if (d14 * d12 <= 0.0d) {
            return true;
        }
        if (d12 * d10 >= 0.0d) {
            if (d10 > 0.0d) {
                if (d12 <= d10 || d14 <= d10) {
                    return true;
                }
            } else if (d12 >= d10 || d14 >= d10) {
                return true;
            }
        }
        return false;
    }

    public Rectangle(float f, float f2, float f3, float f4) {
        this.f2962x = f;
        this.f2963y = f2;
        this.width = f3;
        this.height = f4;
    }

    public Rectangle(float f, float f2) {
        this(0.0f, 0.0f, f, f2);
    }

    public Rectangle(Rectangle rectangle) {
        this(rectangle.getX(), rectangle.getY(), rectangle.getWidth(), rectangle.getHeight());
    }

    public static Rectangle getCommonRectangle(Rectangle... rectangleArr) {
        float x = -3.4028235E38f;
        float y = Float.MAX_VALUE;
        float y2 = -3.4028235E38f;
        float x2 = Float.MAX_VALUE;
        for (Rectangle rectangle : rectangleArr) {
            if (rectangle != null) {
                Rectangle rectangleMo3120clone = rectangle.mo3120clone();
                if (rectangleMo3120clone.getY() < y) {
                    y = rectangleMo3120clone.getY();
                }
                if (rectangleMo3120clone.getX() < x2) {
                    x2 = rectangleMo3120clone.getX();
                }
                if (rectangleMo3120clone.getY() + rectangleMo3120clone.getHeight() > y2) {
                    y2 = rectangleMo3120clone.getY() + rectangleMo3120clone.getHeight();
                }
                if (rectangleMo3120clone.getX() + rectangleMo3120clone.getWidth() > x) {
                    x = rectangleMo3120clone.getX() + rectangleMo3120clone.getWidth();
                }
            }
        }
        return new Rectangle(x2, y, x - x2, y2 - y);
    }

    public static Rectangle getRectangleOnRotatedPage(Rectangle rectangle, PdfPage pdfPage) {
        Rectangle rectangle2;
        int rotation = pdfPage.getRotation();
        if (rotation == 0) {
            return rectangle;
        }
        Rectangle pageSize = pdfPage.getPageSize();
        int i = (rotation / 90) % 4;
        if (i == 1) {
            rectangle2 = new Rectangle(pageSize.getWidth() - rectangle.getTop(), rectangle.getLeft(), rectangle.getHeight(), rectangle.getWidth());
        } else if (i == 2) {
            rectangle2 = new Rectangle(pageSize.getWidth() - rectangle.getRight(), pageSize.getHeight() - rectangle.getTop(), rectangle.getWidth(), rectangle.getHeight());
        } else {
            if (i != 3) {
                return rectangle;
            }
            rectangle2 = new Rectangle(rectangle.getLeft(), pageSize.getHeight() - rectangle.getRight(), rectangle.getHeight(), rectangle.getWidth());
        }
        return rectangle2;
    }

    public static Rectangle calculateBBox(List<Point> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Point point : list) {
            arrayList.add(Double.valueOf(point.getX()));
            arrayList2.add(Double.valueOf(point.getY()));
        }
        double dDoubleValue = ((Double) Collections.min(arrayList)).doubleValue();
        double dDoubleValue2 = ((Double) Collections.min(arrayList2)).doubleValue();
        return new Rectangle((float) dDoubleValue, (float) dDoubleValue2, (float) (((Double) Collections.max(arrayList)).doubleValue() - dDoubleValue), (float) (((Double) Collections.max(arrayList2)).doubleValue() - dDoubleValue2));
    }

    public Point[] toPointsArray() {
        return new Point[]{new Point(this.f2962x, this.f2963y), new Point(this.f2962x + this.width, this.f2963y), new Point(this.f2962x + this.width, this.f2963y + this.height), new Point(this.f2962x, this.f2963y + this.height)};
    }

    public Rectangle getIntersection(Rectangle rectangle) {
        float fMax = Math.max(this.f2962x, rectangle.f2962x);
        float fMax2 = Math.max(this.f2963y, rectangle.f2963y);
        float fMin = Math.min(getRight(), rectangle.getRight());
        float fMin2 = Math.min(getTop(), rectangle.getTop());
        float f = fMin - fMax;
        if (Math.abs(f) < EPS) {
            f = 0.0f;
        }
        float f2 = fMin2 - fMax2;
        if (Math.abs(f2) < EPS) {
            f2 = 0.0f;
        }
        if (Float.compare(f, 0.0f) < 0 || Float.compare(f2, 0.0f) < 0) {
            return null;
        }
        if (Float.compare(f, 0.0f) < 0) {
            f = 0.0f;
        }
        return new Rectangle(fMax, fMax2, f, Float.compare(f2, 0.0f) >= 0 ? f2 : 0.0f);
    }

    public boolean contains(Rectangle rectangle) {
        float x = getX();
        float y = getY();
        float width = getWidth() + x;
        float height = getHeight() + y;
        float x2 = rectangle.getX();
        float y2 = rectangle.getY();
        float width2 = rectangle.getWidth() + x2;
        float height2 = rectangle.getHeight() + y2;
        float f = EPS;
        return x - f <= x2 && y - f <= y2 && width2 <= width + f && height2 <= height + f;
    }

    public boolean overlaps(Rectangle rectangle) {
        return overlaps(rectangle, -EPS);
    }

    public boolean overlaps(Rectangle rectangle, float f) {
        return getX() + getWidth() >= rectangle.getX() + f && getX() + f <= rectangle.getX() + rectangle.getWidth() && getY() + getHeight() >= rectangle.getY() + f && getY() + f <= rectangle.getY() + rectangle.getHeight();
    }

    public Rectangle setBbox(float f, float f2, float f3, float f4) {
        if (f > f3) {
            f3 = f;
            f = f3;
        }
        if (f2 > f4) {
            f4 = f2;
            f2 = f4;
        }
        this.f2962x = f;
        this.f2963y = f2;
        this.width = f3 - f;
        this.height = f4 - f2;
        return this;
    }

    public float getX() {
        return this.f2962x;
    }

    public Rectangle setX(float f) {
        this.f2962x = f;
        return this;
    }

    public float getY() {
        return this.f2963y;
    }

    public Rectangle setY(float f) {
        this.f2963y = f;
        return this;
    }

    public float getWidth() {
        return this.width;
    }

    public Rectangle setWidth(float f) {
        this.width = f;
        return this;
    }

    public float getHeight() {
        return this.height;
    }

    public Rectangle setHeight(float f) {
        this.height = f;
        return this;
    }

    public Rectangle increaseHeight(float f) {
        this.height += f;
        return this;
    }

    public Rectangle decreaseHeight(float f) {
        this.height -= f;
        return this;
    }

    public Rectangle increaseWidth(float f) {
        this.width += f;
        return this;
    }

    public Rectangle decreaseWidth(float f) {
        this.width -= f;
        return this;
    }

    public float getLeft() {
        return this.f2962x;
    }

    public float getRight() {
        return this.f2962x + this.width;
    }

    public float getTop() {
        return this.f2963y + this.height;
    }

    public float getBottom() {
        return this.f2963y;
    }

    public Rectangle moveDown(float f) {
        this.f2963y -= f;
        return this;
    }

    public Rectangle moveUp(float f) {
        this.f2963y += f;
        return this;
    }

    public Rectangle moveRight(float f) {
        this.f2962x += f;
        return this;
    }

    public Rectangle moveLeft(float f) {
        this.f2962x -= f;
        return this;
    }

    public Rectangle applyMargins(float f, float f2, float f3, float f4, boolean z) {
        this.f2962x += (z ? -1 : 1) * f4;
        this.width -= (f4 + f2) * (z ? -1 : 1);
        this.f2963y += (z ? -1 : 1) * f3;
        this.height -= (f + f3) * (z ? -1 : 1);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean intersectsLine(float r34, float r35, float r36, float r37) {
        /*
            r33 = this;
            r0 = r35
            r1 = r37
            float r2 = r33.getX()
            double r13 = (double) r2
            float r2 = r33.getY()
            double r11 = (double) r2
            float r2 = r33.getWidth()
            double r2 = (double) r2
            double r19 = r13 + r2
            float r2 = r33.getHeight()
            double r2 = (double) r2
            double r21 = r11 + r2
            r2 = r34
            double r9 = (double) r2
            int r2 = (r13 > r9 ? 1 : (r13 == r9 ? 0 : -1))
            if (r2 > 0) goto L30
            int r2 = (r9 > r19 ? 1 : (r9 == r19 ? 0 : -1))
            if (r2 > 0) goto L30
            double r2 = (double) r0
            int r4 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
            if (r4 > 0) goto L30
            int r2 = (r2 > r21 ? 1 : (r2 == r21 ? 0 : -1))
            if (r2 <= 0) goto L7d
        L30:
            r2 = r36
            double r7 = (double) r2
            int r2 = (r13 > r7 ? 1 : (r13 == r7 ? 0 : -1))
            if (r2 > 0) goto L44
            int r2 = (r7 > r19 ? 1 : (r7 == r19 ? 0 : -1))
            if (r2 > 0) goto L44
            double r2 = (double) r1
            int r4 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
            if (r4 > 0) goto L44
            int r2 = (r2 > r21 ? 1 : (r2 == r21 ? 0 : -1))
            if (r2 <= 0) goto L7d
        L44:
            double r5 = (double) r0
            double r0 = (double) r1
            r3 = r13
            r23 = r5
            r5 = r11
            r25 = r7
            r7 = r19
            r27 = r9
            r9 = r21
            r29 = r11
            r11 = r27
            r31 = r13
            r13 = r23
            r15 = r25
            r17 = r0
            boolean r2 = linesIntersect(r3, r5, r7, r9, r11, r13, r15, r17)
            if (r2 != 0) goto L7d
            r3 = r19
            r5 = r29
            r7 = r31
            r9 = r21
            r11 = r27
            r13 = r23
            r15 = r25
            r17 = r0
            boolean r0 = linesIntersect(r3, r5, r7, r9, r11, r13, r15, r17)
            if (r0 == 0) goto L7b
            goto L7d
        L7b:
            r0 = 0
            goto L7e
        L7d:
            r0 = 1
        L7e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.geom.Rectangle.intersectsLine(float, float, float, float):boolean");
    }

    public String toString() {
        return "Rectangle: " + getWidth() + 'x' + getHeight();
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Rectangle mo3120clone() {
        try {
            return (Rectangle) super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public boolean equalsWithEpsilon(Rectangle rectangle) {
        return equalsWithEpsilon(rectangle, EPS);
    }

    public boolean equalsWithEpsilon(Rectangle rectangle, float f) {
        return Math.abs(this.f2962x - rectangle.f2962x) < f && Math.abs(this.f2963y - rectangle.f2963y) < f && Math.abs(this.width - rectangle.width) < f && Math.abs(this.height - rectangle.height) < f;
    }

    public static List<Rectangle> createBoundingRectanglesFromQuadPoint(PdfArray pdfArray) throws PdfException {
        ArrayList arrayList = new ArrayList();
        if (pdfArray.size() % 8 != 0) {
            throw new PdfException(KernelExceptionMessageConstant.QUAD_POINT_ARRAY_LENGTH_IS_NOT_A_MULTIPLE_OF_EIGHT);
        }
        int i = 0;
        while (i < pdfArray.size()) {
            int i2 = i + 8;
            arrayList.add(createBoundingRectangleFromQuadPoint(new PdfArray(Arrays.copyOfRange(pdfArray.toFloatArray(), i, i2))));
            i = i2;
        }
        return arrayList;
    }

    public static Rectangle createBoundingRectangleFromQuadPoint(PdfArray pdfArray) throws PdfException {
        if (pdfArray.size() % 8 != 0) {
            throw new PdfException(KernelExceptionMessageConstant.QUAD_POINT_ARRAY_LENGTH_IS_NOT_A_MULTIPLE_OF_EIGHT);
        }
        float f = -3.4028235E38f;
        float f2 = Float.MAX_VALUE;
        float f3 = -3.4028235E38f;
        float f4 = Float.MAX_VALUE;
        for (int i = 0; i < 8; i += 2) {
            float fFloatValue = pdfArray.getAsNumber(i).floatValue();
            float fFloatValue2 = pdfArray.getAsNumber(i + 1).floatValue();
            if (fFloatValue < f4) {
                f4 = fFloatValue;
            }
            if (fFloatValue > f) {
                f = fFloatValue;
            }
            if (fFloatValue2 < f2) {
                f2 = fFloatValue2;
            }
            if (fFloatValue2 > f3) {
                f3 = fFloatValue2;
            }
        }
        return new Rectangle(f4, f2, f - f4, f3 - f2);
    }
}
