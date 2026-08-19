package com.inmobi.media;

import com.inmobi.commons.utils.json.Constructor;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.v6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3388v6 extends AbstractC3363tb {

    /* JADX INFO: renamed from: b */
    public final Class f2683b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3388v6(Constructor<List<Object>> constructor, Class<Object> valueClass) {
        super(constructor);
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(valueClass, "valueClass");
        this.f2683b = valueClass;
    }

    /* JADX INFO: renamed from: b */
    public final List<Object> m2507b() {
        return (List) m2457a().construct();
    }

    /* JADX INFO: renamed from: c */
    public final Class<Object> m2508c() {
        return this.f2683b;
    }
}
