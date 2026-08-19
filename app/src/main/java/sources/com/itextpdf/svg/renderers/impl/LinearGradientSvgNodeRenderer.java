package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.gradients.GradientColorStop;
import com.itextpdf.kernel.colors.gradients.LinearGradientBuilder;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.utils.SvgCoordinateUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class LinearGradientSvgNodeRenderer extends AbstractGradientSvgNodeRenderer {
    private static final double CONVERT_COEFF = 0.75d;

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        return null;
    }

    @Override // com.itextpdf.svg.renderers.ISvgPaintServer
    public Color createColor(SvgDrawContext svgDrawContext, Rectangle rectangle, float f, float f2) {
        if (rectangle == null) {
            return null;
        }
        LinearGradientBuilder linearGradientBuilder = new LinearGradientBuilder();
        Iterator<GradientColorStop> it = parseStops(f2).iterator();
        while (it.hasNext()) {
            linearGradientBuilder.addColorStop(it.next());
        }
        linearGradientBuilder.setSpreadMethod(parseSpreadMethod());
        boolean zIsObjectBoundingBoxUnits = isObjectBoundingBoxUnits();
        Point[] coordinates = getCoordinates(svgDrawContext, zIsObjectBoundingBoxUnits);
        linearGradientBuilder.setGradientVector(coordinates[0].getX(), coordinates[0].getY(), coordinates[1].getX(), coordinates[1].getY());
        linearGradientBuilder.setCurrentSpaceToGradientVectorSpaceTransformation(getGradientTransformToUserSpaceOnUse(rectangle, zIsObjectBoundingBoxUnits));
        return linearGradientBuilder.buildColor(rectangle.applyMargins(f, f, f, f, true), svgDrawContext.getCurrentCanvasTransform(), svgDrawContext.getCurrentCanvas().getDocument());
    }

    @Override // com.itextpdf.svg.renderers.impl.AbstractBranchSvgNodeRenderer, com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        AbstractBranchSvgNodeRenderer linearGradientSvgNodeRenderer = new LinearGradientSvgNodeRenderer();
        deepCopyAttributesAndStyles(linearGradientSvgNodeRenderer);
        deepCopyChildren(linearGradientSvgNodeRenderer);
        return linearGradientSvgNodeRenderer;
    }

    private List<GradientColorStop> parseStops(float f) {
        ArrayList arrayList = new ArrayList();
        for (StopSvgNodeRenderer stopSvgNodeRenderer : getChildStopRenderers()) {
            arrayList.add(new GradientColorStop(stopSvgNodeRenderer.getStopColor(), stopSvgNodeRenderer.getOffset(), GradientColorStop.OffsetType.RELATIVE));
        }
        if (!arrayList.isEmpty()) {
            GradientColorStop gradientColorStop = (GradientColorStop) arrayList.get(0);
            if (gradientColorStop.getOffset() > 0.0d) {
                arrayList.add(0, new GradientColorStop(gradientColorStop, 0.0d, GradientColorStop.OffsetType.RELATIVE));
            }
            GradientColorStop gradientColorStop2 = (GradientColorStop) arrayList.get(arrayList.size() - 1);
            if (gradientColorStop2.getOffset() < 1.0d) {
                arrayList.add(new GradientColorStop(gradientColorStop2, 1.0d, GradientColorStop.OffsetType.RELATIVE));
            }
        }
        return arrayList;
    }

    private AffineTransform getGradientTransformToUserSpaceOnUse(Rectangle rectangle, boolean z) {
        AffineTransform affineTransform = new AffineTransform();
        if (z) {
            affineTransform.translate(rectangle.getX(), rectangle.getY());
            affineTransform.scale(((double) rectangle.getWidth()) / CONVERT_COEFF, ((double) rectangle.getHeight()) / CONVERT_COEFF);
        }
        AffineTransform gradientTransform = getGradientTransform();
        if (gradientTransform != null) {
            affineTransform.concatenate(gradientTransform);
        }
        return affineTransform;
    }

    private Point[] getCoordinates(SvgDrawContext svgDrawContext, boolean z) {
        Point point;
        Point point2;
        if (z) {
            point2 = new Point(SvgCoordinateUtils.getCoordinateForObjectBoundingBox(getAttribute(SvgConstants.Attributes.f3331X1), 0.0d) * CONVERT_COEFF, SvgCoordinateUtils.getCoordinateForObjectBoundingBox(getAttribute(SvgConstants.Attributes.f3334Y1), 0.0d) * CONVERT_COEFF);
            point = new Point(SvgCoordinateUtils.getCoordinateForObjectBoundingBox(getAttribute(SvgConstants.Attributes.f3332X2), 1.0d) * CONVERT_COEFF, SvgCoordinateUtils.getCoordinateForObjectBoundingBox(getAttribute(SvgConstants.Attributes.f3335Y2), 0.0d) * CONVERT_COEFF);
        } else {
            Rectangle currentViewPort = svgDrawContext.getCurrentViewPort();
            double x = currentViewPort.getX();
            double y = currentViewPort.getY();
            double width = currentViewPort.getWidth();
            double height = currentViewPort.getHeight();
            float currentFontSize = getCurrentFontSize();
            float rootFontSize = svgDrawContext.getCssContext().getRootFontSize();
            Point point3 = new Point(SvgCoordinateUtils.getCoordinateForUserSpaceOnUse(getAttribute(SvgConstants.Attributes.f3331X1), x, x, width, currentFontSize, rootFontSize), SvgCoordinateUtils.getCoordinateForUserSpaceOnUse(getAttribute(SvgConstants.Attributes.f3334Y1), y, y, height, currentFontSize, rootFontSize));
            point = new Point(SvgCoordinateUtils.getCoordinateForUserSpaceOnUse(getAttribute(SvgConstants.Attributes.f3332X2), x + width, x, width, currentFontSize, rootFontSize), SvgCoordinateUtils.getCoordinateForUserSpaceOnUse(getAttribute(SvgConstants.Attributes.f3335Y2), y, y, height, currentFontSize, rootFontSize));
            point2 = point3;
        }
        return new Point[]{point2, point};
    }
}
