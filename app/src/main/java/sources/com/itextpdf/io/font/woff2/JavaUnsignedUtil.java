package com.itextpdf.io.font.woff2;

import kotlin.UShort;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes6.dex */
class JavaUnsignedUtil {
    public static int asU16(short s) {
        return s & UShort.MAX_VALUE;
    }

    public static int asU8(byte b) {
        return b & 255;
    }

    public static short toU16(int i) {
        return (short) (i & 65535);
    }

    public static byte toU8(int i) {
        return (byte) (i & 255);
    }

    JavaUnsignedUtil() {
    }

    public static int compareAsUnsigned(int i, int i2) {
        return Long.valueOf(((long) i) & BodyPartID.bodyIdMax).compareTo(Long.valueOf(((long) i2) & BodyPartID.bodyIdMax));
    }
}
