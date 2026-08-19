package com.laborbook.base.utils;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: SubscriptionsFeatureFlag.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/base/utils/SubscriptionsFeatureFlag;", "", "<init>", "()V", "isSubscriptionsEnabled", "", "remoteConfig", "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;", "getFreeUserMaxStaffCount", "", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class SubscriptionsFeatureFlag {
    public static final SubscriptionsFeatureFlag INSTANCE = new SubscriptionsFeatureFlag();

    private SubscriptionsFeatureFlag() {
    }

    public final boolean isSubscriptionsEnabled(FirebaseRemoteConfig remoteConfig) {
        Intrinsics.checkNotNullParameter(remoteConfig, "remoteConfig");
        return remoteConfig.getBoolean("subscriptions_enabled");
    }

    public final int getFreeUserMaxStaffCount(FirebaseRemoteConfig remoteConfig) {
        Intrinsics.checkNotNullParameter(remoteConfig, "remoteConfig");
        return RangesKt.coerceIn((int) remoteConfig.getLong("free_user_max_staff_count"), 1, 100);
    }
}
