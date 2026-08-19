package com.itextpdf.svg.renderers.path.impl;

import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.renderers.path.IPathShape;
import com.itextpdf.svg.renderers.path.IPathShapeMapper;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class PathShapeMapper implements IPathShapeMapper {
    @Override // com.itextpdf.svg.renderers.path.IPathShapeMapper
    public Map<String, IPathShape> getMapping() {
        HashMap map = new HashMap();
        map.put("L", new LineTo());
        map.put(SvgConstants.Attributes.PATH_DATA_REL_LINE_TO, new LineTo(true));
        map.put("V", new VerticalLineTo());
        map.put(SvgConstants.Attributes.PATH_DATA_REL_LINE_TO_V, new VerticalLineTo(true));
        map.put("H", new HorizontalLineTo());
        map.put(SvgConstants.Attributes.PATH_DATA_REL_LINE_TO_H, new HorizontalLineTo(true));
        map.put(SvgConstants.Attributes.PATH_DATA_CLOSE_PATH, new ClosePath());
        map.put(SvgConstants.Attributes.PATH_DATA_CLOSE_PATH.toLowerCase(), new ClosePath());
        map.put("M", new MoveTo());
        map.put(SvgConstants.Attributes.PATH_DATA_REL_MOVE_TO, new MoveTo(true));
        map.put(SvgConstants.Attributes.PATH_DATA_CURVE_TO, new CurveTo());
        map.put(SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO, new CurveTo(true));
        map.put("S", new SmoothSCurveTo());
        map.put(SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO_S, new SmoothSCurveTo(true));
        map.put(SvgConstants.Attributes.PATH_DATA_QUAD_CURVE_TO, new QuadraticCurveTo());
        map.put("q", new QuadraticCurveTo(true));
        map.put("T", new QuadraticSmoothCurveTo());
        map.put(SvgConstants.Attributes.PATH_DATA_REL_SHORTHAND_CURVE_TO, new QuadraticSmoothCurveTo(true));
        map.put("A", new EllipticalCurveTo());
        map.put("a", new EllipticalCurveTo(true));
        return map;
    }

    @Override // com.itextpdf.svg.renderers.path.IPathShapeMapper
    public Map<String, Integer> getArgumentCount() {
        HashMap map = new HashMap();
        map.put("L", 2);
        map.put("V", 1);
        map.put("H", 1);
        map.put(SvgConstants.Attributes.PATH_DATA_CLOSE_PATH, 0);
        map.put("M", 2);
        map.put(SvgConstants.Attributes.PATH_DATA_CURVE_TO, 6);
        map.put("S", 4);
        map.put(SvgConstants.Attributes.PATH_DATA_QUAD_CURVE_TO, 4);
        map.put("T", 2);
        map.put("A", 7);
        return map;
    }
}
