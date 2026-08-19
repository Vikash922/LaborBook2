package com.amplitude.android.events;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: Export.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B7\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007¨\u0006\b"}, m2722d2 = {"Lcom/amplitude/android/events/Plan;", "Lcom/amplitude/core/events/Plan;", com.amplitude.core.events.Plan.AMP_PLAN_BRANCH, "", "source", "version", com.amplitude.core.events.Plan.AMP_PLAN_VERSION_ID, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class Plan extends com.amplitude.core.events.Plan {
    public Plan() {
        this(null, null, null, null, 15, null);
    }

    public Plan(String str) {
        this(str, null, null, null, 14, null);
    }

    public Plan(String str, String str2) {
        this(str, str2, null, null, 12, null);
    }

    public Plan(String str, String str2, String str3) {
        this(str, str2, str3, null, 8, null);
    }

    public /* synthetic */ Plan(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4);
    }

    public Plan(String str, String str2, String str3, String str4) {
        super(str, str2, str3, str4);
    }
}
