package com.amplitude.android;

import android.content.Context;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Amplitude.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a/\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\n¨\u0006\u000b"}, m2722d2 = {"Amplitude", "Lcom/amplitude/android/Amplitude;", "apiKey", "", "context", "Landroid/content/Context;", "configs", "Lkotlin/Function1;", "Lcom/amplitude/android/Configuration;", "", "Lkotlin/ExtensionFunctionType;", "android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AmplitudeKt {
    public static final Amplitude Amplitude(String apiKey, Context context, Function1<? super Configuration, Unit> configs) {
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configs, "configs");
        Configuration configuration = new Configuration(apiKey, context, 0, 0, null, false, null, null, null, null, null, 0, false, null, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -4, 3, null);
        configs.invoke(configuration);
        return new Amplitude(configuration);
    }
}
