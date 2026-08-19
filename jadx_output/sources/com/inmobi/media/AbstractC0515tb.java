package com.inmobi.media;

import com.inmobi.commons.utils.json.Constructor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.tb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC0515tb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Constructor f493a;

    public AbstractC0515tb(Constructor constructor) {
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        this.f493a = constructor;
    }

    public final Constructor<Object> a() {
        return this.f493a;
    }

    public final void a(Constructor<Object> constructor) {
        Intrinsics.checkNotNullParameter(constructor, "<set-?>");
        this.f493a = constructor;
    }
}
