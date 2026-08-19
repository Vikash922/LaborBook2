package org.bouncycastle.its.p037bc;

import org.bouncycastle.its.ITSCertificate;
import org.bouncycastle.its.ITSImplicitCertificateBuilder;
import org.bouncycastle.oer.its.ToBeSignedCertificate;
import org.bouncycastle.operator.p045bc.BcDigestCalculatorProvider;

/* JADX INFO: loaded from: classes5.dex */
public class BcITSImplicitCertificateBuilder extends ITSImplicitCertificateBuilder {
    public BcITSImplicitCertificateBuilder(ITSCertificate iTSCertificate, ToBeSignedCertificate.Builder builder) {
        super(iTSCertificate, new BcDigestCalculatorProvider(), builder);
    }
}
