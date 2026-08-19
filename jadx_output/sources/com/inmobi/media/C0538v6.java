package com.inmobi.media;

import com.inmobi.commons.utils.json.Constructor;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.v6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0538v6 extends AbstractC0515tb {
    public final Class b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0538v6(Constructor<List<Object>> constructor, Class<Object> valueClass) {
        super(constructor);
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(valueClass, "valueClass");
        this.b = valueClass;
    }

    public final List<Object> b() {
        return (List) a().construct();
    }

    public final Class<Object> c() {
        return this.b;
    }
}
