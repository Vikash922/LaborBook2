package com.inmobi.media;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class xd extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ yd f526a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xd(yd ydVar) {
        super(0);
        this.f526a = ydVar;
    }

    public static final void a(yd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c.post((td) this$0.k.getValue());
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Runnable invoke() {
        final yd ydVar = this.f526a;
        return new Runnable() { // from class: com.inmobi.media.xd$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                xd.a(ydVar);
            }
        };
    }
}
