package org.bouncycastle.est.jcajce;

import java.net.Socket;

/* JADX INFO: loaded from: classes5.dex */
public interface ChannelBindingProvider {
    boolean canAccessChannelBinding(Socket socket);

    byte[] getChannelBinding(Socket socket, String str);
}
