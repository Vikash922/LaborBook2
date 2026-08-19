package com.itextpdf.kernel.pdf.function;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@FunctionalInterface
public interface IInputConversionFunction {
    double[] convert(byte[] bArr) throws IOException;
}
