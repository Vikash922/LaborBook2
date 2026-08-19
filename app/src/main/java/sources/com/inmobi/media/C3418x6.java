package com.inmobi.media;

import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.x6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3418x6 implements GoogleApiClient.ConnectionCallbacks {
    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Intrinsics.checkNotNullExpressionValue(C3433y6.f2764e, "access$getTAG$p(...)");
        C3433y6.f2765f = true;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        C3433y6.f2765f = false;
        Intrinsics.checkNotNullExpressionValue(C3433y6.f2764e, "access$getTAG$p(...)");
    }
}
