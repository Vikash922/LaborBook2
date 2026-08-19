package com.inmobi.media;

import android.view.ViewParent;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class X3 extends Lambda implements Function2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Y3 f277a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X3(Y3 y3) {
        super(2);
        this.f277a = y3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String trackerName = (String) obj;
        Map macros = (Map) obj2;
        Intrinsics.checkNotNullParameter(trackerName, "trackerName");
        Intrinsics.checkNotNullParameter(macros, "macros");
        ViewParent parent = this.f277a.getParent();
        Q3 q3 = parent instanceof Q3 ? (Q3) parent : null;
        if (q3 != null) {
            Intrinsics.checkNotNullParameter(trackerName, "trackerName");
            Intrinsics.checkNotNullParameter(macros, "macros");
            T3 t3 = q3.d;
            if (t3 != null) {
                Intrinsics.checkNotNullParameter(trackerName, "trackerName");
                Intrinsics.checkNotNullParameter(macros, "macros");
                InterfaceC0559x interfaceC0559x = ((O4) t3).f200a.b;
                Ya ya = interfaceC0559x instanceof Ya ? (Ya) interfaceC0559x : null;
                if (ya != null) {
                    ya.a(trackerName, macros);
                }
            }
        }
        return Unit.INSTANCE;
    }
}
