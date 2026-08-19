package org.bouncycastle.est;

import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
public interface ESTHijacker {
    ESTResponse hijack(ESTRequest eSTRequest, Source source) throws IOException;
}
