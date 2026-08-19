package com.inmobi.media;

import java.util.LinkedHashSet;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.q6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0469q6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0510t6 f461a;
    public final U3 b;
    public final LinkedHashSet c;
    public String d;
    public boolean e;

    public C0469q6(C0510t6 c0510t6, U3 embeddedBrowserViewClient) {
        Intrinsics.checkNotNullParameter(embeddedBrowserViewClient, "embeddedBrowserViewClient");
        this.f461a = c0510t6;
        this.b = embeddedBrowserViewClient;
        this.c = new LinkedHashSet();
    }
}
