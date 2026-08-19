package com.itextpdf.p017io.font.cmap;

import com.itextpdf.p017io.source.PdfTokenizer;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public interface ICMapLocation {
    PdfTokenizer getLocation(String str) throws IOException;
}
