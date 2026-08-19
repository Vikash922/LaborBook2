package com.amplitude.android;

import android.content.Context;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.amplitude.android.utilities.AndroidLoggerProvider;
import com.amplitude.android.utilities.AndroidStorageProvider;
import com.amplitude.core.LoggerProvider;
import com.amplitude.core.ServerZone;
import com.amplitude.core.StorageProvider;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.events.IngestionMetadata;
import com.amplitude.core.events.Plan;
import com.amplitude.p009id.FileIdentityStorageProvider;
import com.amplitude.p009id.IdentityStorageProvider;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Configuration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\bn\b\u0016\u0018\u0000 ¡\u00012\u00020\u0001:\u0002¡\u0001B¥\u0003\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012F\b\u0002\u0010\u0012\u001a@\u0012\u0004\u0012\u00020\u0014\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0013j\u0004\u0018\u0001`\u001a\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010#\u0012\b\b\u0002\u0010$\u001a\u00020\u000b\u0012\b\b\u0002\u0010%\u001a\u00020\u000b\u0012\b\b\u0002\u0010&\u001a\u00020\u000b\u0012\b\b\u0002\u0010'\u001a\u00020(\u0012\b\b\u0002\u0010)\u001a\u00020\u000b\u0012\b\b\u0002\u0010*\u001a\u00020\u000b\u0012\b\b\u0002\u0010+\u001a\u00020\u000b\u0012\b\b\u0002\u0010,\u001a\u00020-\u0012\b\b\u0002\u0010.\u001a\u00020\u000b\u0012\b\b\u0002\u0010/\u001a\u000200\u0012\b\b\u0002\u00101\u001a\u00020-\u0012\b\b\u0002\u00102\u001a\u00020\r\u0012\b\b\u0002\u00103\u001a\u000204\u0012\b\b\u0002\u00105\u001a\u00020\u000b\u0012\n\b\u0002\u00106\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u00107\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u00010-¢\u0006\u0002\u00109RX\u0010\u0012\u001a@\u0012\u0004\u0012\u00020\u0014\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0013j\u0004\u0018\u0001`\u001aX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R\u001a\u0010/\u001a\u000200X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u001c\u00107\u001a\u0004\u0018\u00010\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u001a\u0010)\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u001a\u0010+\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010I\"\u0004\bM\u0010KR\u001a\u0010\b\u001a\u00020\u0007X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR\u001a\u0010\u001b\u001a\u00020\u0007X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010O\"\u0004\bS\u0010QR\u001a\u0010\u0006\u001a\u00020\u0007X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u0010O\"\u0004\bU\u0010QR\u001a\u00101\u001a\u00020-X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR\u001a\u00102\u001a\u00020\rX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]R\u001a\u00103\u001a\u000204X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b^\u0010_\"\u0004\b`\u0010aR\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\u001a\u0010\t\u001a\u00020\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u0010E\"\u0004\bg\u0010GR\u001a\u0010*\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bh\u0010I\"\u0004\bi\u0010KR\u001a\u0010\u000e\u001a\u00020\u000fX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\u001a\u00105\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bn\u0010I\"\u0004\bo\u0010KR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u0007X\u0096\u000e¢\u0006\u0010\n\u0002\u0010t\u001a\u0004\bp\u0010q\"\u0004\br\u0010sR\u001a\u0010,\u001a\u00020-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bu\u0010W\"\u0004\bv\u0010YR\u001a\u0010&\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bw\u0010I\"\u0004\bx\u0010KR\u001e\u00106\u001a\u0004\u0018\u00010\u000bX\u0096\u000e¢\u0006\u0010\n\u0002\u0010}\u001a\u0004\by\u0010z\"\u0004\b{\u0010|R\u001a\u0010\n\u001a\u00020\u000bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b~\u0010I\"\u0004\b\u007f\u0010KR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0096\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0080\u0001\u0010E\"\u0005\b\u0081\u0001\u0010GR \u0010 \u001a\u0004\u0018\u00010!X\u0096\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001\"\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u0003X\u0096\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0086\u0001\u0010E\"\u0005\b\u0087\u0001\u0010GR\u001e\u0010\u001d\u001a\u00020\u001eX\u0096\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001\"\u0006\b\u008a\u0001\u0010\u008b\u0001R#\u00108\u001a\u0004\u0018\u00010-X\u0096\u000e¢\u0006\u0015\n\u0003\u0010\u0090\u0001\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001\"\u0006\b\u008e\u0001\u0010\u008f\u0001R\u001c\u0010\f\u001a\u00020\rX\u0096\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0091\u0001\u0010[\"\u0005\b\u0092\u0001\u0010]R\u001e\u0010'\u001a\u00020(X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001\"\u0006\b\u0095\u0001\u0010\u0096\u0001R(\u0010.\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0000\u0012\u0006\b\u0097\u0001\u0010\u0098\u0001\u001a\u0005\b\u0099\u0001\u0010I\"\u0005\b\u009a\u0001\u0010KR\u001c\u0010$\u001a\u00020\u000bX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u009b\u0001\u0010I\"\u0005\b\u009c\u0001\u0010KR\u001c\u0010%\u001a\u00020\u000bX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u009d\u0001\u0010I\"\u0005\b\u009e\u0001\u0010KR\u001c\u0010\u001c\u001a\u00020\u000bX\u0096\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u009f\u0001\u0010I\"\u0005\b \u0001\u0010K¨\u0006¢\u0001"}, m2722d2 = {"Lcom/amplitude/android/Configuration;", "Lcom/amplitude/core/Configuration;", "apiKey", "", "context", "Landroid/content/Context;", "flushQueueSize", "", "flushIntervalMillis", "instanceName", "optOut", "", "storageProvider", "Lcom/amplitude/core/StorageProvider;", "loggerProvider", "Lcom/amplitude/core/LoggerProvider;", "minIdLength", "partnerId", "callback", "Lkotlin/Function3;", "Lcom/amplitude/core/events/BaseEvent;", "Lkotlin/ParameterName;", "name", "status", "message", "", "Lcom/amplitude/core/EventCallBack;", "flushMaxRetries", "useBatch", "serverZone", "Lcom/amplitude/core/ServerZone;", "serverUrl", "plan", "Lcom/amplitude/core/events/Plan;", "ingestionMetadata", "Lcom/amplitude/core/events/IngestionMetadata;", "useAdvertisingIdForDeviceId", "useAppSetIdForDeviceId", "newDeviceIdPerInstall", "trackingOptions", "Lcom/amplitude/android/TrackingOptions;", "enableCoppaControl", "locationListening", "flushEventsOnClose", "minTimeBetweenSessionsMillis", "", "trackingSessionEvents", "defaultTracking", "Lcom/amplitude/android/DefaultTrackingOptions;", "identifyBatchIntervalMillis", "identifyInterceptStorageProvider", "identityStorageProvider", "Lcom/amplitude/id/IdentityStorageProvider;", "migrateLegacyData", "offline", "deviceId", "sessionId", "(Ljava/lang/String;Landroid/content/Context;IILjava/lang/String;ZLcom/amplitude/core/StorageProvider;Lcom/amplitude/core/LoggerProvider;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function3;IZLcom/amplitude/core/ServerZone;Ljava/lang/String;Lcom/amplitude/core/events/Plan;Lcom/amplitude/core/events/IngestionMetadata;ZZZLcom/amplitude/android/TrackingOptions;ZZZJZLcom/amplitude/android/DefaultTrackingOptions;JLcom/amplitude/core/StorageProvider;Lcom/amplitude/id/IdentityStorageProvider;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)V", "getCallback", "()Lkotlin/jvm/functions/Function3;", "setCallback", "(Lkotlin/jvm/functions/Function3;)V", "getContext", "()Landroid/content/Context;", "getDefaultTracking", "()Lcom/amplitude/android/DefaultTrackingOptions;", "setDefaultTracking", "(Lcom/amplitude/android/DefaultTrackingOptions;)V", "getDeviceId", "()Ljava/lang/String;", "setDeviceId", "(Ljava/lang/String;)V", "getEnableCoppaControl", "()Z", "setEnableCoppaControl", "(Z)V", "getFlushEventsOnClose", "setFlushEventsOnClose", "getFlushIntervalMillis", "()I", "setFlushIntervalMillis", "(I)V", "getFlushMaxRetries", "setFlushMaxRetries", "getFlushQueueSize", "setFlushQueueSize", "getIdentifyBatchIntervalMillis", "()J", "setIdentifyBatchIntervalMillis", "(J)V", "getIdentifyInterceptStorageProvider", "()Lcom/amplitude/core/StorageProvider;", "setIdentifyInterceptStorageProvider", "(Lcom/amplitude/core/StorageProvider;)V", "getIdentityStorageProvider", "()Lcom/amplitude/id/IdentityStorageProvider;", "setIdentityStorageProvider", "(Lcom/amplitude/id/IdentityStorageProvider;)V", "getIngestionMetadata", "()Lcom/amplitude/core/events/IngestionMetadata;", "setIngestionMetadata", "(Lcom/amplitude/core/events/IngestionMetadata;)V", "getInstanceName", "setInstanceName", "getLocationListening", "setLocationListening", "getLoggerProvider", "()Lcom/amplitude/core/LoggerProvider;", "setLoggerProvider", "(Lcom/amplitude/core/LoggerProvider;)V", "getMigrateLegacyData", "setMigrateLegacyData", "getMinIdLength", "()Ljava/lang/Integer;", "setMinIdLength", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getMinTimeBetweenSessionsMillis", "setMinTimeBetweenSessionsMillis", "getNewDeviceIdPerInstall", "setNewDeviceIdPerInstall", "getOffline", "()Ljava/lang/Boolean;", "setOffline", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getOptOut", "setOptOut", "getPartnerId", "setPartnerId", "getPlan", "()Lcom/amplitude/core/events/Plan;", "setPlan", "(Lcom/amplitude/core/events/Plan;)V", "getServerUrl", "setServerUrl", "getServerZone", "()Lcom/amplitude/core/ServerZone;", "setServerZone", "(Lcom/amplitude/core/ServerZone;)V", "getSessionId", "()Ljava/lang/Long;", "setSessionId", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getStorageProvider", "setStorageProvider", "getTrackingOptions", "()Lcom/amplitude/android/TrackingOptions;", "setTrackingOptions", "(Lcom/amplitude/android/TrackingOptions;)V", "getTrackingSessionEvents$annotations", "()V", "getTrackingSessionEvents", "setTrackingSessionEvents", "getUseAdvertisingIdForDeviceId", "setUseAdvertisingIdForDeviceId", "getUseAppSetIdForDeviceId", "setUseAppSetIdForDeviceId", "getUseBatch", "setUseBatch", "Companion", "android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class Configuration extends com.amplitude.core.Configuration {
    public static final long MIN_TIME_BETWEEN_SESSIONS_MILLIS = 300000;
    private Function3<? super BaseEvent, ? super Integer, ? super String, Unit> callback;
    private final Context context;
    private DefaultTrackingOptions defaultTracking;
    private String deviceId;
    private boolean enableCoppaControl;
    private boolean flushEventsOnClose;
    private int flushIntervalMillis;
    private int flushMaxRetries;
    private int flushQueueSize;
    private long identifyBatchIntervalMillis;
    private StorageProvider identifyInterceptStorageProvider;
    private IdentityStorageProvider identityStorageProvider;
    private IngestionMetadata ingestionMetadata;
    private String instanceName;
    private boolean locationListening;
    private LoggerProvider loggerProvider;
    private boolean migrateLegacyData;
    private Integer minIdLength;
    private long minTimeBetweenSessionsMillis;
    private boolean newDeviceIdPerInstall;
    private Boolean offline;
    private boolean optOut;
    private String partnerId;
    private Plan plan;
    private String serverUrl;
    private ServerZone serverZone;
    private Long sessionId;
    private StorageProvider storageProvider;
    private TrackingOptions trackingOptions;
    private boolean trackingSessionEvents;
    private boolean useAdvertisingIdForDeviceId;
    private boolean useAppSetIdForDeviceId;
    private boolean useBatch;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context) {
        this(apiKey, context, 0, 0, null, false, null, null, null, null, null, 0, false, null, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -4, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i) {
        this(apiKey, context, i, 0, null, false, null, null, null, null, null, 0, false, null, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -8, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2) {
        this(apiKey, context, i, i2, null, false, null, null, null, null, null, 0, false, null, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -16, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName) {
        this(apiKey, context, i, i2, instanceName, false, null, null, null, null, null, 0, false, null, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -32, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z) {
        this(apiKey, context, i, i2, instanceName, z, null, null, null, null, null, 0, false, null, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -64, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, null, null, null, null, 0, false, null, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -128, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, null, null, null, 0, false, null, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, InputDeviceCompat.SOURCE_ANY, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, null, null, 0, false, null, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -512, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, null, 0, false, null, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -1024, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, 0, false, null, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -2048, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, false, null, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -4096, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, null, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -8192, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, null, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -16384, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, null, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -32768, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, null, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -65536, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, false, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -131072, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, false, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -262144, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, false, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -524288, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, null, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -1048576, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, trackingOptions, false, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -2097152, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, trackingOptions, z6, false, false, 0L, false, null, 0L, null, null, false, null, null, null, -4194304, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6, boolean z7) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, trackingOptions, z6, z7, false, 0L, false, null, 0L, null, null, false, null, null, null, -8388608, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6, boolean z7, boolean z8) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, trackingOptions, z6, z7, z8, 0L, false, null, 0L, null, null, false, null, null, null, ViewCompat.MEASURED_STATE_MASK, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6, boolean z7, boolean z8, long j) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, trackingOptions, z6, z7, z8, j, false, null, 0L, null, null, false, null, null, null, -33554432, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6, boolean z7, boolean z8, long j, boolean z9) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, trackingOptions, z6, z7, z8, j, z9, null, 0L, null, null, false, null, null, null, -67108864, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6, boolean z7, boolean z8, long j, boolean z9, DefaultTrackingOptions defaultTracking) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, trackingOptions, z6, z7, z8, j, z9, defaultTracking, 0L, null, null, false, null, null, null, -134217728, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
        Intrinsics.checkNotNullParameter(defaultTracking, "defaultTracking");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6, boolean z7, boolean z8, long j, boolean z9, DefaultTrackingOptions defaultTracking, long j2) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, trackingOptions, z6, z7, z8, j, z9, defaultTracking, j2, null, null, false, null, null, null, -268435456, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
        Intrinsics.checkNotNullParameter(defaultTracking, "defaultTracking");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6, boolean z7, boolean z8, long j, boolean z9, DefaultTrackingOptions defaultTracking, long j2, StorageProvider identifyInterceptStorageProvider) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, trackingOptions, z6, z7, z8, j, z9, defaultTracking, j2, identifyInterceptStorageProvider, null, false, null, null, null, -536870912, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
        Intrinsics.checkNotNullParameter(defaultTracking, "defaultTracking");
        Intrinsics.checkNotNullParameter(identifyInterceptStorageProvider, "identifyInterceptStorageProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6, boolean z7, boolean z8, long j, boolean z9, DefaultTrackingOptions defaultTracking, long j2, StorageProvider identifyInterceptStorageProvider, IdentityStorageProvider identityStorageProvider) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, trackingOptions, z6, z7, z8, j, z9, defaultTracking, j2, identifyInterceptStorageProvider, identityStorageProvider, false, null, null, null, -1073741824, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
        Intrinsics.checkNotNullParameter(defaultTracking, "defaultTracking");
        Intrinsics.checkNotNullParameter(identifyInterceptStorageProvider, "identifyInterceptStorageProvider");
        Intrinsics.checkNotNullParameter(identityStorageProvider, "identityStorageProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6, boolean z7, boolean z8, long j, boolean z9, DefaultTrackingOptions defaultTracking, long j2, StorageProvider identifyInterceptStorageProvider, IdentityStorageProvider identityStorageProvider, boolean z10) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, trackingOptions, z6, z7, z8, j, z9, defaultTracking, j2, identifyInterceptStorageProvider, identityStorageProvider, z10, null, null, null, Integer.MIN_VALUE, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
        Intrinsics.checkNotNullParameter(defaultTracking, "defaultTracking");
        Intrinsics.checkNotNullParameter(identifyInterceptStorageProvider, "identifyInterceptStorageProvider");
        Intrinsics.checkNotNullParameter(identityStorageProvider, "identityStorageProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6, boolean z7, boolean z8, long j, boolean z9, DefaultTrackingOptions defaultTracking, long j2, StorageProvider identifyInterceptStorageProvider, IdentityStorageProvider identityStorageProvider, boolean z10, Boolean bool) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, trackingOptions, z6, z7, z8, j, z9, defaultTracking, j2, identifyInterceptStorageProvider, identityStorageProvider, z10, bool, null, null, 0, 3, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
        Intrinsics.checkNotNullParameter(defaultTracking, "defaultTracking");
        Intrinsics.checkNotNullParameter(identifyInterceptStorageProvider, "identifyInterceptStorageProvider");
        Intrinsics.checkNotNullParameter(identityStorageProvider, "identityStorageProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6, boolean z7, boolean z8, long j, boolean z9, DefaultTrackingOptions defaultTracking, long j2, StorageProvider identifyInterceptStorageProvider, IdentityStorageProvider identityStorageProvider, boolean z10, Boolean bool, String str3) {
        this(apiKey, context, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, z3, z4, z5, trackingOptions, z6, z7, z8, j, z9, defaultTracking, j2, identifyInterceptStorageProvider, identityStorageProvider, z10, bool, str3, null, 0, 2, null);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
        Intrinsics.checkNotNullParameter(defaultTracking, "defaultTracking");
        Intrinsics.checkNotNullParameter(identifyInterceptStorageProvider, "identifyInterceptStorageProvider");
        Intrinsics.checkNotNullParameter(identityStorageProvider, "identityStorageProvider");
    }

    @Deprecated(message = "Please use 'defaultTracking.sessions' instead.", replaceWith = @ReplaceWith(expression = "defaultTracking.sessions", imports = {}))
    public static /* synthetic */ void getTrackingSessionEvents$annotations() {
    }

    public final Context getContext() {
        return this.context;
    }

    @Override // com.amplitude.core.Configuration
    public int getFlushQueueSize() {
        return this.flushQueueSize;
    }

    @Override // com.amplitude.core.Configuration
    public void setFlushQueueSize(int i) {
        this.flushQueueSize = i;
    }

    @Override // com.amplitude.core.Configuration
    public int getFlushIntervalMillis() {
        return this.flushIntervalMillis;
    }

    @Override // com.amplitude.core.Configuration
    public void setFlushIntervalMillis(int i) {
        this.flushIntervalMillis = i;
    }

    public /* synthetic */ Configuration(String str, Context context, int i, int i2, String str2, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str3, Function3 function3, int i3, boolean z2, ServerZone serverZone, String str4, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6, boolean z7, boolean z8, long j, boolean z9, DefaultTrackingOptions defaultTrackingOptions, long j2, StorageProvider storageProvider2, IdentityStorageProvider identityStorageProvider, boolean z10, Boolean bool, String str5, Long l, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, context, (i4 & 4) != 0 ? 30 : i, (i4 & 8) != 0 ? com.amplitude.core.Configuration.FLUSH_INTERVAL_MILLIS : i2, (i4 & 16) != 0 ? com.amplitude.core.Configuration.DEFAULT_INSTANCE : str2, (i4 & 32) != 0 ? false : z, (i4 & 64) != 0 ? new AndroidStorageProvider() : storageProvider, (i4 & 128) != 0 ? new AndroidLoggerProvider() : loggerProvider, (i4 & 256) != 0 ? null : num, (i4 & 512) != 0 ? null : str3, (i4 & 1024) != 0 ? null : function3, (i4 & 2048) != 0 ? 5 : i3, (i4 & 4096) != 0 ? false : z2, (i4 & 8192) != 0 ? ServerZone.US : serverZone, (i4 & 16384) != 0 ? null : str4, (i4 & 32768) != 0 ? null : plan, (i4 & 65536) != 0 ? null : ingestionMetadata, (i4 & 131072) != 0 ? false : z3, (i4 & 262144) != 0 ? false : z4, (i4 & 524288) != 0 ? false : z5, (i4 & 1048576) != 0 ? new TrackingOptions() : trackingOptions, (i4 & 2097152) != 0 ? false : z6, (i4 & 4194304) != 0 ? true : z7, (i4 & 8388608) != 0 ? true : z8, (i4 & 16777216) != 0 ? 300000L : j, (i4 & 33554432) != 0 ? true : z9, (i4 & 67108864) != 0 ? new DefaultTrackingOptions(false, false, false, false, 15, null) : defaultTrackingOptions, (i4 & 134217728) != 0 ? 30000L : j2, (i4 & 268435456) != 0 ? new AndroidStorageProvider() : storageProvider2, (i4 & 536870912) != 0 ? new FileIdentityStorageProvider() : identityStorageProvider, (i4 & 1073741824) == 0 ? z10 : true, (i4 & Integer.MIN_VALUE) != 0 ? false : bool, (i5 & 1) != 0 ? null : str5, (i5 & 2) == 0 ? l : null);
    }

    @Override // com.amplitude.core.Configuration
    public String getInstanceName() {
        return this.instanceName;
    }

    @Override // com.amplitude.core.Configuration
    public void setInstanceName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.instanceName = str;
    }

    @Override // com.amplitude.core.Configuration
    public boolean getOptOut() {
        return this.optOut;
    }

    @Override // com.amplitude.core.Configuration
    public void setOptOut(boolean z) {
        this.optOut = z;
    }

    @Override // com.amplitude.core.Configuration
    public StorageProvider getStorageProvider() {
        return this.storageProvider;
    }

    public void setStorageProvider(StorageProvider storageProvider) {
        Intrinsics.checkNotNullParameter(storageProvider, "<set-?>");
        this.storageProvider = storageProvider;
    }

    @Override // com.amplitude.core.Configuration
    public LoggerProvider getLoggerProvider() {
        return this.loggerProvider;
    }

    public void setLoggerProvider(LoggerProvider loggerProvider) {
        Intrinsics.checkNotNullParameter(loggerProvider, "<set-?>");
        this.loggerProvider = loggerProvider;
    }

    @Override // com.amplitude.core.Configuration
    public Integer getMinIdLength() {
        return this.minIdLength;
    }

    @Override // com.amplitude.core.Configuration
    public void setMinIdLength(Integer num) {
        this.minIdLength = num;
    }

    @Override // com.amplitude.core.Configuration
    public String getPartnerId() {
        return this.partnerId;
    }

    @Override // com.amplitude.core.Configuration
    public void setPartnerId(String str) {
        this.partnerId = str;
    }

    @Override // com.amplitude.core.Configuration
    public Function3<BaseEvent, Integer, String, Unit> getCallback() {
        return this.callback;
    }

    @Override // com.amplitude.core.Configuration
    public void setCallback(Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3) {
        this.callback = function3;
    }

    @Override // com.amplitude.core.Configuration
    public int getFlushMaxRetries() {
        return this.flushMaxRetries;
    }

    @Override // com.amplitude.core.Configuration
    public void setFlushMaxRetries(int i) {
        this.flushMaxRetries = i;
    }

    @Override // com.amplitude.core.Configuration
    public boolean getUseBatch() {
        return this.useBatch;
    }

    @Override // com.amplitude.core.Configuration
    public void setUseBatch(boolean z) {
        this.useBatch = z;
    }

    @Override // com.amplitude.core.Configuration
    public ServerZone getServerZone() {
        return this.serverZone;
    }

    @Override // com.amplitude.core.Configuration
    public void setServerZone(ServerZone serverZone) {
        Intrinsics.checkNotNullParameter(serverZone, "<set-?>");
        this.serverZone = serverZone;
    }

    @Override // com.amplitude.core.Configuration
    public String getServerUrl() {
        return this.serverUrl;
    }

    @Override // com.amplitude.core.Configuration
    public void setServerUrl(String str) {
        this.serverUrl = str;
    }

    @Override // com.amplitude.core.Configuration
    public Plan getPlan() {
        return this.plan;
    }

    @Override // com.amplitude.core.Configuration
    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    @Override // com.amplitude.core.Configuration
    public IngestionMetadata getIngestionMetadata() {
        return this.ingestionMetadata;
    }

    @Override // com.amplitude.core.Configuration
    public void setIngestionMetadata(IngestionMetadata ingestionMetadata) {
        this.ingestionMetadata = ingestionMetadata;
    }

    public final boolean getUseAdvertisingIdForDeviceId() {
        return this.useAdvertisingIdForDeviceId;
    }

    public final void setUseAdvertisingIdForDeviceId(boolean z) {
        this.useAdvertisingIdForDeviceId = z;
    }

    public final boolean getUseAppSetIdForDeviceId() {
        return this.useAppSetIdForDeviceId;
    }

    public final void setUseAppSetIdForDeviceId(boolean z) {
        this.useAppSetIdForDeviceId = z;
    }

    public final boolean getNewDeviceIdPerInstall() {
        return this.newDeviceIdPerInstall;
    }

    public final void setNewDeviceIdPerInstall(boolean z) {
        this.newDeviceIdPerInstall = z;
    }

    public final TrackingOptions getTrackingOptions() {
        return this.trackingOptions;
    }

    public final void setTrackingOptions(TrackingOptions trackingOptions) {
        Intrinsics.checkNotNullParameter(trackingOptions, "<set-?>");
        this.trackingOptions = trackingOptions;
    }

    public final boolean getEnableCoppaControl() {
        return this.enableCoppaControl;
    }

    public final void setEnableCoppaControl(boolean z) {
        this.enableCoppaControl = z;
    }

    public final boolean getLocationListening() {
        return this.locationListening;
    }

    public final void setLocationListening(boolean z) {
        this.locationListening = z;
    }

    public final boolean getFlushEventsOnClose() {
        return this.flushEventsOnClose;
    }

    public final void setFlushEventsOnClose(boolean z) {
        this.flushEventsOnClose = z;
    }

    public final long getMinTimeBetweenSessionsMillis() {
        return this.minTimeBetweenSessionsMillis;
    }

    public final void setMinTimeBetweenSessionsMillis(long j) {
        this.minTimeBetweenSessionsMillis = j;
    }

    public final boolean getTrackingSessionEvents() {
        return this.trackingSessionEvents;
    }

    public final void setTrackingSessionEvents(boolean z) {
        this.trackingSessionEvents = z;
    }

    public final DefaultTrackingOptions getDefaultTracking() {
        return this.defaultTracking;
    }

    public final void setDefaultTracking(DefaultTrackingOptions defaultTrackingOptions) {
        Intrinsics.checkNotNullParameter(defaultTrackingOptions, "<set-?>");
        this.defaultTracking = defaultTrackingOptions;
    }

    @Override // com.amplitude.core.Configuration
    public long getIdentifyBatchIntervalMillis() {
        return this.identifyBatchIntervalMillis;
    }

    @Override // com.amplitude.core.Configuration
    public void setIdentifyBatchIntervalMillis(long j) {
        this.identifyBatchIntervalMillis = j;
    }

    @Override // com.amplitude.core.Configuration
    public StorageProvider getIdentifyInterceptStorageProvider() {
        return this.identifyInterceptStorageProvider;
    }

    @Override // com.amplitude.core.Configuration
    public void setIdentifyInterceptStorageProvider(StorageProvider storageProvider) {
        Intrinsics.checkNotNullParameter(storageProvider, "<set-?>");
        this.identifyInterceptStorageProvider = storageProvider;
    }

    @Override // com.amplitude.core.Configuration
    public IdentityStorageProvider getIdentityStorageProvider() {
        return this.identityStorageProvider;
    }

    @Override // com.amplitude.core.Configuration
    public void setIdentityStorageProvider(IdentityStorageProvider identityStorageProvider) {
        Intrinsics.checkNotNullParameter(identityStorageProvider, "<set-?>");
        this.identityStorageProvider = identityStorageProvider;
    }

    public final boolean getMigrateLegacyData() {
        return this.migrateLegacyData;
    }

    public final void setMigrateLegacyData(boolean z) {
        this.migrateLegacyData = z;
    }

    @Override // com.amplitude.core.Configuration
    public Boolean getOffline() {
        return this.offline;
    }

    @Override // com.amplitude.core.Configuration
    public void setOffline(Boolean bool) {
        this.offline = bool;
    }

    @Override // com.amplitude.core.Configuration
    public String getDeviceId() {
        return this.deviceId;
    }

    @Override // com.amplitude.core.Configuration
    public void setDeviceId(String str) {
        this.deviceId = str;
    }

    @Override // com.amplitude.core.Configuration
    public Long getSessionId() {
        return this.sessionId;
    }

    @Override // com.amplitude.core.Configuration
    public void setSessionId(Long l) {
        this.sessionId = l;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Configuration(String apiKey, Context context, int i, int i2, String instanceName, boolean z, StorageProvider storageProvider, LoggerProvider loggerProvider, Integer num, String str, Function3<? super BaseEvent, ? super Integer, ? super String, Unit> function3, int i3, boolean z2, ServerZone serverZone, String str2, Plan plan, IngestionMetadata ingestionMetadata, boolean z3, boolean z4, boolean z5, TrackingOptions trackingOptions, boolean z6, boolean z7, boolean z8, long j, boolean z9, DefaultTrackingOptions defaultTracking, long j2, StorageProvider identifyInterceptStorageProvider, IdentityStorageProvider identityStorageProvider, boolean z10, Boolean bool, String str3, Long l) {
        super(apiKey, i, i2, instanceName, z, storageProvider, loggerProvider, num, str, function3, i3, z2, serverZone, str2, plan, ingestionMetadata, j2, identifyInterceptStorageProvider, identityStorageProvider, bool, str3, l);
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(storageProvider, "storageProvider");
        Intrinsics.checkNotNullParameter(loggerProvider, "loggerProvider");
        Intrinsics.checkNotNullParameter(serverZone, "serverZone");
        Intrinsics.checkNotNullParameter(trackingOptions, "trackingOptions");
        Intrinsics.checkNotNullParameter(defaultTracking, "defaultTracking");
        Intrinsics.checkNotNullParameter(identifyInterceptStorageProvider, "identifyInterceptStorageProvider");
        Intrinsics.checkNotNullParameter(identityStorageProvider, "identityStorageProvider");
        this.context = context;
        this.flushQueueSize = i;
        this.flushIntervalMillis = i2;
        this.instanceName = instanceName;
        this.optOut = z;
        this.storageProvider = storageProvider;
        this.loggerProvider = loggerProvider;
        this.minIdLength = num;
        this.partnerId = str;
        this.callback = function3;
        this.flushMaxRetries = i3;
        this.useBatch = z2;
        this.serverZone = serverZone;
        this.serverUrl = str2;
        this.plan = plan;
        this.ingestionMetadata = ingestionMetadata;
        this.useAdvertisingIdForDeviceId = z3;
        this.useAppSetIdForDeviceId = z4;
        this.newDeviceIdPerInstall = z5;
        this.trackingOptions = trackingOptions;
        this.enableCoppaControl = z6;
        this.locationListening = z7;
        this.flushEventsOnClose = z8;
        this.minTimeBetweenSessionsMillis = j;
        this.trackingSessionEvents = z9;
        this.defaultTracking = defaultTracking;
        this.identifyBatchIntervalMillis = j2;
        this.identifyInterceptStorageProvider = identifyInterceptStorageProvider;
        this.identityStorageProvider = identityStorageProvider;
        this.migrateLegacyData = z10;
        this.offline = bool;
        this.deviceId = str3;
        this.sessionId = l;
    }
}
