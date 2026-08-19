package com.itextpdf.signatures;

import com.facebook.internal.AnalyticsEvents;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.signatures.exceptions.SignExceptionMessageConstant;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;

/* JADX INFO: loaded from: classes6.dex */
public class VerificationException extends GeneralSecurityException {
    /* JADX WARN: Illegal instructions before constructor call */
    public VerificationException(Certificate certificate, String str) {
        String name;
        if (certificate == null) {
            name = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        } else {
            name = ((X509Certificate) certificate).getSubjectDN().getName();
        }
        super(MessageFormatUtil.format(SignExceptionMessageConstant.CERTIFICATE_TEMPLATE_FOR_EXCEPTION_MESSAGE, name, str));
    }
}
