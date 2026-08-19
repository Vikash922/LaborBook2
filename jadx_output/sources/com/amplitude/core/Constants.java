package com.amplitude.core;

import kotlin.Metadata;

/* JADX INFO: compiled from: Constants.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m2722d2 = {"Lcom/amplitude/core/Constants;", "", "()V", "AMP_REVENUE_EVENT", "", "BATCH_API_HOST", "DEFAULT_API_HOST", "EU_BATCH_API_HOST", "EU_DEFAULT_API_HOST", "GROUP_IDENTIFY_EVENT", "IDENTIFY_EVENT", "MAX_PROPERTY_KEYS", "", "MAX_STRING_LENGTH", "SDK_LIBRARY", "SDK_VERSION", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class Constants {
    public static final String AMP_REVENUE_EVENT = "revenue_amount";
    public static final String BATCH_API_HOST = "https://api2.amplitude.com/batch";
    public static final String DEFAULT_API_HOST = "https://api2.amplitude.com/2/httpapi";
    public static final String EU_BATCH_API_HOST = "https://api.eu.amplitude.com/batch";
    public static final String EU_DEFAULT_API_HOST = "https://api.eu.amplitude.com/2/httpapi";
    public static final String GROUP_IDENTIFY_EVENT = "$groupidentify";
    public static final String IDENTIFY_EVENT = "$identify";
    public static final Constants INSTANCE = new Constants();
    public static final int MAX_PROPERTY_KEYS = 1024;
    public static final int MAX_STRING_LENGTH = 1024;
    public static final String SDK_LIBRARY = "amplitude-kotlin";
    public static final String SDK_VERSION = "0.0.1";

    private Constants() {
    }
}
