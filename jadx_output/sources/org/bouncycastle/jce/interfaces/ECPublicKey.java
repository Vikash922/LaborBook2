package org.bouncycastle.jce.interfaces;

import java.security.PublicKey;
import org.bouncycastle.math.p042ec.ECPoint;

/* JADX INFO: loaded from: classes5.dex */
public interface ECPublicKey extends ECKey, PublicKey {
    ECPoint getQ();
}
