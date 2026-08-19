package com.inmobi.media;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ObservableProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: renamed from: com.inmobi.media.Q4 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2932Q4 extends ObservableProperty {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2945R4 f1468a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2932Q4(EnumC2817I9 enumC2817I9, C2945R4 c2945r4) {
        super(enumC2817I9);
        this.f1468a = c2945r4;
    }

    @Override // kotlin.properties.ObservableProperty
    public final void afterChange(KProperty property, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(property, "property");
        EnumC2817I9 enumC2817I9 = (EnumC2817I9) obj2;
        if (AbstractC2832J9.m1194a((EnumC2817I9) obj) == AbstractC2832J9.m1194a(enumC2817I9)) {
            return;
        }
        Iterator it = this.f1468a.f1494b.iterator();
        while (it.hasNext()) {
            ((InterfaceC2862L9) it.next()).mo1312a(enumC2817I9);
        }
    }
}
