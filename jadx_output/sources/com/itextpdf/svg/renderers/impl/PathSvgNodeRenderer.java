package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.geom.Vector;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.svg.MarkerVertexType;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.exceptions.SvgProcessingException;
import com.itextpdf.svg.renderers.IMarkerCapable;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.renderers.path.IPathShape;
import com.itextpdf.svg.renderers.path.SvgPathShapeFactory;
import com.itextpdf.svg.renderers.path.impl.AbstractPathShape;
import com.itextpdf.svg.renderers.path.impl.ClosePath;
import com.itextpdf.svg.renderers.path.impl.IControlPointCurve;
import com.itextpdf.svg.renderers.path.impl.MoveTo;
import com.itextpdf.svg.renderers.path.impl.QuadraticSmoothCurveTo;
import com.itextpdf.svg.renderers.path.impl.SmoothSCurveTo;
import com.itextpdf.svg.utils.SvgCoordinateUtils;
import com.itextpdf.svg.utils.SvgCssUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public class PathSvgNodeRenderer extends AbstractSvgNodeRenderer implements IMarkerCapable {
    private static final String SPACE_CHAR = " ";
    private ClosePath zOperator = null;
    private static final String INVALID_OPERATOR_REGEX = "(?:(?![mzlhvcsqtae])\\p{L})";
    private static final Pattern INVALID_REGEX_PATTERN = Pattern.compile(INVALID_OPERATOR_REGEX, 2);
    private static final Pattern SPLIT_PATTERN = Pattern.compile("(?=[mlhvcsqtaz])", 2);

    @Override // com.itextpdf.svg.renderers.impl.AbstractSvgNodeRenderer
    public void doDraw(SvgDrawContext svgDrawContext) {
        PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
        currentCanvas.writeLiteral("% path\n");
        Iterator<IPathShape> it = getShapes().iterator();
        while (it.hasNext()) {
            it.next().draw(currentCanvas);
        }
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer createDeepCopy() {
        PathSvgNodeRenderer pathSvgNodeRenderer = new PathSvgNodeRenderer();
        deepCopyAttributesAndStyles(pathSvgNodeRenderer);
        return pathSvgNodeRenderer;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Rectangle getObjectBoundingBox(SvgDrawContext svgDrawContext) {
        Rectangle commonRectangle = null;
        Point endingPoint = null;
        for (IPathShape iPathShape : getShapes()) {
            if (endingPoint == null) {
                endingPoint = iPathShape.getEndingPoint();
            }
            commonRectangle = Rectangle.getCommonRectangle(commonRectangle, iPathShape.getPathShapeRectangle(endingPoint));
            endingPoint = iPathShape.getEndingPoint();
        }
        return commonRectangle;
    }

    private String[] getShapeCoordinates(IPathShape iPathShape, IPathShape iPathShape2, String[] strArr) {
        String[] strArrConcatenate = null;
        if (iPathShape instanceof ClosePath) {
            return null;
        }
        if ((iPathShape instanceof SmoothSCurveTo) || (iPathShape instanceof QuadraticSmoothCurveTo)) {
            String[] strArr2 = new String[2];
            if (iPathShape2 != null) {
                Point endingPoint = iPathShape2.getEndingPoint();
                if (iPathShape2 instanceof IControlPointCurve) {
                    Point lastControlPoint = ((IControlPointCurve) iPathShape2).getLastControlPoint();
                    float x = (float) ((endingPoint.getX() * 2.0d) - lastControlPoint.getX());
                    float y = (float) ((endingPoint.getY() * 2.0d) - lastControlPoint.getY());
                    strArr2[0] = SvgCssUtils.convertFloatToString(x);
                    strArr2[1] = SvgCssUtils.convertFloatToString(y);
                } else {
                    strArr2[0] = SvgCssUtils.convertDoubleToString(endingPoint.getX());
                    strArr2[1] = SvgCssUtils.convertDoubleToString(endingPoint.getY());
                }
                strArrConcatenate = concatenate(strArr2, strArr);
            } else {
                throw new SvgProcessingException(SvgExceptionMessageConstant.INVALID_SMOOTH_CURVE_USE);
            }
        }
        return strArrConcatenate == null ? strArr : strArrConcatenate;
    }

    private List<IPathShape> processPathOperator(String[] strArr, IPathShape iPathShape) {
        int i;
        ArrayList arrayList = new ArrayList();
        if (strArr.length != 0 && !strArr[0].isEmpty() && SvgPathShapeFactory.getArgumentCount(strArr[0]) >= 0) {
            int argumentCount = SvgPathShapeFactory.getArgumentCount(strArr[0]);
            if (argumentCount == 0) {
                if (iPathShape == null) {
                    throw new SvgProcessingException(SvgExceptionMessageConstant.INVALID_CLOSEPATH_OPERATOR_USE);
                }
                arrayList.add(this.zOperator);
                return arrayList;
            }
            int i2 = 1;
            while (i2 < strArr.length && (i = i2 + argumentCount) <= strArr.length) {
                IPathShape iPathShapeCreatePathShape = SvgPathShapeFactory.createPathShape(strArr[0]);
                if (iPathShapeCreatePathShape instanceof MoveTo) {
                    arrayList.addAll(addMoveToShapes(iPathShapeCreatePathShape, strArr, iPathShape));
                    return arrayList;
                }
                String[] shapeCoordinates = getShapeCoordinates(iPathShapeCreatePathShape, iPathShape, (String[]) Arrays.copyOfRange(strArr, i2, i));
                if (iPathShapeCreatePathShape != null) {
                    if (shapeCoordinates != null) {
                        iPathShapeCreatePathShape.setCoordinates(shapeCoordinates, getCurrentPoint(iPathShape));
                    }
                    arrayList.add(iPathShapeCreatePathShape);
                }
                i2 = i;
                iPathShape = iPathShapeCreatePathShape;
            }
        }
        return arrayList;
    }

    private List<IPathShape> addMoveToShapes(IPathShape iPathShape, String[] strArr, IPathShape iPathShape2) {
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = 3;
        String[] shapeCoordinates = getShapeCoordinates(iPathShape, iPathShape2, (String[]) Arrays.copyOfRange(strArr, 1, 3));
        this.zOperator = new ClosePath(iPathShape.isRelative());
        Point currentPoint = getCurrentPoint(iPathShape2);
        this.zOperator.setCoordinates(shapeCoordinates, currentPoint);
        iPathShape.setCoordinates(shapeCoordinates, currentPoint);
        arrayList.add(iPathShape);
        if (strArr.length > 3) {
            while (i2 < strArr.length && (i = i2 + 2) <= strArr.length) {
                IPathShape iPathShapeCreatePathShape = iPathShape.isRelative() ? SvgPathShapeFactory.createPathShape(SvgConstants.Attributes.PATH_DATA_REL_LINE_TO) : SvgPathShapeFactory.createPathShape("L");
                iPathShapeCreatePathShape.setCoordinates(getShapeCoordinates(iPathShapeCreatePathShape, iPathShape, (String[]) Arrays.copyOfRange(strArr, i2, i)), iPathShape.getEndingPoint());
                arrayList.add(iPathShapeCreatePathShape);
                i2 = i;
                iPathShape = iPathShapeCreatePathShape;
            }
        }
        return arrayList;
    }

    Collection<IPathShape> getShapes() {
        Collection<String> pathOperations = parsePathOperations();
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = pathOperations.iterator();
        while (it.hasNext()) {
            arrayList.addAll(processPathOperator(it.next().split(" +"), arrayList.size() == 0 ? null : (IPathShape) arrayList.get(arrayList.size() - 1)));
        }
        return arrayList;
    }

    private static String[] concatenate(String[] strArr, String[] strArr2) {
        String[] strArr3 = new String[strArr.length + strArr2.length];
        System.arraycopy(strArr, 0, strArr3, 0, strArr.length);
        System.arraycopy(strArr2, 0, strArr3, strArr.length, strArr2.length);
        return strArr3;
    }

    boolean containsInvalidAttributes(String str) {
        return INVALID_REGEX_PATTERN.matcher(str).find();
    }

    Collection<String> parsePathOperations() {
        ArrayList arrayList = new ArrayList();
        String str = this.attributesAndStyles.get(SvgConstants.Attributes.f3323D);
        if (str == null) {
            str = "";
        }
        if (containsInvalidAttributes(str)) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.INVALID_PATH_D_ATTRIBUTE_OPERATORS).setMessageParams(str);
        }
        for (String str2 : splitPathStringIntoOperators(str)) {
            String strTrim = str2.trim();
            if (!strTrim.isEmpty()) {
                arrayList.add(separateDecimalPoints(strTrim.charAt(0) + " " + strTrim.substring(1).replace(",", " ").trim()));
            }
        }
        return arrayList;
    }

    String separateDecimalPoints(String str) {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '-' || Character.isWhitespace(cCharAt)) {
                z = false;
            }
            if (Character.isWhitespace(cCharAt)) {
                z2 = false;
            }
            if (endsWithNonWhitespace(sb) && ((cCharAt == '.' && z) || (cCharAt == '-' && !z2))) {
                sb.append(" ");
            }
            if (cCharAt == '.') {
                z = true;
            } else if (cCharAt == 'e') {
                z2 = true;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    static String[] splitPathStringIntoOperators(String str) {
        return SPLIT_PATTERN.split(str);
    }

    private static boolean endsWithNonWhitespace(StringBuilder sb) {
        return sb.length() > 0 && !Character.isWhitespace(sb.charAt(sb.length() - 1));
    }

    @Override // com.itextpdf.svg.renderers.IMarkerCapable
    public void drawMarker(SvgDrawContext svgDrawContext, MarkerVertexType markerVertexType) {
        Point endingPoint;
        Object[] array = getShapes().toArray();
        if (MarkerVertexType.MARKER_START.equals(markerVertexType)) {
            endingPoint = ((AbstractPathShape) array[0]).getEndingPoint();
        } else {
            endingPoint = MarkerVertexType.MARKER_END.equals(markerVertexType) ? ((AbstractPathShape) array[array.length - 1]).getEndingPoint() : null;
        }
        if (endingPoint != null) {
            MarkerSvgNodeRenderer.drawMarker(svgDrawContext, SvgCssUtils.convertDoubleToString(endingPoint.f2960x), SvgCssUtils.convertDoubleToString(endingPoint.f2961y), markerVertexType, this);
        }
    }

    @Override // com.itextpdf.svg.renderers.IMarkerCapable
    public double getAutoOrientAngle(MarkerSvgNodeRenderer markerSvgNodeRenderer, boolean z) {
        Object[] array = getShapes().toArray();
        if (array.length <= 1) {
            return 0.0d;
        }
        Vector vector = new Vector(0.0f, 0.0f, 0.0f);
        if (SvgConstants.Attributes.MARKER_END.equals(markerSvgNodeRenderer.attributesAndStyles.get(SvgConstants.Tags.MARKER))) {
            IPathShape iPathShape = (IPathShape) array[array.length - 1];
            IPathShape iPathShape2 = (IPathShape) array[array.length - 2];
            vector = new Vector((float) (iPathShape.getEndingPoint().getX() - iPathShape2.getEndingPoint().getX()), (float) (iPathShape.getEndingPoint().getY() - iPathShape2.getEndingPoint().getY()), 0.0f);
        } else if (SvgConstants.Attributes.MARKER_START.equals(markerSvgNodeRenderer.attributesAndStyles.get(SvgConstants.Tags.MARKER))) {
            IPathShape iPathShape3 = (IPathShape) array[0];
            IPathShape iPathShape4 = (IPathShape) array[1];
            vector = new Vector((float) (iPathShape4.getEndingPoint().getX() - iPathShape3.getEndingPoint().getX()), (float) (iPathShape4.getEndingPoint().getY() - iPathShape3.getEndingPoint().getY()), 0.0f);
        }
        double dCalculateAngleBetweenTwoVectors = SvgCoordinateUtils.calculateAngleBetweenTwoVectors(new Vector(1.0f, 0.0f, 0.0f), vector);
        return (vector.get(1) < 0.0f || z) ? dCalculateAngleBetweenTwoVectors * (-1.0d) : dCalculateAngleBetweenTwoVectors;
    }

    private static Point getCurrentPoint(IPathShape iPathShape) {
        return iPathShape == null ? new Point(0, 0) : iPathShape.getEndingPoint();
    }
}
