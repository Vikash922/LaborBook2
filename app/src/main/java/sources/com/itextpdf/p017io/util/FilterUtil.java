package com.itextpdf.p017io.util;

import com.itextpdf.p017io.exceptions.IOException;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class FilterUtil {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) FilterUtil.class);

    private FilterUtil() {
    }

    public static byte[] flateDecode(byte[] bArr, boolean z) {
        InflaterInputStream inflaterInputStream = new InflaterInputStream(new ByteArrayInputStream(bArr));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr2 = new byte[z ? 4092 : 1];
        while (true) {
            try {
                try {
                    int i = inflaterInputStream.read(bArr2);
                    if (i < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr2, 0, i);
                } catch (Exception unused) {
                    byte[] byteArray = z ? null : byteArrayOutputStream.toByteArray();
                    try {
                        inflaterInputStream.close();
                        byteArrayOutputStream.close();
                    } catch (Exception e) {
                        LOGGER.error(e.getMessage(), (Throwable) e);
                    }
                    return byteArray;
                }
            } finally {
                inflaterInputStream.close();
                byteArrayOutputStream.close();
            }
            try {
                inflaterInputStream.close();
                byteArrayOutputStream.close();
            } catch (Exception e2) {
                LOGGER.error(e2.getMessage(), (Throwable) e2);
            }
        }
        inflaterInputStream.close();
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] flateDecode(byte[] bArr) {
        byte[] bArrFlateDecode = flateDecode(bArr, true);
        return bArrFlateDecode == null ? flateDecode(bArr, false) : bArrFlateDecode;
    }

    public static void inflateData(byte[] bArr, byte[] bArr2) {
        Inflater inflater = new Inflater();
        inflater.setInput(bArr);
        try {
            inflater.inflate(bArr2);
        } catch (DataFormatException unused) {
            throw new IOException(IOException.CannotInflateTiffImage);
        }
    }

    public static InputStream getInflaterInputStream(InputStream inputStream) {
        return new InflaterInputStream(inputStream, new Inflater());
    }
}
