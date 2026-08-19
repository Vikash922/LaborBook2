package com.inmobi.media;

import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: com.inmobi.media.n6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0424n6 extends Lambda implements Function2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0439o6 f433a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0424n6(C0439o6 c0439o6) {
        super(2);
        this.f433a = c0439o6;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String trackerName = (String) obj;
        Map macros = (Map) obj2;
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        Ra ra = this.f433a.d;
        if (ra != null) {
            Intrinsics.checkNotNullParameter(trackerName, "trackerName");
            Intrinsics.checkNotNullParameter(macros, "macros");
            Ya ya = ra.f236a;
            if (!ya.e) {
                ya.a(trackerName, macros);
            }
        }
        return Unit.INSTANCE;
    }
}
