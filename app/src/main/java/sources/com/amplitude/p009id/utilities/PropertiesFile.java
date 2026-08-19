package com.amplitude.p009id.utilities;

import com.amplitude.common.Logger;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p024io.CloseableKt;
import kotlin.text.StringsKt;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: PropertiesFile.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\u0016\u001a\u00020\u0017J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0013H\u0016J\u0016\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0005J\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u001c\u001a\u00020\u00192\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u001eJ\b\u0010\u001f\u001a\u00020\u0017H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u00020\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006 "}, m2722d2 = {"Lcom/amplitude/id/utilities/PropertiesFile;", "Lcom/amplitude/id/utilities/KeyValueStore;", "directory", "Ljava/io/File;", "key", "", "prefix", "logger", "Lcom/amplitude/common/Logger;", "(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/common/Logger;)V", "propertiesFile", "propertiesFileName", "underlyingProperties", "Ljava/util/Properties;", "getUnderlyingProperties$id", "()Ljava/util/Properties;", "setUnderlyingProperties$id", "(Ljava/util/Properties;)V", "getLong", "", "defaultVal", "getString", "load", "", "putLong", "", "value", "putString", "remove", UserMetadata.KEYDATA_FILENAME, "", "save", "id"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class PropertiesFile implements KeyValueStore {
    private final Logger logger;
    private final File propertiesFile;
    private final String propertiesFileName;
    private Properties underlyingProperties;

    public PropertiesFile(File directory, String key, String prefix, Logger logger) {
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        this.underlyingProperties = new Properties();
        String str = prefix + SignatureVisitor.SUPER + key + ".properties";
        this.propertiesFileName = str;
        this.propertiesFile = new File(directory, str);
        this.logger = logger;
    }

    /* JADX INFO: renamed from: getUnderlyingProperties$id, reason: from getter */
    public final Properties getUnderlyingProperties() {
        return this.underlyingProperties;
    }

    public final void setUnderlyingProperties$id(Properties properties) {
        Intrinsics.checkNotNullParameter(properties, "<set-?>");
        this.underlyingProperties = properties;
    }

    public final void load() throws IOException {
        if (this.propertiesFile.exists()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(this.propertiesFile);
                try {
                    getUnderlyingProperties().load(fileInputStream);
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(fileInputStream, null);
                    return;
                } finally {
                }
            } catch (Throwable th) {
                this.propertiesFile.delete();
                Logger logger = this.logger;
                if (logger != null) {
                    logger.error("Failed to load property file with path " + ((Object) this.propertiesFile.getAbsolutePath()) + ", error stacktrace: " + ExceptionsKt.stackTraceToString(th));
                }
            }
        }
        this.propertiesFile.getParentFile().mkdirs();
        this.propertiesFile.createNewFile();
    }

    private final void save() {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(this.propertiesFile);
            try {
                getUnderlyingProperties().store(fileOutputStream, (String) null);
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
            } finally {
            }
        } catch (Throwable th) {
            Logger logger = this.logger;
            if (logger == null) {
                return;
            }
            logger.error("Failed to save property file with path " + ((Object) this.propertiesFile.getAbsolutePath()) + ", error stacktrace: " + ExceptionsKt.stackTraceToString(th));
        }
    }

    @Override // com.amplitude.p009id.utilities.KeyValueStore
    public long getLong(String key, long defaultVal) {
        Intrinsics.checkNotNullParameter(key, "key");
        String property = this.underlyingProperties.getProperty(key, "");
        Intrinsics.checkNotNullExpressionValue(property, "underlyingProperties.getProperty(key, \"\")");
        Long longOrNull = StringsKt.toLongOrNull(property);
        return longOrNull == null ? defaultVal : longOrNull.longValue();
    }

    @Override // com.amplitude.p009id.utilities.KeyValueStore
    public boolean putLong(String key, long value) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.underlyingProperties.setProperty(key, String.valueOf(value));
        save();
        return true;
    }

    public final boolean putString(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.underlyingProperties.setProperty(key, value);
        save();
        return true;
    }

    public final String getString(String key, String defaultVal) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.underlyingProperties.getProperty(key, defaultVal);
    }

    public final boolean remove(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.underlyingProperties.remove(key);
        save();
        return true;
    }

    public final boolean remove(List<String> keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Iterator<T> it = keys.iterator();
        while (it.hasNext()) {
            getUnderlyingProperties().remove((String) it.next());
        }
        save();
        return true;
    }
}
