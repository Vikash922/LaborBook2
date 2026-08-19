package org.bouncycastle.util;

/* JADX INFO: loaded from: classes2.dex */
public class StreamParsingException extends Exception {

    /* JADX INFO: renamed from: _e */
    Throwable f4737_e;

    public StreamParsingException(String str, Throwable th) {
        super(str);
        this.f4737_e = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f4737_e;
    }
}
