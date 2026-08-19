package com.itextpdf.layout.properties;

import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;

/* JADX INFO: loaded from: classes6.dex */
public class BackgroundRepeat {
    private final BackgroundRepeatValue xAxisRepeat;
    private final BackgroundRepeatValue yAxisRepeat;

    public enum BackgroundRepeatValue {
        NO_REPEAT,
        REPEAT,
        ROUND,
        SPACE
    }

    public BackgroundRepeat() {
        this(BackgroundRepeatValue.REPEAT);
    }

    public BackgroundRepeat(BackgroundRepeatValue backgroundRepeatValue) {
        this(backgroundRepeatValue, backgroundRepeatValue);
    }

    public BackgroundRepeat(BackgroundRepeatValue backgroundRepeatValue, BackgroundRepeatValue backgroundRepeatValue2) {
        this.xAxisRepeat = backgroundRepeatValue;
        this.yAxisRepeat = backgroundRepeatValue2;
    }

    public BackgroundRepeatValue getXAxisRepeat() {
        return this.xAxisRepeat;
    }

    public BackgroundRepeatValue getYAxisRepeat() {
        return this.yAxisRepeat;
    }

    public boolean isNoRepeatOnXAxis() {
        return this.xAxisRepeat == BackgroundRepeatValue.NO_REPEAT;
    }

    public boolean isNoRepeatOnYAxis() {
        return this.yAxisRepeat == BackgroundRepeatValue.NO_REPEAT;
    }

    public Point prepareRectangleToDrawingAndGetWhitespace(Rectangle rectangle, Rectangle rectangle2, BackgroundSize backgroundSize) {
        if (BackgroundRepeatValue.ROUND == this.xAxisRepeat) {
            int iCalculateRatio = calculateRatio(rectangle2.getWidth(), rectangle.getWidth());
            float height = rectangle.getHeight() / rectangle.getWidth();
            rectangle.setWidth(rectangle2.getWidth() / iCalculateRatio);
            if (BackgroundRepeatValue.ROUND != this.yAxisRepeat && backgroundSize.getBackgroundHeightSize() == null) {
                rectangle.moveUp(rectangle.getHeight() - (rectangle.getWidth() * height));
                rectangle.setHeight(rectangle.getWidth() * height);
            }
        }
        if (BackgroundRepeatValue.ROUND == this.yAxisRepeat) {
            int iCalculateRatio2 = calculateRatio(rectangle2.getHeight(), rectangle.getHeight());
            float width = rectangle.getWidth() / rectangle.getHeight();
            float f = iCalculateRatio2;
            rectangle.moveUp(rectangle.getHeight() - (rectangle2.getHeight() / f));
            rectangle.setHeight(rectangle2.getHeight() / f);
            if (BackgroundRepeatValue.ROUND != this.xAxisRepeat && backgroundSize.getBackgroundWidthSize() == null) {
                rectangle.setWidth(rectangle.getHeight() * width);
            }
        }
        return processSpaceValueAndCalculateWhitespace(rectangle, rectangle2);
    }

    private Point processSpaceValueAndCalculateWhitespace(Rectangle rectangle, Rectangle rectangle2) {
        Point point = new Point();
        if (BackgroundRepeatValue.SPACE == this.xAxisRepeat) {
            if (rectangle.getWidth() * 2.0f <= rectangle2.getWidth()) {
                rectangle.setX(rectangle2.getX());
                point.setLocation(calculateWhitespace(rectangle2.getWidth(), rectangle.getWidth()), 0.0d);
            } else {
                float fMax = Math.max(rectangle2.getRight() - rectangle.getRight(), rectangle.getLeft() - rectangle2.getLeft());
                if (fMax <= 0.0f) {
                    fMax = 0.0f;
                }
                point.setLocation(fMax, 0.0d);
            }
        }
        if (BackgroundRepeatValue.SPACE == this.yAxisRepeat) {
            if (rectangle.getHeight() * 2.0f <= rectangle2.getHeight()) {
                rectangle.setY((rectangle2.getY() + rectangle2.getHeight()) - rectangle.getHeight());
                point.setLocation(point.getX(), calculateWhitespace(rectangle2.getHeight(), rectangle.getHeight()));
            } else {
                point.setLocation(point.getX(), Math.max(rectangle2.getTop() - rectangle.getTop(), rectangle.getBottom() - rectangle2.getBottom()) > 0.0f ? r9 : 0.0f);
            }
        }
        return point;
    }

    private static int calculateRatio(float f, float f2) {
        int iFloor = (int) Math.floor(f / f2);
        if (f - (iFloor * f2) >= f2 / 2.0f) {
            iFloor++;
        }
        if (iFloor == 0) {
            return 1;
        }
        return iFloor;
    }

    private static float calculateWhitespace(float f, float f2) {
        int iFloor = (int) Math.floor(f / f2);
        if (iFloor <= 0) {
            return 0.0f;
        }
        float f3 = f - (iFloor * f2);
        return iFloor > 1 ? f3 / (iFloor - 1) : f3;
    }
}
