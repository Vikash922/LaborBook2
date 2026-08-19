package com.inmobi.media;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.r9 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3331r9 {

    /* JADX INFO: renamed from: a */
    public final Map f2507a;

    public C3331r9(Map requestParams) {
        Intrinsics.checkNotNullParameter(requestParams, "requestParams");
        this.f2507a = requestParams;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C3331r9) && Intrinsics.areEqual(this.f2507a, ((C3331r9) obj).f2507a);
    }

    public final int hashCode() {
        return this.f2507a.hashCode();
    }

    public final String toString() {
        return "NovatiqAdData(requestParams=" + this.f2507a + ')';
    }
}
