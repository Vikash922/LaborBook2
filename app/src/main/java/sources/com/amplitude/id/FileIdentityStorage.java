package com.amplitude.id;

import com.amplitude.id.utilities.FileUtilsKt;
import com.amplitude.id.utilities.PropertiesFile;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FileIdentityStorage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0016J\u001a\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/amplitude/id/FileIdentityStorage;", "Lcom/amplitude/id/IdentityStorage;", "configuration", "Lcom/amplitude/id/IdentityConfiguration;", "(Lcom/amplitude/id/IdentityConfiguration;)V", "getConfiguration", "()Lcom/amplitude/id/IdentityConfiguration;", "propertiesFile", "Lcom/amplitude/id/utilities/PropertiesFile;", "load", "Lcom/amplitude/id/Identity;", "safeForKey", "", "apiKey", "", "configValue", "safetyCheck", "", "saveDeviceId", "deviceId", "saveUserId", "userId", "Companion", "id"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FileIdentityStorage implements IdentityStorage {
    public static final String API_KEY = "api_key";
    public static final String DEVICE_ID_KEY = "device_id";
    public static final String EXPERIMENT_API_KEY = "experiment_api_key";
    public static final String STORAGE_PREFIX = "amplitude-identity";
    public static final String USER_ID_KEY = "user_id";
    private final IdentityConfiguration configuration;
    private final PropertiesFile propertiesFile;

    public FileIdentityStorage(IdentityConfiguration configuration) throws IOException {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.configuration = configuration;
        String instanceName = configuration.getInstanceName();
        File storageDirectory = configuration.getStorageDirectory();
        storageDirectory = storageDirectory == null ? new File(Intrinsics.stringPlus("/tmp/amplitude-identity/", instanceName)) : storageDirectory;
        FileUtilsKt.createDirectory(storageDirectory);
        PropertiesFile propertiesFile = new PropertiesFile(storageDirectory, instanceName, STORAGE_PREFIX, configuration.getLogger());
        this.propertiesFile = propertiesFile;
        propertiesFile.load();
        safetyCheck();
    }

    public final IdentityConfiguration getConfiguration() {
        return this.configuration;
    }

    @Override // com.amplitude.id.IdentityStorage
    public void saveUserId(String userId) {
        PropertiesFile propertiesFile = this.propertiesFile;
        if (userId == null) {
            userId = "";
        }
        propertiesFile.putString("user_id", userId);
    }

    @Override // com.amplitude.id.IdentityStorage
    public void saveDeviceId(String deviceId) {
        PropertiesFile propertiesFile = this.propertiesFile;
        if (deviceId == null) {
            deviceId = "";
        }
        propertiesFile.putString("device_id", deviceId);
    }

    @Override // com.amplitude.id.IdentityStorage
    public Identity load() {
        return new Identity(this.propertiesFile.getString("user_id", null), this.propertiesFile.getString("device_id", null));
    }

    private final void safetyCheck() {
        if (!safeForKey(API_KEY, this.configuration.getApiKey()) || !safeForKey(EXPERIMENT_API_KEY, this.configuration.getExperimentApiKey())) {
            this.propertiesFile.remove(CollectionsKt.listOf((Object[]) new String[]{"user_id", "device_id", API_KEY, EXPERIMENT_API_KEY}));
        }
        String apiKey = this.configuration.getApiKey();
        if (apiKey != null) {
            this.propertiesFile.putString(API_KEY, apiKey);
        }
        String experimentApiKey = this.configuration.getExperimentApiKey();
        if (experimentApiKey == null) {
            return;
        }
        this.propertiesFile.putString(EXPERIMENT_API_KEY, experimentApiKey);
    }

    private final boolean safeForKey(String apiKey, String configValue) {
        String string;
        if (configValue == null || (string = this.propertiesFile.getString(apiKey, null)) == null) {
            return true;
        }
        return Intrinsics.areEqual(string, configValue);
    }
}
