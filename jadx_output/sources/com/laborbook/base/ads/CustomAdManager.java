package com.laborbook.base.ads;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: CustomAdManager.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, m2722d2 = {"Lcom/laborbook/base/ads/CustomAdManager;", "", "provider", "Lcom/laborbook/base/ads/CustomAdProvider;", "<init>", "(Lcom/laborbook/base/ads/CustomAdProvider;)V", "getCustomAdDataSync", "Lcom/laborbook/base/ads/CustomAdData;", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class CustomAdManager {
    private final CustomAdProvider provider;

    /* JADX WARN: Multi-variable type inference failed */
    public CustomAdManager() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public CustomAdManager(CustomAdProvider customAdProvider) {
        this.provider = customAdProvider;
    }

    public /* synthetic */ CustomAdManager(CustomAdProvider customAdProvider, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : customAdProvider);
    }

    public final CustomAdData getCustomAdDataSync() {
        CustomAdData customAdData;
        CustomAdProvider customAdProvider = this.provider;
        return (customAdProvider == null || (customAdData = customAdProvider.getCustomAdData()) == null) ? new CustomAdData(false, "", "", "") : customAdData;
    }
}
