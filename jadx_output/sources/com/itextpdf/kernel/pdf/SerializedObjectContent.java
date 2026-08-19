package com.itextpdf.kernel.pdf;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
class SerializedObjectContent {
    private final int hash;
    private final byte[] serializedContent;

    SerializedObjectContent(byte[] bArr) {
        this.serializedContent = bArr;
        this.hash = calculateHash(bArr);
    }

    public boolean equals(Object obj) {
        return (obj instanceof SerializedObjectContent) && hashCode() == obj.hashCode() && Arrays.equals(this.serializedContent, ((SerializedObjectContent) obj).serializedContent);
    }

    public int hashCode() {
        return this.hash;
    }

    private static int calculateHash(byte[] bArr) {
        int i = 0;
        for (byte b : bArr) {
            i = (i * 31) + (b & 255);
        }
        return i;
    }
}
