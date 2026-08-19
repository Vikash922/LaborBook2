package com.inmobi.media;

import androidx.browser.trusted.sharing.ShareTarget;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.rb */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3333rb extends C3241l9 {

    /* JADX INFO: renamed from: A */
    public final AtomicBoolean f2509A;

    /* JADX INFO: renamed from: y */
    public final int f2510y;

    /* JADX INFO: renamed from: z */
    public final int f2511z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC3333rb(String url, C2850Kc c2850Kc, String str, int i, int i2) {
        super("POST", url, c2850Kc, C3356t4.m2411a(C3356t4.f2542a, false, 1, null), (InterfaceC3147f5) null, ShareTarget.ENCODING_TYPE_URL_ENCODED, 64);
        Intrinsics.checkNotNullParameter("POST", "requestType");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(ShareTarget.ENCODING_TYPE_URL_ENCODED, "requestContentType");
        this.f2510y = i;
        this.f2511z = i2;
        this.f2286m = str;
        this.f2509A = new AtomicBoolean(false);
    }
}
