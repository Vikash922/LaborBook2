package com.laborbook.base.analytics;

import com.amplitude.android.Amplitude;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AmplitudeHolder.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/base/analytics/AmplitudeHolder;", "", "<init>", "()V", "instance", "Lcom/amplitude/android/Amplitude;", "getInstance", "()Lcom/amplitude/android/Amplitude;", "setInstance", "(Lcom/amplitude/android/Amplitude;)V", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AmplitudeHolder {
    public static final AmplitudeHolder INSTANCE = new AmplitudeHolder();
    public static Amplitude instance;

    private AmplitudeHolder() {
    }

    public final Amplitude getInstance() {
        Amplitude amplitude = instance;
        if (amplitude != null) {
            return amplitude;
        }
        Intrinsics.throwUninitializedPropertyAccessException("instance");
        return null;
    }

    public final void setInstance(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "<set-?>");
        instance = amplitude;
    }
}
