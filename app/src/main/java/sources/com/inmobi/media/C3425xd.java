package com.inmobi.media;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.xd */
/* JADX INFO: loaded from: classes6.dex */
public final class C3425xd extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AbstractC3440yd f2749a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3425xd(AbstractC3440yd abstractC3440yd) {
        super(0);
        this.f2749a = abstractC3440yd;
    }

    /* JADX INFO: renamed from: a */
    public static final void m2597a(AbstractC3440yd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f2775c.post((RunnableC3365td) this$0.f2783k.getValue());
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Runnable invoke() {
        final AbstractC3440yd abstractC3440yd = this.f2749a;
        return new Runnable() { // from class: com.inmobi.media.xd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3425xd.m2597a(abstractC3440yd);
            }
        };
    }
}
