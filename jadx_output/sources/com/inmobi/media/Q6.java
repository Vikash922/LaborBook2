package com.inmobi.media;

import com.inmobi.commons.utils.json.Constructor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class Q6 extends AbstractC0515tb {
    public final Class b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q6(Constructor constructor, Class valueClass) {
        super(constructor);
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(valueClass, "valueClass");
        this.b = valueClass;
    }
}
