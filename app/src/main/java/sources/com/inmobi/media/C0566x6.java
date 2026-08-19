package com.inmobi.media;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.x6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0566x6 implements GoogleApiClient.ConnectionCallbacks {
    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Intrinsics.checkNotNullExpressionValue(C0580y6.e, "access$getTAG$p(...)");
        C0580y6.f = true;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        C0580y6.f = false;
        Intrinsics.checkNotNullExpressionValue(C0580y6.e, "access$getTAG$p(...)");
    }
}
