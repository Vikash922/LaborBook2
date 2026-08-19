package org.bouncycastle.crypto.p035ec;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.math.p042ec.ECPoint;

/* JADX INFO: loaded from: classes5.dex */
public interface ECEncryptor {
    ECPair encrypt(ECPoint eCPoint);

    void init(CipherParameters cipherParameters);
}
