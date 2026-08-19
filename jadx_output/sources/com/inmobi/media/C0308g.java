package com.inmobi.media;

import com.inmobi.ads.AdMetaInfo;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0308g extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0325h f354a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0308g(C0325h c0325h) {
        super(0);
        this.f354a = c0325h;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new AdMetaInfo(this.f354a.o(), this.f354a.E());
    }
}
