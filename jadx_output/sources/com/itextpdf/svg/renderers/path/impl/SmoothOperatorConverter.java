package com.itextpdf.svg.renderers.path.impl;

import com.itextpdf.svg.utils.SvgCoordinateUtils;

/* JADX INFO: compiled from: IOperatorConverter.java */
/* JADX INFO: loaded from: classes6.dex */
class SmoothOperatorConverter implements IOperatorConverter {
    SmoothOperatorConverter() {
    }

    @Override // com.itextpdf.svg.renderers.path.impl.IOperatorConverter
    public String[] makeCoordinatesAbsolute(String[] strArr, double[] dArr) {
        String[] strArr2 = new String[strArr.length];
        System.arraycopy(strArr, 0, strArr2, 0, 2);
        String[] strArrMakeRelativeOperatorCoordinatesAbsolute = SvgCoordinateUtils.makeRelativeOperatorCoordinatesAbsolute(strArr, dArr);
        System.arraycopy(strArrMakeRelativeOperatorCoordinatesAbsolute, 2, strArr2, 2, strArrMakeRelativeOperatorCoordinatesAbsolute.length - 2);
        return strArr2;
    }
}
