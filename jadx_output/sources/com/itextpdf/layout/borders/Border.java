package com.itextpdf.layout.borders;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.properties.TransparentColor;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Border {
    private static final int ARC_BOTTOM_DEGREE = 270;
    private static final int ARC_LEFT_DEGREE = 180;
    private static final int ARC_QUARTER_CLOCKWISE_EXTENT = -90;
    private static final int ARC_RIGHT_DEGREE = 0;
    private static final int ARC_TOP_DEGREE = 90;
    public static final int DASHED = 1;
    public static final int DASHED_FIXED = 9;
    public static final int DOTTED = 2;
    public static final int DOUBLE = 3;
    public static final Border NO_BORDER = null;
    public static final int ROUND_DOTS = 4;
    public static final int SOLID = 0;
    public static final int _3D_GROOVE = 5;
    public static final int _3D_INSET = 6;
    public static final int _3D_OUTSET = 7;
    public static final int _3D_RIDGE = 8;
    private int hash;
    protected TransparentColor transparentColor;
    protected int type;
    protected float width;

    public enum Side {
        NONE,
        TOP,
        RIGHT,
        BOTTOM,
        LEFT
    }

    public abstract void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Side side, float f5, float f6);

    public abstract void drawCellBorder(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Side side);

    public abstract int getType();

    protected Border(float f) {
        this(ColorConstants.BLACK, f);
    }

    protected Border(Color color, float f) {
        this.transparentColor = new TransparentColor(color);
        this.width = f;
    }

    protected Border(Color color, float f, float f2) {
        this.transparentColor = new TransparentColor(color, f2);
        this.width = f;
    }

    public void draw(PdfCanvas pdfCanvas, Rectangle rectangle) {
        float x = rectangle.getX();
        float y = rectangle.getY();
        float x2 = rectangle.getX() + rectangle.getWidth();
        float height = rectangle.getHeight() + rectangle.getY();
        Side side = Side.TOP;
        float f = this.width;
        draw(pdfCanvas, x, height, x2, height, side, f, f);
        Side side2 = Side.RIGHT;
        float f2 = this.width;
        draw(pdfCanvas, x2, height, x2, y, side2, f2, f2);
        Side side3 = Side.BOTTOM;
        float f3 = this.width;
        draw(pdfCanvas, x2, y, x, y, side3, f3, f3);
        Side side4 = Side.LEFT;
        float f4 = this.width;
        draw(pdfCanvas, x, y, x, height, side4, f4, f4);
    }

    public void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, float f5, Side side, float f6, float f7) {
        draw(pdfCanvas, f, f2, f3, f4, f5, f5, f5, f5, side, f6, f7);
    }

    public void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, Side side, float f9, float f10) {
        LoggerFactory.getLogger((Class<?>) Border.class).warn(MessageFormatUtil.format(IoLogMessageConstant.METHOD_IS_NOT_IMPLEMENTED_BY_DEFAULT_OTHER_METHOD_WILL_BE_USED, "Border#draw(PdfCanvas, float, float, float, float, float, float, float, float, Side, float, float", "Border#draw(PdfCanvas, float, float, float, float, Side, float, float)"));
        draw(pdfCanvas, f, f2, f3, f4, side, f9, f10);
    }

    public Color getColor() {
        return this.transparentColor.getColor();
    }

    public float getOpacity() {
        return this.transparentColor.getOpacity();
    }

    public float getWidth() {
        return this.width;
    }

    public void setColor(Color color) {
        this.transparentColor = new TransparentColor(color, this.transparentColor.getOpacity());
    }

    public void setWidth(float f) {
        this.width = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Border) {
            Border border = (Border) obj;
            if (border.getType() == getType() && border.getColor().equals(getColor()) && border.getWidth() == getWidth() && border.transparentColor.getOpacity() == this.transparentColor.getOpacity()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.hash;
        if (i != 0) {
            return i;
        }
        int width = (((((int) getWidth()) * 31) + getColor().hashCode()) * 31) + ((int) this.transparentColor.getOpacity());
        this.hash = width;
        return width;
    }

    protected Side getBorderSide(float f, float f2, float f3, float f4, Side side) {
        boolean z;
        boolean z2;
        boolean z3;
        float f5 = f4 - f2;
        boolean z4 = false;
        if (Math.abs(f5) > 5.0E-4f) {
            z = f5 > 0.0f;
            z2 = f5 < 0.0f;
        } else {
            z = false;
            z2 = false;
        }
        float f6 = f3 - f;
        if (Math.abs(f6) > 5.0E-4f) {
            boolean z5 = f6 > 0.0f;
            z3 = f6 < 0.0f;
            z4 = z5;
        } else {
            z3 = false;
        }
        if (z4) {
            return z ? Side.LEFT : Side.TOP;
        }
        if (z2) {
            return Side.RIGHT;
        }
        if (z3) {
            return Side.BOTTOM;
        }
        return z ? Side.LEFT : side;
    }

    protected Point getIntersectionPoint(Point point, Point point2, Point point3, Point point4) {
        double y = point.getY() - point2.getY();
        double y2 = point3.getY() - point4.getY();
        double x = point2.getX() - point.getX();
        double x2 = point4.getX() - point3.getX();
        double x3 = (point.getX() * point2.getY()) - (point.getY() * point2.getX());
        double x4 = (point3.getX() * point4.getY()) - (point3.getY() * point4.getX());
        double d = (x * y2) - (x2 * y);
        return new Point(((x2 * x3) - (x * x4)) / d, ((x4 * y) - (x3 * y2)) / d);
    }

    protected float getDotsGap(double d, float f) {
        double dCeil = Math.ceil(d / ((double) f));
        return dCeil == 0.0d ? f : (float) (d / dCeil);
    }

    protected void drawDiscontinuousBorders(PdfCanvas pdfCanvas, Rectangle rectangle, float[] fArr, float[] fArr2, Side side, float f, float f2) {
        double d;
        double d2;
        double d3;
        double d4;
        PdfCanvas pdfCanvas2;
        double d5;
        PdfCanvas pdfCanvas3;
        double d6;
        double d7;
        double x = rectangle.getX();
        double y = rectangle.getY();
        double right = rectangle.getRight();
        double top = rectangle.getTop();
        double d8 = fArr[0];
        double d9 = fArr[1];
        double d10 = fArr2[0];
        double d11 = fArr2[1];
        double x2 = rectangle.getX();
        double y2 = rectangle.getY();
        double right2 = rectangle.getRight();
        double top2 = rectangle.getTop();
        double d12 = ((double) this.width) / 2.0d;
        int i = C34971.$SwitchMap$com$itextpdf$layout$borders$Border$Side[getBorderSide((float) x, (float) y, (float) right, (float) top, side).ordinal()];
        if (i == 1) {
            double d13 = f;
            double dMax = Math.max(0.0d, d8 - d13);
            double dMax2 = Math.max(0.0d, d10 - ((double) this.width));
            double dMax3 = Math.max(0.0d, d11 - ((double) this.width));
            double d14 = f2;
            double dMax4 = Math.max(0.0d, d9 - d14);
            double d15 = x2 - ((double) (f / 2.0f));
            double d16 = y2 - dMax2;
            double d17 = right2 + ((double) (f2 / 2.0f));
            double d18 = top2 - dMax3;
            double d19 = x - d13;
            Point intersectionPoint = getIntersectionPoint(new Point(d19, y + ((double) this.width)), new Point(x, y), new Point(d15, d16), new Point(d15 + 10.0d, d16));
            double d20 = d14 + right;
            Point intersectionPoint2 = getIntersectionPoint(new Point(d20, top + ((double) this.width)), new Point(right, top), new Point(d17, d18), new Point(d17 - 10.0d, d18));
            if (intersectionPoint.f2960x > intersectionPoint2.f2960x) {
                d = d17;
                Point intersectionPoint3 = getIntersectionPoint(new Point(d19, y + ((double) this.width)), intersectionPoint, intersectionPoint2, new Point(d20, ((double) this.width) + top));
                pdfCanvas.moveTo(d19, y + ((double) this.width)).lineTo(intersectionPoint3.f2960x, intersectionPoint3.f2961y).lineTo(d20, ((double) this.width) + top).lineTo(d19, y + ((double) this.width));
                d2 = d18;
            } else {
                d = d17;
                d2 = d18;
                pdfCanvas.moveTo(d19, y + ((double) this.width)).lineTo(intersectionPoint.f2960x, intersectionPoint.f2961y).lineTo(intersectionPoint2.f2960x, intersectionPoint2.f2961y).lineTo(d20, ((double) this.width) + top).lineTo(d19, y + ((double) this.width));
            }
            pdfCanvas.clip().endPath();
            pdfCanvas.arc(d15, d16 - dMax2, x + dMax + dMax, y + d12, 180.0d, -90.0d).arcContinuous((right - dMax4) - dMax4, top + d12, d, d2 - dMax3, 90.0d, -90.0d);
        } else if (i == 2) {
            double d21 = f;
            double dMax5 = Math.max(0.0d, d10 - d21);
            double dMax6 = Math.max(0.0d, d8 - ((double) this.width));
            double dMax7 = Math.max(0.0d, d9 - ((double) this.width));
            double d22 = f2;
            double dMax8 = Math.max(0.0d, d11 - d22);
            double d23 = x2 - dMax6;
            double d24 = y2 + ((double) (f / 2.0f));
            double d25 = right2 - dMax7;
            double d26 = top2 - ((double) (f2 / 2.0f));
            double d27 = y + d21;
            Point intersectionPoint4 = getIntersectionPoint(new Point(x + ((double) this.width), d27), new Point(x, y), new Point(d23, d24), new Point(d23, d24 - 10.0d));
            double d28 = top - d22;
            Point intersectionPoint5 = getIntersectionPoint(new Point(right + ((double) this.width), d28), new Point(right, top), new Point(d25, d26), new Point(d25, d26 - 10.0d));
            if (intersectionPoint4.f2961y < intersectionPoint5.f2961y) {
                d3 = d26;
                d4 = d25;
                Point intersectionPoint6 = getIntersectionPoint(new Point(((double) this.width) + x, d27), intersectionPoint4, intersectionPoint5, new Point(((double) this.width) + right, d28));
                pdfCanvas.moveTo(x + ((double) this.width), d27).lineTo(intersectionPoint6.f2960x, intersectionPoint6.f2961y).lineTo(((double) this.width) + right, d28).lineTo(x + ((double) this.width), d27).clip().endPath();
            } else {
                d3 = d26;
                d4 = d25;
                pdfCanvas.moveTo(x + ((double) this.width), d27).lineTo(intersectionPoint4.f2960x, intersectionPoint4.f2961y).lineTo(intersectionPoint5.f2960x, intersectionPoint5.f2961y).lineTo(((double) this.width) + right, d28).lineTo(x + ((double) this.width), d27).clip().endPath();
            }
            pdfCanvas.clip().endPath();
            pdfCanvas.arc(d23 - dMax6, d24, x + d12, (y - dMax5) - dMax5, 90.0d, -90.0d).arcContinuous(right + d12, top + dMax8 + dMax8, d4 - dMax7, d3, 0.0d, -90.0d);
        } else if (i == 3) {
            pdfCanvas2 = pdfCanvas;
            double d29 = f;
            double dMax9 = Math.max(0.0d, d8 - d29);
            double dMax10 = Math.max(0.0d, d10 - ((double) this.width));
            double dMax11 = Math.max(0.0d, d11 - ((double) this.width));
            double d30 = f2;
            double dMax12 = Math.max(0.0d, d9 - d30);
            double d31 = ((double) (f / 2.0f)) + x2;
            double d32 = y2 + dMax10;
            double d33 = right2 - ((double) (f2 / 2.0f));
            double d34 = top2 + dMax11;
            double d35 = x + d29;
            Point intersectionPoint7 = getIntersectionPoint(new Point(d35, y - ((double) this.width)), new Point(x, y), new Point(d31, d32), new Point(d31 - 10.0d, d32));
            double d36 = right - d30;
            Point intersectionPoint8 = getIntersectionPoint(new Point(d36, top - ((double) this.width)), new Point(right, top), new Point(d33, d34), new Point(d33 + 10.0d, d34));
            if (intersectionPoint7.f2960x < intersectionPoint8.f2960x) {
                d5 = d33;
                Point intersectionPoint9 = getIntersectionPoint(new Point(d35, y - ((double) this.width)), intersectionPoint7, intersectionPoint8, new Point(d36, top - ((double) this.width)));
                pdfCanvas2.moveTo(d35, y - ((double) this.width)).lineTo(intersectionPoint9.f2960x, intersectionPoint9.f2961y).lineTo(d36, top - ((double) this.width)).lineTo(d35, y - ((double) this.width));
            } else {
                d5 = d33;
                pdfCanvas2.moveTo(d35, y - ((double) this.width)).lineTo(intersectionPoint7.f2960x, intersectionPoint7.f2961y).lineTo(intersectionPoint8.f2960x, intersectionPoint8.f2961y).lineTo(d36, top - ((double) this.width)).lineTo(d35, y - ((double) this.width));
            }
            pdfCanvas.clip().endPath();
            pdfCanvas.arc(d31, d32 + dMax10, (x - dMax9) - dMax9, y - d12, 0.0d, -90.0d).arcContinuous(right + dMax12 + dMax12, top - d12, d5, d34 + dMax11, 270.0d, -90.0d);
        } else if (i == 4) {
            double d37 = f;
            double dMax13 = Math.max(0.0d, d10 - d37);
            double dMax14 = Math.max(0.0d, d8 - ((double) this.width));
            double dMax15 = Math.max(0.0d, d9 - ((double) this.width));
            double d38 = f2;
            double dMax16 = Math.max(0.0d, d11 - d38);
            double d39 = x2 + dMax14;
            double d40 = y2 - ((double) (f / 2.0f));
            double d41 = right2 + dMax15;
            double d42 = top2 + ((double) (f2 / 2.0f));
            double d43 = y - d37;
            Point intersectionPoint10 = getIntersectionPoint(new Point(x - ((double) this.width), d43), new Point(x, y), new Point(d39, d40), new Point(d39, d40 + 10.0d));
            double d44 = d38 + top;
            Point intersectionPoint11 = getIntersectionPoint(new Point(right - ((double) this.width), d44), new Point(right, top), new Point(d41, d42), new Point(d41, d42 + 10.0d));
            if (intersectionPoint10.f2961y > intersectionPoint11.f2961y) {
                d6 = d42;
                Point intersectionPoint12 = getIntersectionPoint(new Point(x - ((double) this.width), d43), intersectionPoint10, intersectionPoint11, new Point(right - ((double) this.width), d44));
                pdfCanvas3 = pdfCanvas;
                d7 = d41;
                pdfCanvas3.moveTo(x - ((double) this.width), d43).lineTo(intersectionPoint12.f2960x, intersectionPoint12.f2961y).lineTo(right - ((double) this.width), d44).lineTo(x - ((double) this.width), d43);
            } else {
                pdfCanvas3 = pdfCanvas;
                d6 = d42;
                d7 = d41;
                pdfCanvas3.moveTo(x - ((double) this.width), d43).lineTo(intersectionPoint10.f2960x, intersectionPoint10.f2961y).lineTo(intersectionPoint11.f2960x, intersectionPoint11.f2961y).lineTo(right - ((double) this.width), d44).lineTo(x - ((double) this.width), d43);
            }
            pdfCanvas.clip().endPath();
            pdfCanvas2 = pdfCanvas3;
            pdfCanvas.arc(d39 + dMax14, d40, x - d12, y + dMax13 + dMax13, 270.0d, -90.0d).arcContinuous(right - d12, (top - dMax16) - dMax16, d7 + dMax15, d6, 180.0d, -90.0d);
        }
        pdfCanvas.stroke().restoreState();
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.borders.Border$1 */
    static /* synthetic */ class C34971 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$borders$Border$Side;

        static {
            int[] iArr = new int[Side.values().length];
            $SwitchMap$com$itextpdf$layout$borders$Border$Side = iArr;
            try {
                iArr[Side.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$borders$Border$Side[Side.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$borders$Border$Side[Side.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$borders$Border$Side[Side.LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    protected float[] getStartingPointsForBorderSide(float f, float f2, float f3, float f4, Side side) {
        float f5 = this.width / 2.0f;
        int i = C34971.$SwitchMap$com$itextpdf$layout$borders$Border$Side[getBorderSide(f, f2, f3, f4, side).ordinal()];
        if (i == 1) {
            f2 += f5;
            f4 += f5;
        } else if (i == 2) {
            f += f5;
            f3 += f5;
        } else if (i == 3) {
            f2 -= f5;
            f4 -= f5;
        } else if (i == 4) {
            f -= f5;
            f3 -= f5;
        }
        return new float[]{f, f2, f3, f4};
    }
}
