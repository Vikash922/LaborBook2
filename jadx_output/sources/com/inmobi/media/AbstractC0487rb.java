package com.inmobi.media;

import androidx.browser.trusted.sharing.ShareTarget;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.rb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0487rb extends C0397l9 {
    public final AtomicBoolean A;
    public final int y;
    public final int z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC0487rb(String url, Kc kc, String str, int i, int i2) {
        super("POST", url, kc, C0508t4.a(C0508t4.f487a, false, 1, null), (InterfaceC0298f5) null, ShareTarget.ENCODING_TYPE_URL_ENCODED, 64);
        Intrinsics.checkNotNullParameter("POST", "requestType");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(ShareTarget.ENCODING_TYPE_URL_ENCODED, "requestContentType");
        this.y = i;
        this.z = i2;
        this.m = str;
        this.A = new AtomicBoolean(false);
    }
}
