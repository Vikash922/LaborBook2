package com.amplitude.android.migration;

import com.amplitude.android.Configuration;
import com.amplitude.core.Amplitude;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DatabaseStorage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0005H\u0002J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, m2722d2 = {"Lcom/amplitude/android/migration/DatabaseStorageProvider;", "", "()V", "instances", "", "", "Lcom/amplitude/android/migration/DatabaseStorage;", "getDatabaseName", "instanceName", "getStorage", "amplitude", "Lcom/amplitude/core/Amplitude;", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class DatabaseStorageProvider {
    public static final DatabaseStorageProvider INSTANCE = new DatabaseStorageProvider();
    private static final Map<String, DatabaseStorage> instances = new LinkedHashMap();

    private DatabaseStorageProvider() {
    }

    public final DatabaseStorage getStorage(Amplitude amplitude) {
        Intrinsics.checkNotNullParameter(amplitude, "amplitude");
        Configuration configuration = (Configuration) amplitude.getConfiguration();
        String databaseName = getDatabaseName(configuration.getInstanceName());
        Map<String, DatabaseStorage> map = instances;
        DatabaseStorage databaseStorage = map.get(databaseName);
        if (databaseStorage != null) {
            return databaseStorage;
        }
        DatabaseStorage databaseStorage2 = new DatabaseStorage(configuration.getContext(), databaseName, configuration.getLoggerProvider().getLogger(amplitude));
        map.put(databaseName, databaseStorage2);
        return databaseStorage2;
    }

    private final String getDatabaseName(String instanceName) {
        String lowerCase;
        if (instanceName == null) {
            lowerCase = null;
        } else {
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
            lowerCase = instanceName.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        }
        String str = lowerCase;
        return (str == null || str.length() == 0 || Intrinsics.areEqual(lowerCase, com.amplitude.core.Configuration.DEFAULT_INSTANCE)) ? DatabaseConstants.DATABASE_NAME : Intrinsics.stringPlus("com.amplitude.api_", lowerCase);
    }
}
