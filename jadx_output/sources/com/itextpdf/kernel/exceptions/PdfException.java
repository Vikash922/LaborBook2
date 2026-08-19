package com.itextpdf.kernel.exceptions;

import com.itextpdf.commons.exceptions.ITextException;
import com.itextpdf.commons.utils.MessageFormatUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PdfException extends ITextException {
    private List<Object> messageParams;
    protected Object object;

    public PdfException(String str) {
        super(str);
    }

    public PdfException(Throwable th) {
        this(KernelExceptionMessageConstant.UNKNOWN_PDF_EXCEPTION, th);
    }

    public PdfException(String str, Object obj) {
        this(str);
        this.object = obj;
    }

    public PdfException(String str, Throwable th) {
        super(str, th);
    }

    public PdfException(String str, Throwable th, Object obj) {
        this(str, th);
        this.object = obj;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        List<Object> list = this.messageParams;
        if (list == null || list.size() == 0) {
            return super.getMessage();
        }
        return MessageFormatUtil.format(super.getMessage(), getMessageParams());
    }

    public PdfException setMessageParams(Object... objArr) {
        ArrayList arrayList = new ArrayList();
        this.messageParams = arrayList;
        Collections.addAll(arrayList, objArr);
        return this;
    }

    protected Object[] getMessageParams() {
        Object[] objArr = new Object[this.messageParams.size()];
        for (int i = 0; i < this.messageParams.size(); i++) {
            objArr[i] = this.messageParams.get(i);
        }
        return objArr;
    }
}
