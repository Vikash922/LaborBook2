package org.bouncycastle.its.operator;

import org.bouncycastle.its.ITSCertificate;
import org.bouncycastle.operator.ContentVerifier;
import org.bouncycastle.operator.OperatorCreationException;

/* JADX INFO: loaded from: classes5.dex */
public interface ITSContentVerifierProvider {
    ContentVerifier get(int i) throws OperatorCreationException;

    ITSCertificate getAssociatedCertificate();

    boolean hasAssociatedCertificate();
}
