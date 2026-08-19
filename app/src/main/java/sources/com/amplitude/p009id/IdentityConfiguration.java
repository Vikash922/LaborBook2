package com.amplitude.p009id;

import com.amplitude.common.Logger;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IdentityConfiguration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u000bHÆ\u0003JM\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006$"}, m2722d2 = {"Lcom/amplitude/id/IdentityConfiguration;", "", "instanceName", "", "apiKey", "experimentApiKey", "identityStorageProvider", "Lcom/amplitude/id/IdentityStorageProvider;", "storageDirectory", "Ljava/io/File;", "logger", "Lcom/amplitude/common/Logger;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amplitude/id/IdentityStorageProvider;Ljava/io/File;Lcom/amplitude/common/Logger;)V", "getApiKey", "()Ljava/lang/String;", "getExperimentApiKey", "getIdentityStorageProvider", "()Lcom/amplitude/id/IdentityStorageProvider;", "getInstanceName", "getLogger", "()Lcom/amplitude/common/Logger;", "getStorageDirectory", "()Ljava/io/File;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "id"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final /* data */ class IdentityConfiguration {
    private final String apiKey;
    private final String experimentApiKey;
    private final IdentityStorageProvider identityStorageProvider;
    private final String instanceName;
    private final Logger logger;
    private final File storageDirectory;

    public static /* synthetic */ IdentityConfiguration copy$default(IdentityConfiguration identityConfiguration, String str, String str2, String str3, IdentityStorageProvider identityStorageProvider, File file, Logger logger, int i, Object obj) {
        if ((i & 1) != 0) {
            str = identityConfiguration.instanceName;
        }
        if ((i & 2) != 0) {
            str2 = identityConfiguration.apiKey;
        }
        String str4 = str2;
        if ((i & 4) != 0) {
            str3 = identityConfiguration.experimentApiKey;
        }
        String str5 = str3;
        if ((i & 8) != 0) {
            identityStorageProvider = identityConfiguration.identityStorageProvider;
        }
        IdentityStorageProvider identityStorageProvider2 = identityStorageProvider;
        if ((i & 16) != 0) {
            file = identityConfiguration.storageDirectory;
        }
        File file2 = file;
        if ((i & 32) != 0) {
            logger = identityConfiguration.logger;
        }
        return identityConfiguration.copy(str, str4, str5, identityStorageProvider2, file2, logger);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getInstanceName() {
        return this.instanceName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getApiKey() {
        return this.apiKey;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getExperimentApiKey() {
        return this.experimentApiKey;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final IdentityStorageProvider getIdentityStorageProvider() {
        return this.identityStorageProvider;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final File getStorageDirectory() {
        return this.storageDirectory;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Logger getLogger() {
        return this.logger;
    }

    public final IdentityConfiguration copy(String instanceName, String apiKey, String experimentApiKey, IdentityStorageProvider identityStorageProvider, File storageDirectory, Logger logger) {
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(identityStorageProvider, "identityStorageProvider");
        return new IdentityConfiguration(instanceName, apiKey, experimentApiKey, identityStorageProvider, storageDirectory, logger);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof IdentityConfiguration)) {
            return false;
        }
        IdentityConfiguration identityConfiguration = (IdentityConfiguration) other;
        return Intrinsics.areEqual(this.instanceName, identityConfiguration.instanceName) && Intrinsics.areEqual(this.apiKey, identityConfiguration.apiKey) && Intrinsics.areEqual(this.experimentApiKey, identityConfiguration.experimentApiKey) && Intrinsics.areEqual(this.identityStorageProvider, identityConfiguration.identityStorageProvider) && Intrinsics.areEqual(this.storageDirectory, identityConfiguration.storageDirectory) && Intrinsics.areEqual(this.logger, identityConfiguration.logger);
    }

    public int hashCode() {
        int iHashCode = this.instanceName.hashCode() * 31;
        String str = this.apiKey;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.experimentApiKey;
        int iHashCode3 = (((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.identityStorageProvider.hashCode()) * 31;
        File file = this.storageDirectory;
        int iHashCode4 = (iHashCode3 + (file == null ? 0 : file.hashCode())) * 31;
        Logger logger = this.logger;
        return iHashCode4 + (logger != null ? logger.hashCode() : 0);
    }

    public String toString() {
        return "IdentityConfiguration(instanceName=" + this.instanceName + ", apiKey=" + ((Object) this.apiKey) + ", experimentApiKey=" + ((Object) this.experimentApiKey) + ", identityStorageProvider=" + this.identityStorageProvider + ", storageDirectory=" + this.storageDirectory + ", logger=" + this.logger + ')';
    }

    public IdentityConfiguration(String instanceName, String str, String str2, IdentityStorageProvider identityStorageProvider, File file, Logger logger) {
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(identityStorageProvider, "identityStorageProvider");
        this.instanceName = instanceName;
        this.apiKey = str;
        this.experimentApiKey = str2;
        this.identityStorageProvider = identityStorageProvider;
        this.storageDirectory = file;
        this.logger = logger;
    }

    public /* synthetic */ IdentityConfiguration(String str, String str2, String str3, IdentityStorageProvider identityStorageProvider, File file, Logger logger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, identityStorageProvider, (i & 16) != 0 ? null : file, (i & 32) != 0 ? null : logger);
    }

    public final String getInstanceName() {
        return this.instanceName;
    }

    public final String getApiKey() {
        return this.apiKey;
    }

    public final String getExperimentApiKey() {
        return this.experimentApiKey;
    }

    public final IdentityStorageProvider getIdentityStorageProvider() {
        return this.identityStorageProvider;
    }

    public final File getStorageDirectory() {
        return this.storageDirectory;
    }

    public final Logger getLogger() {
        return this.logger;
    }
}
