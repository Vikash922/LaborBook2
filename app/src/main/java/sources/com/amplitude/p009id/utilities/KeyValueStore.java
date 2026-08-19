package com.amplitude.p009id.utilities;

import kotlin.Metadata;

/* JADX INFO: compiled from: PropertiesFile.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H&J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, m2722d2 = {"Lcom/amplitude/id/utilities/KeyValueStore;", "", "getLong", "", "key", "", "defaultVal", "putLong", "", "value", "id"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public interface KeyValueStore {
    long getLong(String key, long defaultVal);

    boolean putLong(String key, long value);
}
