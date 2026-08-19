package com.inmobi.media;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.r9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0485r9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f473a;

    public C0485r9(Map requestParams) {
        Intrinsics.checkNotNullParameter(requestParams, "requestParams");
        this.f473a = requestParams;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0485r9) && Intrinsics.areEqual(this.f473a, ((C0485r9) obj).f473a);
    }

    public final int hashCode() {
        return this.f473a.hashCode();
    }

    public final String toString() {
        return "NovatiqAdData(requestParams=" + this.f473a + ')';
    }
}
