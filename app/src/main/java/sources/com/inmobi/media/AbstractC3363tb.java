package com.inmobi.media;

import com.inmobi.commons.utils.json.Constructor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.tb */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3363tb {

    /* JADX INFO: renamed from: a */
    public Constructor f2621a;

    public AbstractC3363tb(Constructor constructor) {
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        this.f2621a = constructor;
    }

    /* JADX INFO: renamed from: a */
    public final Constructor<Object> m2457a() {
        return this.f2621a;
    }

    /* JADX INFO: renamed from: a */
    public final void m2458a(Constructor<Object> constructor) {
        Intrinsics.checkNotNullParameter(constructor, "<set-?>");
        this.f2621a = constructor;
    }
}
