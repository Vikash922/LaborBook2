package org.bouncycastle.cms;

/* JADX INFO: loaded from: classes5.dex */
public class CMSAttributeTableGenerationException extends CMSRuntimeException {

    /* JADX INFO: renamed from: e */
    Exception f3873e;

    public CMSAttributeTableGenerationException(String str) {
        super(str);
    }

    public CMSAttributeTableGenerationException(String str, Exception exc) {
        super(str);
        this.f3873e = exc;
    }

    @Override // org.bouncycastle.cms.CMSRuntimeException, java.lang.Throwable
    public Throwable getCause() {
        return this.f3873e;
    }

    @Override // org.bouncycastle.cms.CMSRuntimeException
    public Exception getUnderlyingException() {
        return this.f3873e;
    }
}
