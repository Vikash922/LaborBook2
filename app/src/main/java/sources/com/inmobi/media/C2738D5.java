package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.D5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2738D5 {

    /* JADX INFO: renamed from: a */
    public final JSONObject f915a;

    /* JADX INFO: renamed from: b */
    public final JSONArray f916b;

    /* JADX INFO: renamed from: c */
    public final C3448z6 f917c;

    public C2738D5(JSONObject vitals, JSONArray logs, C3448z6 data) {
        Intrinsics.checkNotNullParameter(vitals, "vitals");
        Intrinsics.checkNotNullParameter(logs, "logs");
        Intrinsics.checkNotNullParameter(data, "data");
        this.f915a = vitals;
        this.f916b = logs;
        this.f917c = data;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2738D5)) {
            return false;
        }
        C2738D5 c2738d5 = (C2738D5) obj;
        return Intrinsics.areEqual(this.f915a, c2738d5.f915a) && Intrinsics.areEqual(this.f916b, c2738d5.f916b) && Intrinsics.areEqual(this.f917c, c2738d5.f917c);
    }

    public final int hashCode() {
        return this.f917c.hashCode() + ((this.f916b.hashCode() + (this.f915a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "IncompleteLogData(vitals=" + this.f915a + ", logs=" + this.f916b + ", data=" + this.f917c + ')';
    }
}
