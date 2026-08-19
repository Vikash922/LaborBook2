package com.itextpdf.layout.minmaxwidth;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.layout.IPropertyContainer;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class MinMaxWidthUtils {
    private static final float eps = 0.01f;
    private static final float max = 32760.0f;

    public static float getEps() {
        return eps;
    }

    private static float getInfHeight() {
        return 1000000.0f;
    }

    public static float getInfWidth() {
        return max;
    }

    public static boolean isEqual(double d, double d2) {
        return Math.abs(d - d2) < 0.009999999776482582d;
    }

    public static MinMaxWidth countDefaultMinMaxWidth(IRenderer iRenderer) {
        LayoutResult layoutResultLayout = iRenderer.layout(new LayoutContext(new LayoutArea(1, new Rectangle(getInfWidth(), getInfHeight()))));
        return layoutResultLayout.getStatus() == 3 ? new MinMaxWidth() : new MinMaxWidth(0.0f, layoutResultLayout.getOccupiedArea().getBBox().getWidth(), 0.0f);
    }

    public static float getBorderWidth(IPropertyContainer iPropertyContainer) {
        Border border = (Border) iPropertyContainer.getProperty(9);
        Border border2 = (Border) iPropertyContainer.getProperty(12);
        Border border3 = (Border) iPropertyContainer.getProperty(11);
        if (!iPropertyContainer.hasOwnProperty(12)) {
            border2 = border;
        }
        if (iPropertyContainer.hasOwnProperty(11)) {
            border = border3;
        }
        return (border2 != null ? border2.getWidth() : 0.0f) + (border != null ? border.getWidth() : 0.0f);
    }

    public static float getMarginsWidth(IPropertyContainer iPropertyContainer) {
        UnitValue unitValue = (UnitValue) iPropertyContainer.getProperty(45);
        if (unitValue != null && !unitValue.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) MinMaxWidthUtils.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 45));
        }
        UnitValue unitValue2 = (UnitValue) iPropertyContainer.getProperty(44);
        if (unitValue2 != null && !unitValue2.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) MinMaxWidthUtils.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 44));
        }
        return (unitValue != null ? unitValue.getValue() : 0.0f) + (unitValue2 != null ? unitValue2.getValue() : 0.0f);
    }

    public static float getPaddingWidth(IPropertyContainer iPropertyContainer) {
        UnitValue unitValue = (UnitValue) iPropertyContainer.getProperty(49);
        if (unitValue != null && !unitValue.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) MinMaxWidthUtils.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 49));
        }
        UnitValue unitValue2 = (UnitValue) iPropertyContainer.getProperty(48);
        if (unitValue2 != null && !unitValue2.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) MinMaxWidthUtils.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 48));
        }
        return (unitValue != null ? unitValue.getValue() : 0.0f) + (unitValue2 != null ? unitValue2.getValue() : 0.0f);
    }
}
