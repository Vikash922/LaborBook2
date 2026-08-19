package org.bouncycastle.est;

/* JADX INFO: loaded from: classes5.dex */
public interface ESTClientProvider {
    boolean isTrusted();

    ESTClient makeClient() throws ESTException;
}
