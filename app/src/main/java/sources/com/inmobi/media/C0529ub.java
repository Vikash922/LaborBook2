package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.ub, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0529ub {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f502a;
    public final Class b;

    public C0529ub(String fieldName, Class<?> originClass) {
        Intrinsics.checkNotNullParameter(fieldName, "fieldName");
        Intrinsics.checkNotNullParameter(originClass, "originClass");
        this.f502a = fieldName;
        this.b = originClass;
    }

    public final C0529ub a(String fieldName, Class<?> originClass) {
        Intrinsics.checkNotNullParameter(fieldName, "fieldName");
        Intrinsics.checkNotNullParameter(originClass, "originClass");
        return new C0529ub(fieldName, originClass);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0529ub)) {
            return false;
        }
        C0529ub c0529ub = (C0529ub) obj;
        return Intrinsics.areEqual(this.f502a, c0529ub.f502a) && Intrinsics.areEqual(this.b, c0529ub.b);
    }

    public int hashCode() {
        return this.b.hashCode() + (this.f502a.hashCode() * 31);
    }

    public String toString() {
        return "RuleKey(fieldName=" + this.f502a + ", originClass=" + this.b + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ C0529ub a(C0529ub c0529ub, String str, Class cls, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c0529ub.f502a;
        }
        if ((i & 2) != 0) {
            cls = c0529ub.b;
        }
        return c0529ub.a(str, cls);
    }
}
