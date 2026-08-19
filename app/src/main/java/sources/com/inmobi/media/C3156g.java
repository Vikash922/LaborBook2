package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.g */
/* JADX INFO: loaded from: classes6.dex */
public final class C3156g extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C3171h f2084a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3156g(C3171h c3171h) {
        super(0);
        this.f2084a = c3171h;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new AdMetaInfo(this.f2084a.m2199o(), this.f2084a.m2171E());
    }
}
