package org.bouncycastle.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SM2ParameterSpec implements AlgorithmParameterSpec {

    /* JADX INFO: renamed from: id */
    private byte[] f4413id;

    public SM2ParameterSpec(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("id string cannot be null");
        }
        this.f4413id = Arrays.clone(bArr);
    }

    public byte[] getID() {
        return Arrays.clone(this.f4413id);
    }
}
