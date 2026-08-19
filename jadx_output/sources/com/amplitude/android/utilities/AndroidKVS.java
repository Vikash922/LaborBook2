package com.amplitude.android.utilities;

import android.content.SharedPreferences;
import com.amplitude.p009id.utilities.KeyValueStore;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidKVS.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, m2722d2 = {"Lcom/amplitude/android/utilities/AndroidKVS;", "Lcom/amplitude/id/utilities/KeyValueStore;", "sharedPreferences", "Landroid/content/SharedPreferences;", "(Landroid/content/SharedPreferences;)V", "getLong", "", "key", "", "defaultVal", "putLong", "", "value", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class AndroidKVS implements KeyValueStore {
    private final SharedPreferences sharedPreferences;

    public AndroidKVS(SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        this.sharedPreferences = sharedPreferences;
    }

    @Override // com.amplitude.p009id.utilities.KeyValueStore
    public long getLong(String key, long defaultVal) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.sharedPreferences.getLong(key, defaultVal);
    }

    @Override // com.amplitude.p009id.utilities.KeyValueStore
    public boolean putLong(String key, long value) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.sharedPreferences.edit().putLong(key, value).commit();
    }
}
