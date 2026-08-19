package com.inmobi.media;

import java.io.Closeable;
import java.io.FileInputStream;
import java.nio.charset.Charset;

/* JADX INFO: renamed from: com.inmobi.media.Yb */
/* JADX INFO: loaded from: classes6.dex */
public final class C3050Yb implements Closeable {

    /* JADX INFO: renamed from: a */
    public final FileInputStream f1785a;

    /* JADX INFO: renamed from: b */
    public final Charset f1786b;

    /* JADX INFO: renamed from: c */
    public byte[] f1787c;

    /* JADX INFO: renamed from: d */
    public int f1788d;

    /* JADX INFO: renamed from: e */
    public int f1789e;

    public C3050Yb(FileInputStream fileInputStream, Charset charset) {
        charset.getClass();
        if (!charset.equals(AbstractC3023Wc.f1632a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f1785a = fileInputStream;
        this.f1786b = charset;
        this.f1787c = new byte[8192];
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003e  */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m1991a() {
        /*
            r8 = this;
            java.io.FileInputStream r0 = r8.f1785a
            monitor-enter(r0)
            byte[] r1 = r8.f1787c     // Catch: java.lang.Throwable -> Laa
            if (r1 == 0) goto La2
            int r2 = r8.f1788d     // Catch: java.lang.Throwable -> Laa
            int r3 = r8.f1789e     // Catch: java.lang.Throwable -> Laa
            r4 = -1
            r5 = 0
            if (r2 < r3) goto L23
            java.io.FileInputStream r2 = r8.f1785a     // Catch: java.lang.Throwable -> Laa
            int r3 = r1.length     // Catch: java.lang.Throwable -> Laa
            int r1 = r2.read(r1, r5, r3)     // Catch: java.lang.Throwable -> Laa
            if (r1 == r4) goto L1d
            r8.f1788d = r5     // Catch: java.lang.Throwable -> Laa
            r8.f1789e = r1     // Catch: java.lang.Throwable -> Laa
            goto L23
        L1d:
            java.io.EOFException r1 = new java.io.EOFException     // Catch: java.lang.Throwable -> Laa
            r1.<init>()     // Catch: java.lang.Throwable -> Laa
            throw r1     // Catch: java.lang.Throwable -> Laa
        L23:
            int r1 = r8.f1788d     // Catch: java.lang.Throwable -> Laa
        L25:
            int r2 = r8.f1789e     // Catch: java.lang.Throwable -> Laa
            r3 = 10
            if (r1 == r2) goto L54
            byte[] r2 = r8.f1787c     // Catch: java.lang.Throwable -> Laa
            r6 = r2[r1]     // Catch: java.lang.Throwable -> Laa
            if (r6 != r3) goto L51
            int r3 = r8.f1788d     // Catch: java.lang.Throwable -> Laa
            if (r1 == r3) goto L3e
            int r4 = r1 + (-1)
            r5 = r2[r4]     // Catch: java.lang.Throwable -> Laa
            r6 = 13
            if (r5 != r6) goto L3e
            goto L3f
        L3e:
            r4 = r1
        L3f:
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> Laa
            int r4 = r4 - r3
            java.nio.charset.Charset r6 = r8.f1786b     // Catch: java.lang.Throwable -> Laa
            java.lang.String r6 = r6.name()     // Catch: java.lang.Throwable -> Laa
            r5.<init>(r2, r3, r4, r6)     // Catch: java.lang.Throwable -> Laa
            int r1 = r1 + 1
            r8.f1788d = r1     // Catch: java.lang.Throwable -> Laa
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Laa
            return r5
        L51:
            int r1 = r1 + 1
            goto L25
        L54:
            com.inmobi.media.Xb r1 = new com.inmobi.media.Xb     // Catch: java.lang.Throwable -> Laa
            int r2 = r8.f1789e     // Catch: java.lang.Throwable -> Laa
            int r6 = r8.f1788d     // Catch: java.lang.Throwable -> Laa
            int r2 = r2 - r6
            int r2 = r2 + 80
            r1.<init>(r8, r2)     // Catch: java.lang.Throwable -> Laa
        L60:
            byte[] r2 = r8.f1787c     // Catch: java.lang.Throwable -> Laa
            int r6 = r8.f1788d     // Catch: java.lang.Throwable -> Laa
            int r7 = r8.f1789e     // Catch: java.lang.Throwable -> Laa
            int r7 = r7 - r6
            r1.write(r2, r6, r7)     // Catch: java.lang.Throwable -> Laa
            r8.f1789e = r4     // Catch: java.lang.Throwable -> Laa
            java.io.FileInputStream r2 = r8.f1785a     // Catch: java.lang.Throwable -> Laa
            byte[] r6 = r8.f1787c     // Catch: java.lang.Throwable -> Laa
            int r7 = r6.length     // Catch: java.lang.Throwable -> Laa
            int r2 = r2.read(r6, r5, r7)     // Catch: java.lang.Throwable -> Laa
            if (r2 == r4) goto L9c
            r8.f1788d = r5     // Catch: java.lang.Throwable -> Laa
            r8.f1789e = r2     // Catch: java.lang.Throwable -> Laa
            r2 = r5
        L7c:
            int r6 = r8.f1789e     // Catch: java.lang.Throwable -> Laa
            if (r2 == r6) goto L60
            byte[] r6 = r8.f1787c     // Catch: java.lang.Throwable -> Laa
            r7 = r6[r2]     // Catch: java.lang.Throwable -> Laa
            if (r7 != r3) goto L99
            int r3 = r8.f1788d     // Catch: java.lang.Throwable -> Laa
            if (r2 == r3) goto L8f
            int r4 = r2 - r3
            r1.write(r6, r3, r4)     // Catch: java.lang.Throwable -> Laa
        L8f:
            int r2 = r2 + 1
            r8.f1788d = r2     // Catch: java.lang.Throwable -> Laa
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Laa
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Laa
            return r1
        L99:
            int r2 = r2 + 1
            goto L7c
        L9c:
            java.io.EOFException r1 = new java.io.EOFException     // Catch: java.lang.Throwable -> Laa
            r1.<init>()     // Catch: java.lang.Throwable -> Laa
            throw r1     // Catch: java.lang.Throwable -> Laa
        La2:
            java.io.IOException r1 = new java.io.IOException     // Catch: java.lang.Throwable -> Laa
            java.lang.String r2 = "LineReader is closed"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Laa
            throw r1     // Catch: java.lang.Throwable -> Laa
        Laa:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Laa
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3050Yb.m1991a():java.lang.String");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f1785a) {
            if (this.f1787c != null) {
                this.f1787c = null;
                this.f1785a.close();
            }
        }
    }
}
