package com.inmobi.media;

import android.net.ConnectivityManager;
import android.net.Network;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.bc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0243bc extends ConnectivityManager.NetworkCallback {
    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        ConcurrentHashMap concurrentHashMap = C0259cc.f324a;
        Intrinsics.checkNotNullExpressionValue("cc", "access$getTAG$p(...)");
        super.onAvailable(network);
        Intrinsics.checkNotNullExpressionValue("cc", "access$getTAG$p(...)");
        Kb.f().b(new C0233b2(10, 4, "available"));
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        ConcurrentHashMap concurrentHashMap = C0259cc.f324a;
        Intrinsics.checkNotNullExpressionValue("cc", "access$getTAG$p(...)");
        super.onLost(network);
        Kb.f().b(new C0233b2(10, 4, "lost"));
    }
}
