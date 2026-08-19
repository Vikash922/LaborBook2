package com.itextpdf.kernel.crypto;

import com.itextpdf.commons.utils.SystemUtil;
import java.nio.charset.StandardCharsets;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes6.dex */
public final class IVGenerator {
    private static final ARCFOUREncryption arcfour;

    static {
        ARCFOUREncryption aRCFOUREncryption = new ARCFOUREncryption();
        arcfour = aRCFOUREncryption;
        aRCFOUREncryption.prepareARCFOURKey((SystemUtil.getTimeBasedSeed() + Marker.ANY_NON_NULL_MARKER + SystemUtil.getFreeMemory()).getBytes(StandardCharsets.ISO_8859_1));
    }

    private IVGenerator() {
    }

    public static byte[] getIV() {
        return getIV(16);
    }

    public static byte[] getIV(int i) {
        byte[] bArr = new byte[i];
        ARCFOUREncryption aRCFOUREncryption = arcfour;
        synchronized (aRCFOUREncryption) {
            aRCFOUREncryption.encryptARCFOUR(bArr);
        }
        return bArr;
    }
}
