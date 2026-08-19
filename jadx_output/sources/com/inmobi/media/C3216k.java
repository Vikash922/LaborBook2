package com.inmobi.media;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.k */
/* JADX INFO: loaded from: classes6.dex */
public final class C3216k {

    /* JADX INFO: renamed from: a */
    public int f2243a;

    /* JADX INFO: renamed from: b */
    public int f2244b;

    /* JADX INFO: renamed from: c */
    public String f2245c;

    /* JADX INFO: renamed from: d */
    public final WeakReference f2246d;

    /* JADX INFO: renamed from: e */
    public final HashSet f2247e;

    /* JADX INFO: renamed from: f */
    public final String f2248f;

    /* JADX INFO: renamed from: g */
    public final ArrayList f2249g;

    /* JADX INFO: renamed from: h */
    public final Set f2250h;

    public C3216k(String batchId, Set rawAssets, InterfaceC3338s1 listener, String str, int i) {
        str = (i & 16) != 0 ? null : str;
        Intrinsics.checkNotNullParameter(batchId, "batchId");
        Intrinsics.checkNotNullParameter(rawAssets, "rawAssets");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f2246d = new WeakReference(listener);
        this.f2249g = new ArrayList();
        this.f2247e = new HashSet();
        this.f2250h = rawAssets;
        this.f2248f = str;
    }

    public final String toString() {
        return "AdAssetBatch{rawAssets=" + this.f2250h + ", batchDownloadSuccessCount=" + this.f2243a + ", batchDownloadFailureCount=" + this.f2244b + '}';
    }
}
