package com.itextpdf.layout.renderer;

import com.itextpdf.layout.properties.OverflowPropertyValue;
import com.itextpdf.p017io.util.NumberUtil;

/* JADX INFO: loaded from: classes6.dex */
public class BlockFormattingContextUtil {
    public static boolean isRendererCreateBfc(IRenderer iRenderer) {
        return (iRenderer instanceof RootRenderer) || (iRenderer instanceof CellRenderer) || isInlineBlock(iRenderer) || (iRenderer.getParent() instanceof FlexContainerRenderer) || FloatingHelper.isRendererFloating(iRenderer) || isAbsolutePosition(iRenderer) || isFixedPosition(iRenderer) || isCaption(iRenderer) || AbstractRenderer.isOverflowProperty(OverflowPropertyValue.HIDDEN, iRenderer, 103) || AbstractRenderer.isOverflowProperty(OverflowPropertyValue.HIDDEN, iRenderer, 104);
    }

    private static boolean isInlineBlock(IRenderer iRenderer) {
        return (iRenderer.getParent() instanceof LineRenderer) && ((iRenderer instanceof BlockRenderer) || (iRenderer instanceof TableRenderer));
    }

    private static boolean isAbsolutePosition(IRenderer iRenderer) {
        Integer num = 3;
        return num.equals(NumberUtil.asInteger(iRenderer.getProperty(52)));
    }

    private static boolean isFixedPosition(IRenderer iRenderer) {
        Integer num = 4;
        return num.equals(NumberUtil.asInteger(iRenderer.getProperty(52)));
    }

    private static boolean isCaption(IRenderer iRenderer) {
        return (iRenderer.getParent() instanceof TableRenderer) && (iRenderer instanceof DivRenderer);
    }
}
