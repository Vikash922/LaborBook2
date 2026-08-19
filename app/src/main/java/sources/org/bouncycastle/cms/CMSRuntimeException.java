package org.bouncycastle.cms;

/* JADX INFO: loaded from: classes5.dex */
public class CMSRuntimeException extends RuntimeException {

    /* JADX INFO: renamed from: e */
    Exception f3875e;

    public CMSRuntimeException(String str) {
        super(str);
    }

    public CMSRuntimeException(String str, Exception exc) {
        super(str);
        this.f3875e = exc;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f3875e;
    }

    public Exception getUnderlyingException() {
        return this.f3875e;
    }
}
