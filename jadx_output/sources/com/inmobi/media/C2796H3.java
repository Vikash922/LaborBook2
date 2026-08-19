package com.inmobi.media;

import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;

/* JADX INFO: renamed from: com.inmobi.media.H3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2796H3 extends FilterOutputStream {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2811I3 f1071a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2796H3(C2811I3 c2811i3, FileOutputStream fileOutputStream) {
        super(fileOutputStream);
        this.f1071a = c2811i3;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            ((FilterOutputStream) this).out.close();
        } catch (IOException unused) {
            this.f1071a.f1105c = true;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public final void flush() {
        try {
            ((FilterOutputStream) this).out.flush();
        } catch (IOException unused) {
            this.f1071a.f1105c = true;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) {
        try {
            ((FilterOutputStream) this).out.write(i);
        } catch (IOException unused) {
            this.f1071a.f1105c = true;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        try {
            ((FilterOutputStream) this).out.write(bArr, i, i2);
        } catch (IOException unused) {
            this.f1071a.f1105c = true;
        }
    }
}
