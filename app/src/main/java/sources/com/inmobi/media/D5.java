package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class D5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JSONObject f96a;
    public final JSONArray b;
    public final C0596z6 c;

    public D5(JSONObject vitals, JSONArray logs, C0596z6 data) {
        Intrinsics.checkNotNullParameter(vitals, "vitals");
        Intrinsics.checkNotNullParameter(logs, "logs");
        Intrinsics.checkNotNullParameter(data, "data");
        this.f96a = vitals;
        this.b = logs;
        this.c = data;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof D5)) {
            return false;
        }
        D5 d5 = (D5) obj;
        return Intrinsics.areEqual(this.f96a, d5.f96a) && Intrinsics.areEqual(this.b, d5.b) && Intrinsics.areEqual(this.c, d5.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.f96a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "IncompleteLogData(vitals=" + this.f96a + ", logs=" + this.b + ", data=" + this.c + ')';
    }
}
