package com.itextpdf.svg.renderers.path.impl;

import com.facebook.appevents.AppEventsConstants;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.svg.utils.SvgCssUtils;

/* JADX INFO: loaded from: classes6.dex */
public class HorizontalLineTo extends LineTo {
    static final int ARGUMENT_SIZE = 1;

    public HorizontalLineTo() {
        this(false);
    }

    public HorizontalLineTo(boolean z) {
        super(z);
    }

    @Override // com.itextpdf.svg.renderers.path.impl.LineTo, com.itextpdf.svg.renderers.path.IPathShape
    public void setCoordinates(String[] strArr, Point point) {
        String[] strArr2 = new String[2];
        strArr2[0] = strArr[0];
        strArr2[1] = isRelative() ? AppEventsConstants.EVENT_PARAM_VALUE_NO : SvgCssUtils.convertDoubleToString(point.getY());
        super.setCoordinates(strArr2, point);
    }
}
