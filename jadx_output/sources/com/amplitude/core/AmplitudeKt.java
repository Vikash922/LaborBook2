package com.amplitude.core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Amplitude.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0002\b\b¨\u0006\t"}, m2722d2 = {"Amplitude", "Lcom/amplitude/core/Amplitude;", "apiKey", "", "configs", "Lkotlin/Function1;", "Lcom/amplitude/core/Configuration;", "", "Lkotlin/ExtensionFunctionType;", "core"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AmplitudeKt {
    public static final Amplitude Amplitude(String apiKey, Function1<? super Configuration, Unit> configs) {
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(configs, "configs");
        Configuration configuration = new Configuration(apiKey, 0, 0, null, false, null, null, null, null, null, 0, false, null, null, null, null, 0L, null, null, null, null, null, 4194302, null);
        configs.invoke(configuration);
        return new Amplitude(configuration);
    }
}
