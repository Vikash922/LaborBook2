package com.inmobi.media;

import android.view.ViewParent;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes6.dex */
public final class W3 extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Y3 f269a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W3(Y3 y3) {
        super(0);
        this.f269a = y3;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        T3 t3;
        ViewParent parent = this.f269a.getParent();
        Q3 q3 = parent instanceof Q3 ? (Q3) parent : null;
        if (q3 != null && (t3 = q3.d) != null) {
            InterfaceC0559x interfaceC0559x = ((O4) t3).f200a.b;
            Ya ya = interfaceC0559x instanceof Ya ? (Ya) interfaceC0559x : null;
            if (ya != null) {
                ya.m();
            }
        }
        return Unit.INSTANCE;
    }
}
