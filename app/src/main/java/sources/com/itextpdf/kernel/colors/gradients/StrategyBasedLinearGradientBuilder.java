package com.itextpdf.kernel.colors.gradients;

import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;

/* JADX INFO: loaded from: classes6.dex */
public class StrategyBasedLinearGradientBuilder extends AbstractLinearGradientBuilder {
    private double rotateVectorAngle = 0.0d;
    private GradientStrategy gradientStrategy = GradientStrategy.TO_BOTTOM;
    private boolean isCentralRotationAngleStrategy = false;

    public enum GradientStrategy {
        TO_BOTTOM,
        TO_BOTTOM_LEFT,
        TO_BOTTOM_RIGHT,
        TO_LEFT,
        TO_RIGHT,
        TO_TOP,
        TO_TOP_LEFT,
        TO_TOP_RIGHT
    }

    public StrategyBasedLinearGradientBuilder setGradientDirectionAsCentralRotationAngle(double d) {
        this.rotateVectorAngle = d;
        this.isCentralRotationAngleStrategy = true;
        return this;
    }

    public StrategyBasedLinearGradientBuilder setGradientDirectionAsStrategy(GradientStrategy gradientStrategy) {
        if (gradientStrategy == null) {
            gradientStrategy = GradientStrategy.TO_BOTTOM;
        }
        this.gradientStrategy = gradientStrategy;
        this.isCentralRotationAngleStrategy = false;
        return this;
    }

    public double getRotateVectorAngle() {
        return this.rotateVectorAngle;
    }

    public GradientStrategy getGradientStrategy() {
        return this.gradientStrategy;
    }

    public boolean isCentralRotationAngleStrategy() {
        return this.isCentralRotationAngleStrategy;
    }

    @Override // com.itextpdf.kernel.colors.gradients.AbstractLinearGradientBuilder
    protected Point[] getGradientVector(Rectangle rectangle, AffineTransform affineTransform) {
        if (rectangle == null) {
            return null;
        }
        if (this.isCentralRotationAngleStrategy) {
            return buildCentralRotationCoordinates(rectangle, this.rotateVectorAngle);
        }
        return buildCoordinatesWithGradientStrategy(rectangle, this.gradientStrategy);
    }

    private static Point[] buildCoordinatesWithGradientStrategy(Rectangle rectangle, GradientStrategy gradientStrategy) {
        double x = rectangle.getX() + (rectangle.getWidth() / 2.0f);
        double y = rectangle.getY() + (rectangle.getHeight() / 2.0f);
        switch (C34711.f2903xf6216dee[gradientStrategy.ordinal()]) {
            case 1:
                return createCoordinates(x, rectangle.getBottom(), x, rectangle.getTop());
            case 2:
                return createCoordinates(rectangle.getRight(), y, rectangle.getLeft(), y);
            case 3:
                return createCoordinates(rectangle.getLeft(), y, rectangle.getRight(), y);
            case 4:
                return buildToCornerCoordinates(rectangle, new Point(rectangle.getRight(), rectangle.getTop()));
            case 5:
                return buildToCornerCoordinates(rectangle, new Point(rectangle.getRight(), rectangle.getBottom()));
            case 6:
                return buildToCornerCoordinates(rectangle, new Point(rectangle.getLeft(), rectangle.getBottom()));
            case 7:
                return buildToCornerCoordinates(rectangle, new Point(rectangle.getLeft(), rectangle.getTop()));
            default:
                return createCoordinates(x, rectangle.getTop(), x, rectangle.getBottom());
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.kernel.colors.gradients.StrategyBasedLinearGradientBuilder$1 */
    static /* synthetic */ class C34711 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$kernel$colors$gradients$StrategyBasedLinearGradientBuilder$GradientStrategy */
        static final /* synthetic */ int[] f2903xf6216dee;

        static {
            int[] iArr = new int[GradientStrategy.values().length];
            f2903xf6216dee = iArr;
            try {
                iArr[GradientStrategy.TO_TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2903xf6216dee[GradientStrategy.TO_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2903xf6216dee[GradientStrategy.TO_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2903xf6216dee[GradientStrategy.TO_TOP_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2903xf6216dee[GradientStrategy.TO_TOP_RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2903xf6216dee[GradientStrategy.TO_BOTTOM_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2903xf6216dee[GradientStrategy.TO_BOTTOM_LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2903xf6216dee[GradientStrategy.TO_BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private static Point[] buildCentralRotationCoordinates(Rectangle rectangle, double d) {
        return buildCoordinates(rectangle, AffineTransform.getRotateInstance(d, rectangle.getX() + (rectangle.getWidth() / 2.0f), rectangle.getY() + (rectangle.getHeight() / 2.0f)));
    }

    private static Point[] buildToCornerCoordinates(Rectangle rectangle, Point point) {
        return buildCoordinates(rectangle, buildToCornerTransform(new Point(rectangle.getX() + (rectangle.getWidth() / 2.0f), rectangle.getY() + (rectangle.getHeight() / 2.0f)), point));
    }

    private static AffineTransform buildToCornerTransform(Point point, Point point2) {
        double d;
        double dDistance = 1.0d / point.distance(point2);
        double y = (point2.getY() - point.getY()) * dDistance;
        double x = (point2.getX() - point.getX()) * dDistance;
        if (Math.abs(x) < 1.0E-10d) {
            y = y > 0.0d ? 1.0d : -1.0d;
            d = 0.0d;
        } else if (Math.abs(y) < 1.0E-10d) {
            d = x > 0.0d ? 1.0d : -1.0d;
            y = 0.0d;
        } else {
            d = x;
        }
        double d2 = 1.0d - d;
        return new AffineTransform(d, y, -y, d, (point.getX() * d2) + (point.getY() * y), (point.getY() * d2) - (point.getX() * y));
    }

    private static Point[] buildCoordinates(Rectangle rectangle, AffineTransform affineTransform) {
        double x = rectangle.getX() + (rectangle.getWidth() / 2.0f);
        Point[] pointArr = {affineTransform.transform(new Point(x, rectangle.getBottom()), null), affineTransform.transform(new Point(x, rectangle.getTop()), null)};
        return createCoordinatesForNewDomain(evaluateCoveringDomain(pointArr, rectangle), pointArr);
    }

    private static Point[] createCoordinates(double d, double d2, double d3, double d4) {
        return new Point[]{new Point(d, d2), new Point(d3, d4)};
    }
}
