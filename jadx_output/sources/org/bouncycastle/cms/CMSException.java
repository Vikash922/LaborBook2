package org.bouncycastle.cms;

/* JADX INFO: loaded from: classes5.dex */
public class CMSException extends Exception {

    /* JADX INFO: renamed from: e */
    Exception f3874e;

    public CMSException(String str) {
        super(str);
    }

    public CMSException(String str, Exception exc) {
        super(str);
        this.f3874e = exc;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f3874e;
    }

    public Exception getUnderlyingException() {
        return this.f3874e;
    }
}
