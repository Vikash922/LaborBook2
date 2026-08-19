package com.inmobi.media;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.wd */
/* JADX INFO: loaded from: classes6.dex */
public final class C3410wd extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AbstractC3440yd f2731a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3410wd(AbstractC3440yd abstractC3440yd) {
        super(0);
        this.f2731a = abstractC3440yd;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        AbstractC3440yd abstractC3440yd = this.f2731a;
        return new RunnableC3365td(abstractC3440yd, abstractC3440yd.f2781i);
    }
}
