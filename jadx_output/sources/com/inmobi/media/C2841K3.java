package com.inmobi.media;

import java.io.Closeable;
import java.io.InputStream;

/* JADX INFO: renamed from: com.inmobi.media.K3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2841K3 implements Closeable {

    /* JADX INFO: renamed from: a */
    public final InputStream[] f1156a;

    public C2841K3(InputStream[] inputStreamArr) {
        this.f1156a = inputStreamArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        for (InputStream inputStream : this.f1156a) {
            AbstractC3023Wc.m1895a(inputStream);
        }
    }
}
