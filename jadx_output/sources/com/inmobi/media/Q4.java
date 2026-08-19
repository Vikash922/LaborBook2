package com.inmobi.media;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ObservableProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes6.dex */
public final class Q4 extends ObservableProperty {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ R4 f222a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q4(I9 i9, R4 r4) {
        super(i9);
        this.f222a = r4;
    }

    @Override // kotlin.properties.ObservableProperty
    public final void afterChange(KProperty property, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(property, "property");
        I9 i9 = (I9) obj2;
        if (J9.a((I9) obj) == J9.a(i9)) {
            return;
        }
        Iterator it = this.f222a.b.iterator();
        while (it.hasNext()) {
            ((L9) it.next()).a(i9);
        }
    }
}
