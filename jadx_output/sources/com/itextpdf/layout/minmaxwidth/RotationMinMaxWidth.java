package com.itextpdf.layout.minmaxwidth;

import com.itextpdf.kernel.geom.Rectangle;

/* JADX INFO: loaded from: classes6.dex */
public class RotationMinMaxWidth extends MinMaxWidth {
    private double maxWidthHeight;
    private double maxWidthOrigin;
    private double minWidthHeight;
    private double minWidthOrigin;

    public RotationMinMaxWidth(double d, double d2, double d3, double d4, double d5, double d6) {
        super((float) d, (float) d2, 0.0f);
        this.maxWidthOrigin = d4;
        this.minWidthOrigin = d3;
        this.minWidthHeight = d5;
        this.maxWidthHeight = d6;
    }

    public double getMinWidthOrigin() {
        return this.minWidthOrigin;
    }

    public double getMaxWidthOrigin() {
        return this.maxWidthOrigin;
    }

    public double getMinWidthHeight() {
        return this.minWidthHeight;
    }

    public double getMaxWidthHeight() {
        return this.maxWidthHeight;
    }

    public static RotationMinMaxWidth calculate(double d, double d2, MinMaxWidth minMaxWidth) {
        return calculate(new WidthFunction(d, d2), minMaxWidth.getMinWidth(), minMaxWidth.getMaxWidth());
    }

    public static RotationMinMaxWidth calculate(double d, double d2, MinMaxWidth minMaxWidth, double d3) {
        WidthFunction widthFunction = new WidthFunction(d, d2);
        WidthFunction.Interval validOriginalWidths = widthFunction.getValidOriginalWidths(d3);
        if (validOriginalWidths == null) {
            return null;
        }
        double dMax = Math.max(minMaxWidth.getMinWidth(), validOriginalWidths.getMin());
        double dMin = Math.min(minMaxWidth.getMaxWidth(), validOriginalWidths.getMax());
        if (dMin < dMax) {
            double rotatedWidth = widthFunction.getRotatedWidth(dMax);
            double rotatedHeight = widthFunction.getRotatedHeight(dMax);
            return new RotationMinMaxWidth(rotatedWidth, rotatedWidth, dMax, dMax, rotatedHeight, rotatedHeight);
        }
        return calculate(widthFunction, dMax, dMin);
    }

    public static double calculateRotatedWidth(Rectangle rectangle, double d) {
        return (((double) rectangle.getWidth()) * cos(d)) + (((double) rectangle.getHeight()) * sin(d));
    }

    private static RotationMinMaxWidth calculate(WidthFunction widthFunction, double d, double d2) {
        double d3;
        double d4;
        double d5 = d2;
        double widthDerivativeZeroPoint = widthFunction.getWidthDerivativeZeroPoint();
        if (widthDerivativeZeroPoint < d) {
            d4 = d;
            d3 = d5;
        } else if (widthDerivativeZeroPoint > d5) {
            d3 = d;
            d4 = d5;
        } else {
            if (widthFunction.getRotatedWidth(d5) <= widthFunction.getRotatedWidth(d)) {
                d5 = d;
            }
            d3 = d5;
            d4 = widthDerivativeZeroPoint;
        }
        return new RotationMinMaxWidth(widthFunction.getRotatedWidth(d4), widthFunction.getRotatedWidth(d3), d4, d3, widthFunction.getRotatedHeight(d4), widthFunction.getRotatedHeight(d3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double sin(double d) {
        return correctSinCos(Math.abs(Math.sin(d)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double cos(double d) {
        return correctSinCos(Math.abs(Math.cos(d)));
    }

    private static double correctSinCos(double d) {
        if (MinMaxWidthUtils.isEqual(d, 0.0d)) {
            return 0.0d;
        }
        if (MinMaxWidthUtils.isEqual(d, 1.0d)) {
            return 1.0d;
        }
        return d;
    }

    private static class WidthFunction {
        private double area;
        private double cos;
        private double sin;

        public WidthFunction(double d, double d2) {
            this.sin = RotationMinMaxWidth.sin(d);
            this.cos = RotationMinMaxWidth.cos(d);
            this.area = d2;
        }

        public double getRotatedWidth(double d) {
            return (this.cos * d) + ((this.area * this.sin) / d);
        }

        public double getRotatedHeight(double d) {
            return (this.sin * d) + ((this.area * this.cos) / d);
        }

        public Interval getValidOriginalWidths(double d) {
            double infWidth;
            double d2 = this.cos;
            double dSqrt = 0.0d;
            if (d2 == 0.0d) {
                dSqrt = (this.area * this.sin) / d;
                infWidth = MinMaxWidthUtils.getInfWidth();
            } else {
                double d3 = this.sin;
                if (d3 != 0.0d) {
                    double d4 = (d * d) - (((this.area * 4.0d) * d3) * d2);
                    if (d4 < 0.0d) {
                        return null;
                    }
                    dSqrt = (d - Math.sqrt(d4)) / (this.cos * 2.0d);
                    d += Math.sqrt(d4);
                    d2 = this.cos * 2.0d;
                }
                infWidth = d / d2;
            }
            return new Interval(dSqrt, infWidth);
        }

        public double getWidthDerivativeZeroPoint() {
            return Math.sqrt((this.area * this.sin) / this.cos);
        }

        public static class Interval {
            private double max;
            private double min;

            public Interval(double d, double d2) {
                this.min = d;
                this.max = d2;
            }

            public double getMin() {
                return this.min;
            }

            public double getMax() {
                return this.max;
            }
        }
    }
}
