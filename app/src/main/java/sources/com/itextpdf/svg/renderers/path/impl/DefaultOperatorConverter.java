package com.itextpdf.svg.renderers.path.impl;

import com.itextpdf.svg.utils.SvgCoordinateUtils;

/* JADX INFO: compiled from: IOperatorConverter.java */
/* JADX INFO: loaded from: classes6.dex */
class DefaultOperatorConverter implements IOperatorConverter {
    DefaultOperatorConverter() {
    }

    @Override // com.itextpdf.svg.renderers.path.impl.IOperatorConverter
    public String[] makeCoordinatesAbsolute(String[] strArr, double[] dArr) {
        return SvgCoordinateUtils.makeRelativeOperatorCoordinatesAbsolute(strArr, dArr);
    }
}
