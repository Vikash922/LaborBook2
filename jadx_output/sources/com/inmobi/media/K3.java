package com.inmobi.media;

import java.io.Closeable;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public final class K3 implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InputStream[] f155a;

    public K3(InputStream[] inputStreamArr) {
        this.f155a = inputStreamArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        for (InputStream inputStream : this.f155a) {
            Wc.a(inputStream);
        }
    }
}
