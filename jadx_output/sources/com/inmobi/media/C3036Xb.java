package com.inmobi.media;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: renamed from: com.inmobi.media.Xb */
/* JADX INFO: loaded from: classes6.dex */
public final class C3036Xb extends ByteArrayOutputStream {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3050Yb f1651a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3036Xb(C3050Yb c3050Yb, int i) {
        super(i);
        this.f1651a = c3050Yb;
    }

    @Override // java.io.ByteArrayOutputStream
    public final synchronized String toString() {
        int i;
        i = ((ByteArrayOutputStream) this).count;
        if (i > 0) {
            int i2 = i - 1;
            if (((ByteArrayOutputStream) this).buf[i2] == 13) {
                i = i2;
            }
        }
        try {
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
        return new String(((ByteArrayOutputStream) this).buf, 0, i, this.f1651a.f1786b.name());
    }
}
