package com.itextpdf.kernel.pdf.function;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@FunctionalInterface
public interface IOutputConversionFunction {
    byte[] convert(double[] dArr) throws IOException;
}
