package com.amplitude.android.migration;

import kotlin.Metadata;

/* JADX INFO: compiled from: DatabaseStorage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m2722d2 = {"Lcom/amplitude/android/migration/DatabaseConstants;", "", "()V", "DATABASE_NAME", "", "DATABASE_VERSION", "", "EVENT_FIELD", "EVENT_TABLE_NAME", "IDENTIFY_INTERCEPTOR_TABLE_NAME", "IDENTIFY_TABLE_NAME", "ID_FIELD", "KEY_FIELD", "LONG_STORE_TABLE_NAME", "ROW_ID_FIELD", "STORE_TABLE_NAME", "VALUE_FIELD", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class DatabaseConstants {
    public static final String DATABASE_NAME = "com.amplitude.api";
    public static final int DATABASE_VERSION = 4;
    public static final String EVENT_FIELD = "event";
    public static final String EVENT_TABLE_NAME = "events";
    public static final String IDENTIFY_INTERCEPTOR_TABLE_NAME = "identify_interceptor";
    public static final String IDENTIFY_TABLE_NAME = "identifys";
    public static final String ID_FIELD = "id";
    public static final DatabaseConstants INSTANCE = new DatabaseConstants();
    public static final String KEY_FIELD = "key";
    public static final String LONG_STORE_TABLE_NAME = "long_store";
    public static final String ROW_ID_FIELD = "$rowId";
    public static final String STORE_TABLE_NAME = "store";
    public static final String VALUE_FIELD = "value";

    private DatabaseConstants() {
    }
}
