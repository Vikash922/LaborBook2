package com.itextpdf.svg.renderers.path.impl;

import com.facebook.appevents.AppEventsConstants;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.svg.utils.SvgCssUtils;

/* JADX INFO: loaded from: classes6.dex */
public class VerticalLineTo extends LineTo {
    static final int ARGUMENT_SIZE = 1;

    public VerticalLineTo() {
        this(false);
    }

    public VerticalLineTo(boolean z) {
        super(z);
    }

    @Override // com.itextpdf.svg.renderers.path.impl.LineTo, com.itextpdf.svg.renderers.path.IPathShape
    public void setCoordinates(String[] strArr, Point point) {
        String[] strArr2 = new String[2];
        strArr2[0] = isRelative() ? AppEventsConstants.EVENT_PARAM_VALUE_NO : SvgCssUtils.convertDoubleToString(point.getX());
        strArr2[1] = strArr[0];
        super.setCoordinates(strArr2, point);
    }
}
