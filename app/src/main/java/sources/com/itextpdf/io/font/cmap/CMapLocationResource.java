package com.itextpdf.io.font.cmap;

import com.itextpdf.io.font.constants.FontResources;
import com.itextpdf.io.source.PdfTokenizer;
import com.itextpdf.io.source.RandomAccessFileOrArray;
import com.itextpdf.io.source.RandomAccessSourceFactory;
import com.itextpdf.io.util.ResourceUtil;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public class CMapLocationResource implements ICMapLocation {
    @Override // com.itextpdf.io.font.cmap.ICMapLocation
    public PdfTokenizer getLocation(String str) throws IOException {
        String str2 = FontResources.CMAPS + str;
        InputStream resourceStream = ResourceUtil.getResourceStream(str2);
        if (resourceStream == null) {
            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.Cmap1WasNotFound).setMessageParams(str2);
        }
        return new PdfTokenizer(new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(resourceStream)));
    }
}
