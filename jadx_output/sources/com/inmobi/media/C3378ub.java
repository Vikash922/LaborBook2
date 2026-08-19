package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.ub */
/* JADX INFO: loaded from: classes6.dex */
public final class C3378ub {

    /* JADX INFO: renamed from: a */
    public final String f2669a;

    /* JADX INFO: renamed from: b */
    public final Class f2670b;

    public C3378ub(String fieldName, Class<?> originClass) {
        Intrinsics.checkNotNullParameter(fieldName, "fieldName");
        Intrinsics.checkNotNullParameter(originClass, "originClass");
        this.f2669a = fieldName;
        this.f2670b = originClass;
    }

    /* JADX INFO: renamed from: a */
    public final C3378ub m2494a(String fieldName, Class<?> originClass) {
        Intrinsics.checkNotNullParameter(fieldName, "fieldName");
        Intrinsics.checkNotNullParameter(originClass, "originClass");
        return new C3378ub(fieldName, originClass);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3378ub)) {
            return false;
        }
        C3378ub c3378ub = (C3378ub) obj;
        return Intrinsics.areEqual(this.f2669a, c3378ub.f2669a) && Intrinsics.areEqual(this.f2670b, c3378ub.f2670b);
    }

    public int hashCode() {
        return this.f2670b.hashCode() + (this.f2669a.hashCode() * 31);
    }

    public String toString() {
        return "RuleKey(fieldName=" + this.f2669a + ", originClass=" + this.f2670b + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: a */
    public static /* synthetic */ C3378ub m2493a(C3378ub c3378ub, String str, Class cls, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3378ub.f2669a;
        }
        if ((i & 2) != 0) {
            cls = c3378ub.f2670b;
        }
        return c3378ub.m2494a(str, cls);
    }
}
