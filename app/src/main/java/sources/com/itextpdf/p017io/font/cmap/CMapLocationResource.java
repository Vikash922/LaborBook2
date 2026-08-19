package com.itextpdf.p017io.font.cmap;

import com.itextpdf.p017io.font.constants.FontResources;
import com.itextpdf.p017io.source.PdfTokenizer;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import com.itextpdf.p017io.source.RandomAccessSourceFactory;
import com.itextpdf.p017io.util.ResourceUtil;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public class CMapLocationResource implements ICMapLocation {
    @Override // com.itextpdf.p017io.font.cmap.ICMapLocation
    public PdfTokenizer getLocation(String str) throws IOException {
        String str2 = FontResources.CMAPS + str;
        InputStream resourceStream = ResourceUtil.getResourceStream(str2);
        if (resourceStream == null) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.Cmap1WasNotFound).setMessageParams(str2);
        }
        return new PdfTokenizer(new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(resourceStream)));
    }
}
